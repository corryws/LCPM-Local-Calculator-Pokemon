
from tkinter import ttk
from tkinter import Menu

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
from formula import RecolorBGImage

# funzioni ui grafiche
from ui_management import mostra_immagine_tipo_ui
from ui_management import mostra_immagine_pokemon_ui
from ui_management import mostra_immagine_screen_ui
from color import ColorRGB

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

    for i in range(5):
        statstxt[i+1].config(background=ColorRGB(40,170,253))
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

    # Verifica e inserimento del Tipo 1
    tipo1 = stats[6]
    if tipo1 is not None:
        textbox_type1.delete(0, tk.END)
        textbox_type1.insert(0, tipo1)

    # Verifica e inserimento del Tipo 2
    tipo2 = stats[7]
    if tipo2 is not None:
        textbox_type2.delete(0, tk.END)
        textbox_type2.insert(0, tipo2)
    else:
        textbox_type2.delete(0, tk.END)  # Cancella il contenuto precedente

    SetImageAndIcon(stats[8],GetType(stats[6]),GetType(stats[7]),stats[6])

    Dbclose(conn,cursor)

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

#funzione che setta le immagini e le icone del pokemon selezionato
def SetImageAndIcon(id_pokemon,id_type_1,id_type_2,type1string):
    photopkm = mostra_immagine_pokemon_ui(id_pokemon)
    image_frame.config(image=photopkm)
    image_frame.image = photopkm
    image_frame.config(bg=RecolorBGImage(type1string))

    photo = mostra_immagine_tipo_ui(id_type_1)
    image_type1_frame.config(image=photo) ; image_type1_frame.image = photo

    if(id_type_2 == None): id_type_2 = 30
    photo = mostra_immagine_tipo_ui(id_type_2)
    image_type2_frame.config(image=photo) ; image_type2_frame.image = photo

#MAIN - CODE ------------------------------------------------------------------------------------
conn = None ; cursor = None ; StatWithoutRound = [0,0,0,0,0,0]

# Creazione della finestra principale
root = tk.Tk()
root.title("LCPM - Local Calculator PokettoMonsuta - by Nieft&Manush")

# Impostazione delle dimensioni della finestra
root.geometry("500x350")
# Convertire i valori RGB in un formato compatibile con Tkinter
root.configure(bg=ColorRGB(220,10,45))

# Creazione del menu a tendina
menu_bar = Menu(root)
root.config(menu=menu_bar)
root.resizable(False, False)  # Blocca il ridimensionamento sia in larghezza che in altezza

# Creazione del menu "PokeStars"
pokestars_menu = Menu(menu_bar, tearoff=0)
menu_bar.add_cascade(label="CompetitiveString", menu=pokestars_menu)
pokestars_menu.add_command(label="Stampa")

# Creazione del menu "?"
altro_menu = Menu(menu_bar, tearoff=0)
menu_bar.add_cascade(label="?", menu=altro_menu)
altro_menu.add_command(label="About")

# creo DB
createDB.esegui_script_sql('prototypepokemonstats/db_pokemon.sql', 'prototypepokemonstats/database.db')

# Creazione della combobox a sinistra
cmb_pokemon = ttk.Combobox(root)
cmb_pokemon.bind("<<ComboboxSelected>>", lambda event: popola_textbox())
cmb_pokemon.place(x=0, y=5)

#riquadro per l'immagine screen
image_screen = tk.Label(root, bg=RecolorBGImage(""), width=180, height=180)
image_screen.place(x=310, y=4)
photoscreen = mostra_immagine_screen_ui()
image_screen.config(image=photoscreen)
image_screen.image = photoscreen

# Riquadro per l'immagine pokemon
image_frame = tk.Label(root, bg=RecolorBGImage(""), width=146, height=116)
image_frame.place(x=328, y=26)

# Label del Tipo 1
image_type1_frame = tk.Label(root, width=38, height=38,background=ColorRGB(40,170,253))
image_type1_frame.place(x=360, y=190)
textbox_type1 = tk.Entry(root,background=ColorRGB(40,170,253))
textbox_type1.place(x=245 ,y=2, width=60)

# Label del Tipo 2
image_type2_frame = tk.Label(root, width=38, height=38,background=ColorRGB(40,170,253))
image_type2_frame.place(x=400, y=190)
textbox_type2 = tk.Entry(root,background=ColorRGB(40,170,253))
textbox_type2.place(x=245 ,y=23, width=60)

# Lista delle etichette per le statistiche
labels = ["PS", "ATT", "DEF", "ATTS", "DEFS", "SPD"]

# Creazione delle etichette per le statistiche e delle textbox
statstxt = []
for i in range(3):
    for j in range(2):
        label = tk.Label(root, text=labels[i*2 + j],background=ColorRGB(40,170,253))
        label.place(x=0+j*100, y=50+i*25)
        
        textbox = tk.Entry(root,background=ColorRGB(40,170,253))
        textbox.place(x=50+j*100, y=50+i*25, width=40)
        #textbox.config(bg="white")
        statstxt.append(textbox)

#Totale STATS
totstats_label = tk.Label(root, text="TOT",background=ColorRGB(40,170,253))
totstats_label.place(x=0, y=125)
textbox_totstats = tk.Entry(root,background=ColorRGB(40,170,253))
textbox_totstats.place(x=50 ,y=125, width=40)

#Totale LVL
lvlstats_label = tk.Label(root, text="LVL",background=ColorRGB(40,170,253))
lvlstats_label.place(x=100, y=125)
textbox_lvl = tk.Entry(root,background=ColorRGB(40,170,253))
textbox_lvl.place(x=150 ,y=125, width=40)
textbox_lvl.insert(0, 100)

#EVS
evs_label = tk.Label(root, text="EVs:",background=ColorRGB(40,170,253))
evs_label.place(x=0, y=145)
evs_label2 = tk.Label(root, text="PS        ATT       DEF       ATTS     DEFS    SPD",background=ColorRGB(40,170,253))
evs_label2.place(x=0, y=165)

# Creazione delle textbox per EVS 0 to 252
evstxt = []
for i in range(6):
    textbox = tk.Entry(root,background=ColorRGB(40,170,253))
    textbox.place(x=0+i*40, y=185, width=40)
    textbox.insert(i, 0)
    evstxt.append(textbox)

#IVS
ivs_label = tk.Label(root, text="IVs:",background=ColorRGB(40,170,253))
ivs_label.place(x=0, y=210)
ivs_label2 = tk.Label(root, text="PS        ATT       DEF       ATTS     DEFS    SPD",background=ColorRGB(40,170,253))
ivs_label2.place(x=0, y=230)

# Creazione delle textbox per IVS 0 to 31
ivstxt = []
for i in range(6):
    textbox = tk.Entry(root,background=ColorRGB(40,170,253))
    textbox.place(x=0+i*40, y=250, width=40)
    textbox.insert(i, 31)
    ivstxt.append(textbox)

# Creazione della combobox a sinistra
nature_label = tk.Label(root, text="Nature",background=ColorRGB(40,170,253))
nature_label.place(x=250, y=230)
cmb_nature = ttk.Combobox(root)
cmb_nature.bind("<<ComboboxSelected>>", lambda event: Reset())
cmb_nature.place(x=250, y=250)

# Pulsante "Calcola"
stats_button = tk.Button(root, text="CALCOLA STATS.", command=CalcoloStatsNature)
stats_button.place(x=0, y=280)

# Pulsante "Calcola EVs"
evscal_button = tk.Button(root, text="CALCOLA EVs", command=CalcoloEVFromStats)
evscal_button.place(x=110, y=280)

# Pulsante "Calcola IVs"
ivscal_button = tk.Button(root, text="CALCOLA IVs", command=CalcoloIVFromStats)
ivscal_button.place(x=200, y=280)


# Pulsante "Indietro"
indietro_button = tk.Button(root, text="<--", command=indietro)
indietro_button.place(x=50, y=320)

# Pulsante "Avanti"
avanti_button = tk.Button(root, text="-->", command=avanti)
avanti_button.place(x=120, y=320)

# Popolare la combobox con i nomi dei Pokémon
popola_combobox_pokemon()
popola_combobox_nature()
popola_textbox()
Reset()

root.mainloop()
