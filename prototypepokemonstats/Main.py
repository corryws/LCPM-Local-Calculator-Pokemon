
from tkinter import ttk

import createDB as createDB
import math
import tkinter as tk

from DatabaseCommand import Dbconnection
from DatabaseCommand import Dbclose

# form fomula import the function formula
from formula import calcola_statistica
from formula import calcola_ps
from formula import calcola_iv
from formula import calcola_ev
from formula import GetType

# funzioni ui grafiche
from ui_management import mostra_immagine_tipo_ui
from ui_management import mostra_immagine_pokemon_ui
from color import ColorRGB
from chartexample import plot_radar
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg

def Reset():
    popola_textbox() ; CalcoloNatura(False)

def ResetNature():
    if cmb_nature.get() == "Adamant":
        statstxt[1].insert(0, str( int(math.ceil(int(statstxt[1].get()) / 1.1)) )) 
        statstxt[3].insert(0, str( int(math.ceil(int(statstxt[3].get()) / 0.9)) )) 
      
def popola_combobox_pokemon():
    # Connessione al database
    conn, cursor = Dbconnection()

    # Esecuzione della query per recuperare i nomi dei Pokémon e i loro ID
    cursor.execute("SELECT ID, Nome FROM tbPokemon")

    # Recupero dei nomi dei Pokémon e dei loro ID
    nomi_pokemon_id = cursor.fetchall()
    nomi_pokemon  = [row[1] for row in nomi_pokemon_id]

    # Aggiunta dei nomi alla combobox
    cmb_pokemon['values'] = nomi_pokemon

    # Imposta il valore iniziale della combobox al primo valore
    if nomi_pokemon: cmb_pokemon.current(0)

    # Chiusura del cursore e della connessione
    Dbclose(conn,cursor)

def CalcoloNatura(calcolo):
    # connessione al database
    conn, cursor = Dbconnection()

    # Recupero della natura selezionata
    natura_pkmn = cmb_nature.get()
    
    # Esecuzione della query per recuperare le statistiche base e i tipi del Pokémon selezionato
    cursor.execute("SELECT ModAtt, ModDef, ModAttS, ModDefS, ModSpd FROM tbNature "
                   "WHERE Nome = ?", (natura_pkmn,))
    
    mods = cursor.fetchone()
    print("att"   , mods[0])
    print("def"   , mods[1])
    print("atts"  , mods[2])
    print("defs"  , mods[3])
    print("speed" , mods[4])

    for i in range(5):
        statstxt[i+1].config(bg="white")
        if mods[i] == 1.1:
            if calcolo == True:
                newnaturestats = int(statstxt[i+1].get()) * mods[i]
                statstxt[i+1].delete(0, tk.END)
                statstxt[i+1].insert(0, str(int(newnaturestats)))
            statstxt[i+1].config(bg="green")
        if mods[i] == 0.9:
            if calcolo == True:
                newnaturestats = int(statstxt[i+1].get()) * mods[i]
                statstxt[i+1].delete(0, tk.END)
                statstxt[i+1].insert(0, str(int(newnaturestats)))
            statstxt[i+1].config(bg="red")

    # Chiusura del cursore e della connessione
    Dbclose(conn,cursor)
    
def popola_textbox():
    # Connessione al database
    conn, cursor = Dbconnection()

    # Recupero del nome del Pokémon selezionato
    nome_pokemon = cmb_pokemon.get()

    # Esecuzione della query per recuperare le statistiche base e i tipi del Pokémon selezionato
    cursor.execute("SELECT Ps, Att, Def, AttS, DefS, Spd, Tipo1, Tipo2, id_pokemon FROM tbStatsBase "
                   "INNER JOIN tbPokemon ON tbStatsBase.id_pokemon = tbPokemon.ID "
                   "WHERE tbPokemon.Nome = ?", (nome_pokemon,))
    stats = cursor.fetchone()

    # Riempimento delle text box con le statistiche recuperate
    for i, value in enumerate(stats[:6]):  # Considera solo le statistiche (escludendo i tipi)
        statstxt[i].delete(0, tk.END)  # Cancella il contenuto precedente
        statstxt[i].insert(0, value)   # Inserisce il nuovo valore

    # Calcolo della somma delle statistiche
    somma_statistiche = sum(stats[:6])

    # Inserimento della somma nella textbox "TOT"
    textbox_totstats.delete(0, tk.END)
    textbox_totstats.insert(0, somma_statistiche)

    SetImageAndIcon(stats[8],GetType(stats[6]),GetType(stats[7]))

    Dbclose(conn,cursor)

    # Aggiorna il grafico radar con le nuove statistiche del Pokémon
    update_radar_chart(stats[:6])

def popola_combobox_nature():
    # Connessione al database
    conn, cursor = Dbconnection()

    # Esecuzione della query per recuperare i nomi dei Pokémon e i loro ID
    cursor.execute("SELECT ID,Nome FROM tbNature")

    # Recupero dei nomi dei Pokémon e dei loro ID
    natura_pokemon_id = cursor.fetchall()
    natura_pokemon = [row[1] for row in natura_pokemon_id]

    # Aggiunta dei nomi alla combobox
    cmb_nature['values'] = natura_pokemon

    # Imposta il valore iniziale della combobox al primo valore
    if natura_pokemon:
       cmb_nature.current(0)

    # Chiusura del cursore e della connessione
    Dbclose(conn,cursor)

def avanti():
    # Seleziona il prossimo valore nella combobox
    current_index = cmb_pokemon.current()
    if current_index < len(cmb_pokemon['values']) - 1:
        cmb_pokemon.current(current_index + 1)
    
    # Aggiorna le textbox quando si seleziona un nuovo Pokémon
    popola_textbox()

def indietro():
    # Seleziona il valore precedente nella combobox
    current_index = cmb_pokemon.current()
    if current_index > 0:
        cmb_pokemon.current(current_index - 1)

    # Aggiorna le textbox quando si seleziona un nuovo Pokémon
    popola_textbox()

def GenButton(buttongen):
    print("button gen " , buttongen)
    if buttongen == 0:
        cmb_pokemon.current(0)
    elif buttongen == 1:
        cmb_pokemon.current(151)

    # Aggiorna le textbox quando si seleziona un nuovo Pokémon
    popola_textbox()

# Funzione per mostrare le informazioni del programma
def mostra_informazioni():
    info_window = tk.Toplevel(root)
    info_window.title("Informazioni Programma")
    info_window.geometry("700x700")
    info_window.resizable(False, False)
    info_window.iconbitmap('icon.ico')

    # Creazione di una Text widget per visualizzare il testo
    info_text = tk.Text(info_window, wrap="word", height=30, width=50)
    info_text.pack(expand=True, fill="both")

    # Creazione di uno Scrollbar per scorrere il testo
    scrollbar = tk.Scrollbar(info_window, command=info_text.yview)
    scrollbar.pack(side="left", fill="y")

    info_text.config(yscrollcommand=scrollbar.set)

    # Aggiunta del testo alla Text widget
    info_text.insert("1.0", """
    Benvenuto a PokemonCalculatorEVSIVS_Locale!
                                 
    v 1.0.0
                     
    Features & Bug Fix:
    - Grafica migliorata
    - radar char fix
                     
    1. Descrizione del software:
    PokemonCalculatorEVSIVS_Locale è una suite sofisticata di strumenti progettati per
    gli appassionati e gli esperti di Pokémon. Questo software all'avanguardia offre una
    vasta gamma di funzionalità per ottimizzare e massimizzare il potenziale dei tuoi Pokémon.

    2. Funzionalità principali:
    - Calcolatore statistiche Pokémon: calcola le statistiche di qualsiasi Pokémon, tenendo conto di Natura, EVs e IVs.
    - Calcolatore EVs Pokémon: semplifica il processo di assegnazione dei Valori di Sforzo (EVs) ai tuoi Pokémon.
    - Calcolatore IVs Pokémon: identifica e migliora i Valori Individuali (IVs) dei tuoi Pokémon.
    - Grafico radar: rappresenta visivamente le statistiche del tuo Pokémon attraverso un intuitivo grafico radar.
    - Icone Pokémon: aggiungi un tocco di personalità al tuo software con immagini iconiche dei Pokémon.
    - Database locale: assicura la sicurezza e la affidabilità dei tuoi dati senza compromessi.

    4. Contatti:
    Per ulteriori informazioni o per richiedere una demo, contattaci via email a
    corradotrigilia97@gmail.com | c.trigilia@sisoftsrl.it o visita il nostro sito web su https://corryws.itch.io

    Grazie per aver scelto PokemonCalculatorEVSIVS_Locale!""")

#Aggiorna Grafico
def update_radar_chart(stats):
    # Calcola i valori necessari per il grafico radar
    categories = ['HP', 'Attack', 'Defense', 'Sp.Attack', 'Sp.Defense', 'Speed']  # Esempio di categorie
    fig = plot_radar(stats, categories, figsize=(2.9, 2.9))
    
    # Aggiorna il canvas del grafico radar
    canvas.figure = fig
    canvas.draw()

#Calcolo base delle EVs avendo IVs e Stats
def CalcoloEVFromStats():
    oldstats = []
    for i in range(0, 6):
        oldstats.append(float(statstxt[i].get()))

    Reset()

    #controllo se oldstat sono uguali alle stat base, se si non applico nulla
    for i in range(0, 6):
      if(float(oldstats[i]) == float(statstxt[i].get())):
          print("statistiche uguali, non posso calcolarne EV/IV")
          return
      else: oldstats[i] = StatWithoutRound[i]

    for i in range(0, 6):
     if i == 0 : is_ps = True
     else: is_ps = False

     print("4 * (((",float(oldstats[i])," - 5 / ",float(textbox_lvl.get()),")* 100-2 * ",float(statstxt[i].get())," - ",float(ivstxt[i].get()),")")
     newstats = calcola_ev(float(oldstats[i]),float(statstxt[i].get()),  float(ivstxt[i].get()), int(textbox_lvl.get()),is_ps)
     evstxt[i].delete(0, tk.END)
     #evstxt[i].insert(0, str(int(math.ceil(newstats))))
     evstxt[i].insert(0, str(int(newstats)))
     print("calcolati:", newstats)

     # Aggiorna il grafico radar con le nuove statistiche
     update_radar_chart([float(stat.get()) for stat in statstxt])

#Calcolo base delle IVs avendo EVs e Stats
def CalcoloIVFromStats():
    oldstats = []
    for i in range(0, 6):
        oldstats.append(float(statstxt[i].get()))

    Reset()

     #controllo se oldstat sono uguali alle stat base, se si non applico nulla
    for i in range(0, 6):
      if(float(oldstats[i]) == float(statstxt[i].get())):
          print("statistiche uguali, non posso calcolarne EV/IV")
          return
      else: oldstats[i] = StatWithoutRound[i]

    for i in range(0, 6):
     if i == 0 : is_ps = True
     else: is_ps = False
     
     print("iv=(",oldstats[i],"-5)*(100/",int(textbox_lvl.get()),")-2*",float(statstxt[i].get()),"-(",float(evstxt[i].get()),"/4)")
     newstats = calcola_iv(float(oldstats[i]),float(statstxt[i].get()),float(evstxt[i].get()), int(textbox_lvl.get()),is_ps)
     ivstxt[i].delete(0, tk.END)
     #ivstxt[i].insert(0, str(int(math.ceil(newstats))))
     ivstxt[i].insert(0, str(int(newstats)))
     print("IVs calcolati:", newstats)

    # Aggiorna il grafico radar con le nuove statistiche
    update_radar_chart([float(stat.get()) for stat in statstxt])

#Calcolo base delle Stats avendo EVs e IVs
def CalcoloStatsNature():
    Reset()
    for i in range(0, 6):
     if i == 0 : newstats = calcola_ps(float(statstxt[i].get()), float(ivstxt[i].get()), float(evstxt[i].get()), int(textbox_lvl.get()))
     else: newstats = calcola_statistica(float(statstxt[i].get()), float(ivstxt[i].get()), float(evstxt[i].get()), int(textbox_lvl.get()))
     StatWithoutRound[i] = newstats#.append(newstats)
     print("Statistica senza arrotondamento: ", StatWithoutRound[i])
     statstxt[i].delete(0, tk.END)
     statstxt[i].insert(0, str(int(newstats)))
     print("Statistica Calcolata:", i, newstats)
    CalcoloNatura(True)

    # Aggiorna il grafico radar con le nuove statistiche
    update_radar_chart([float(stat.get()) for stat in statstxt])

#funzione che setta le immagini e le icone del pokemon selezionato
def SetImageAndIcon(id_pokemon,id_type_1,id_type_2):
    photopkm = mostra_immagine_pokemon_ui(id_pokemon)
    image_frame.config(image=photopkm)
    image_frame.image = photopkm

    print(id_type_1) ; print(id_type_2)

    photo = mostra_immagine_tipo_ui(id_type_1)
    image_type1_frame.config(image=photo) ; image_type1_frame.image = photo

    if(id_type_2 == None): id_type_2 = 30
    photo = mostra_immagine_tipo_ui(id_type_2)
    image_type2_frame.config(image=photo) ; image_type2_frame.image = photo

# Funzione per aggiornare le informazioni del Pokémon in base allo slider
def update_pokemon_info(value):
    index = int(round(float(value)))  # Arrotonda il valore float alla parte intera più vicina
    cmb_pokemon.current(index)
    popola_textbox()


#MAIN - CODE ------------------------------------------------------------------------------------
conn = None ; cursor = None ; StatWithoutRound = [0,0,0,0,0,0] ; nomi_pokemon = []

# Creazione della finestra principale
root = tk.Tk()
root.title("LCPM - Local Calculator Pokemon")

# Impostazione delle dimensioni della finestra
root.geometry("800x515")
root.resizable(False,False)
root.iconbitmap('icon.ico')

#creazione barra menu
# Creazione della barra del menu
menu_bar = tk.Menu(root)
root.config(menu=menu_bar)

# Creazione del menu "File" con alcune voci
file_menu = tk.Menu(menu_bar, tearoff=0)
menu_bar.add_cascade(label="?", menu=file_menu)
file_menu.add_command(label="Informazioni",command=mostra_informazioni)

# Convertire i valori RGB in un formato compatibile con Tkinter
root.configure(bg=ColorRGB(224,255,255))

# creo DB
createDB.esegui_script_sql('prototypepokemonstats/db_pokemon.sql', 'prototypepokemonstats/database.db')

# Riquadro per l'immagine pokemon
image_frame = tk.Label(root, bg="#E0FCFD",width=230, height=230)
image_frame.place(x=500, y=65)

#costruzioni dei panelli
white_panel = tk.Frame(root, bg="white", width=400, height=500)
white_panel.place(x=0,y=0)

red_panel = tk.Frame(root, bg="#DE313D", width=400, height=50) #rosso sta sopra
red_panel.place(x=0,y=0)

black_panel = tk.Frame(root, bg="black", width=350, height=50) #nero sta sopra
black_panel.place(x=450,y=20)

black_panel2 = tk.Frame(root, bg="black", width=350, height=50) #nero sta sopra
black_panel2.place(x=450,y=300)

gray_panel = tk.Frame(root, bg="gray", width=350, height=35) #nero sta sopra
gray_panel.place(x=500,y=350)

red_panel2 = tk.Frame(root, bg="#DE313D", width=400, height=15) #rosso sta sopra
red_panel2.place(x=0,y=360)

red_panel3 = tk.Frame(root, bg="#DE313D", width=400, height=15) #rosso sta sopra
red_panel3.place(x=0,y=410)

#aggiunta PULSANTI CAMBIO GENERAZIONI POKEMON
gen_texts = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
for i in range(9):
    gen_button = tk.Button(root, text=gen_texts[i],bg="#DE313D",command=lambda index=i: GenButton(index))
    gen_button.place(x=20+i*40, y=15, width=40)

#FINE UI LATO DESTRO DEL FORM-----------------------------------------------------------------------------

# Pulsante "Indietro"
indietro_button = tk.Button(root, text="<--", command=indietro)
indietro_button.place(x=460, y=200)

# Pulsante "Avanti"
avanti_button = tk.Button(root, text="-->", command=avanti)
avanti_button.place(x=740, y=200)

# Creazione della combobox nomi pokemon
cmb_pokemon = ttk.Combobox(root)
cmb_pokemon.bind("<<ComboboxSelected>>", lambda event: popola_textbox())
cmb_pokemon.place(x=500, y=35)

#Totale LVL
lvlstats_label = tk.Label(root, text="LVL")
lvlstats_label.place(x=650, y=35,width=40)
textbox_lvl = tk.Entry(root)
textbox_lvl.place(x=690 ,y=36, width=40)
textbox_lvl.insert(0, 100)

# Label del Tipo 1
image_type1_frame = tk.Label(root, width=100, height=22,bg="black")
image_type1_frame.place(x=500, y=310)

# Label del Tipo 2
image_type2_frame = tk.Label(root, width=100, height=22,bg="black")
image_type2_frame.place(x=620, y=310)

# Creazione della combobox nature
cmb_nature = ttk.Combobox(root)
cmb_nature.bind("<<ComboboxSelected>>", lambda event: Reset())
cmb_nature.place(x=550, y=355)

#FINE UI LATO DESTRO DEL FORM-----------------------------------------------------------------------------

#INIZIO UI LATO SINISTRO DEL FORM-----------------------------------------------------------------------------

# Lista delle etichette per le statistiche
labels = ["PS", "ATT", "DEF", "ATTS", "DEFS", "SPD"]

#Crea un widget Canvas Tkinter per visualizzare il grafico
# Recupera le statistiche e le categorie per il grafico radar
stats = [45, 49, 49, 65, 65, 45]  # Esempio di statistiche
categories = ['HP', 'Attack', 'Defense', 'Sp.Attack', 'Sp.Defense', 'Speed']  # Esempio di categorie
fig = plot_radar(stats, categories, figsize=(2.9, 2.9))
canvas = FigureCanvasTkAgg(fig, master=root)
canvas_widget = canvas.get_tk_widget()
canvas_widget.place(x=50, y=50)  # Posizione del grafico all'interno della finestra principale

# Creazione delle etichette per le statistiche e delle textbox
statstxt = []
for i in range(6):
    if i == 0: # hp
        x = 180 ; y = 70
    elif i == 1: #att
        x = 290 ; y = 140
    elif i == 2: #def
        x = 290 ; y = 270
    elif i == 3: #speed
        x = 180 ; y = 335
    elif i == 4: #defsp
        x = 70 ; y = 270
    elif i == 5:#attsp
        x = 70 ; y = 140
        
    textbox = tk.Entry(root) #, background=ColorRGB(40, 170, 253)
    textbox.place(x=x, y=y, width=40)
    statstxt.append(textbox)

#Totale STATS
totstats_label = tk.Label(root, text="TOT",background=ColorRGB(40,170,253))
totstats_label.place(x=480, y=500)
textbox_totstats = tk.Entry(root,background=ColorRGB(40,170,253))
textbox_totstats.place(x=480 ,y=500, width=40)

stat_label = tk.Label(root, text="PS              ATT             DEF             ATTS             DEFS            SPD",bg="#DE313D")
stat_label.place(x=50, y=355)

#EVS
evs_label = tk.Label(root, text="EVs:")
evs_label.place(x=0, y=380)

# Creazione delle textbox per EVS 0 to 252
evstxt = []
for i in range(6):
    textbox = tk.Entry(root)
    textbox.place(x=50+i*60, y=380, width=40)
    textbox.insert(i, 0)
    evstxt.append(textbox)

#IVS
ivs_label = tk.Label(root, text="IVs:")
ivs_label.place(x=0, y=430)

# Creazione delle textbox per IVS 0 to 31
ivstxt = []
for i in range(6):
    textbox = tk.Entry(root)
    textbox.place(x=50+i*60, y=430, width=40)
    textbox.insert(i, 31)
    ivstxt.append(textbox)

# Pulsante "Calcola"
stats_button = tk.Button(root, text="STATS", command=CalcoloStatsNature)
stats_button.place(x=0, y=460,width=100)

# Pulsante "Calcola EVs"
evscal_button = tk.Button(root, text="EVs", command=CalcoloEVFromStats)
evscal_button.place(x=120, y=460,width=100)

# Pulsante "Calcola IVs"
ivscal_button = tk.Button(root, text="IVs", command=CalcoloIVFromStats)
ivscal_button.place(x=240, y=460,width=100)

#FINE UI LATO SINISTRO DEL FORM-----------------------------------------------------------------------------


# Popolare la combobox con i nomi dei Pokémon
popola_combobox_pokemon()
popola_combobox_nature()
popola_textbox()
Reset()

root.mainloop()
