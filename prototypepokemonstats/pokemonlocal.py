import tkinter as tk
from tkinter import ttk
from tkinter import Menu
from PIL import Image, ImageTk  # Importa il modulo Image da PIL

import creaDB
import sqlite3
import math

def Reset():
    popola_textbox()
    CalcoloNatura()

def popola_combobox_pokemon():
    # Connessione al database
    conn = sqlite3.connect('prototypepokemonstats/database.db') 
    cursor = conn.cursor()

    # Esecuzione della query per recuperare i nomi dei Pokémon e i loro ID
    cursor.execute("SELECT ID, Nome FROM tbPokemon")

    # Recupero dei nomi dei Pokémon e dei loro ID
    nomi_pokemon_id = cursor.fetchall()
    nomi_pokemon = [row[1] for row in nomi_pokemon_id]

    # Aggiunta dei nomi alla combobox
    cmb_pokemon['values'] = nomi_pokemon

    # Imposta il valore iniziale della combobox al primo valore
    if nomi_pokemon:
       cmb_pokemon.current(0)

    # Chiusura del cursore e della connessione
    cursor.close()
    conn.close()

    # Chiama la funzione per mostrare l'immagine del Pokémon selezionato
    mostra_immagine_pokemon(nomi_pokemon_id[0][0])  # Mostra l'immagine del primo Pokémon inizialmente

def CalcoloNatura():
    # connessione al database
    conn = sqlite3.connect('prototypepokemonstats/database.db') 
    cursor = conn.cursor()

    # Recupero della natura selezionata
    natura_pkmn = cmb_nature.get()
    
    # Esecuzione della query per recuperare le statistiche base e i tipi del Pokémon selezionato
    cursor.execute("SELECT ModAtt, ModDef, ModAttS, ModDefS, ModSpd FROM tbNature "
                   "WHERE Nome = ?", (natura_pkmn,))
    
    mods = cursor.fetchone()

    for i in range(5):
        statstxt[i+1].config(bg="white")
        if mods[i] == 1.1:
            newnaturestats = int(statstxt[i+1].get()) * mods[i]
            statstxt[i+1].delete(0, tk.END)
            statstxt[i+1].insert(0, str(int(newnaturestats)))
            statstxt[i+1].config(bg="green")
            print(i)
        if mods[i] == 0.9:
            newnaturestats = int(statstxt[i+1].get()) * mods[i]
            statstxt[i+1].delete(0, tk.END)
            statstxt[i+1].insert(0, str(int(newnaturestats)))
            statstxt[i+1].config(bg="red")
            print(i)
        

    # Chiusura del cursore e della connessione
    cursor.close()
    conn.close()
    
def popola_textbox():
    # Connessione al database
    conn = sqlite3.connect('prototypepokemonstats/database.db') 
    cursor = conn.cursor()

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

    mostra_immagine_pokemon(stats[8])

    # Chiusura del cursore e della connessione
    cursor.close()
    conn.close()
def mostra_immagine_pokemon(id_pokemon):
    nome_pokemon = cmb_pokemon.get()
    #print("Nome del Pokémon selezionato:", nome_pokemon)  # Messaggio di debug

    try:
        spritesheet = Image.open("prototypepokemonstats/primagen.png")
        #print("Spritesheet caricato correttamente.")  # Messaggio di debug

        # Estrapola le dimensioni delle singole immagini nel spritesheet
        larghezza_immagine = 57
        altezza_immagine = 57

        # Calcola l'indice del Pokémon selezionato
        indice_pokemon = id_pokemon - 1

        # Se l'indice è superiore a 11 (fine della prima riga), aggiungi 12 per passare alla seconda riga
        if indice_pokemon > 11 :
            indice_pokemon += 12

        x = (indice_pokemon % 12) * larghezza_immagine
        y = (indice_pokemon // 13) * altezza_immagine

        region = spritesheet.crop((x, y, x + larghezza_immagine, y + altezza_immagine))
        region = region.resize((124, 124), Image.ANTIALIAS)
        photo = ImageTk.PhotoImage(region)

        image_frame.config(image=photo)
        image_frame.image = photo

        #print("Immagine mostrata correttamente.")  # Messaggio di debug
    except Exception as e:
        print("Errore durante il caricamento o il ritaglio dell'immagine:", e)  # Messaggio di debug
def popola_combobox_nature():
    # Connessione al database
    conn = sqlite3.connect('prototypepokemonstats/database.db') 
    cursor = conn.cursor()

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
    cursor.close()
    conn.close()

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

# Formula statistiche
def calcola_statistica(base, iv, ev, livello):
    """
    Calcola una statistica dati i valori base, iv, ev e livello.
    Restituisce il valore della statistica calcolata.
    """
    statistica = ((2 * base + iv + (ev / 4)) / 100 * livello) + 5
    return statistica

# Formula PS
def calcola_ps(base, iv, ev, livello):
    """
    Calcola i punti salute (PS) dati i valori base, iv, ev e livello.
    Restituisce il valore dei PS calcolati.
    """
    ps = ((2 * base + iv + (ev / 4)) / 100 * livello) + livello + 10
    return ps

def CalcoloAll():
    Reset()
    #PS
    newstats = calcola_ps(int(statstxt[0].get()), int(ivstxt[0].get()), int(evstxt[0].get()), int(textbox_lvl.get()))
    statstxt[0].delete(0, tk.END)
    statstxt[0].insert(0, str(int(math.ceil(newstats))))
    print("PS calcolati:", newstats)

    #ATT
    newstats = calcola_statistica(int(statstxt[1].get()), int(ivstxt[1].get()), int(evstxt[1].get()), int(textbox_lvl.get()))
    statstxt[1].delete(0, tk.END)
    statstxt[1].insert(0, str(int(math.ceil(newstats))))
    print("ATT calcolati:", newstats)

    #DEF
    newstats = calcola_statistica(int(statstxt[2].get()), int(ivstxt[2].get()), int(evstxt[2].get()), int(textbox_lvl.get()))
    statstxt[2].delete(0, tk.END)
    statstxt[2].insert(0, str(int(math.ceil(newstats))))
    print("DEF calcolati:", newstats)

    #ATTS
    newstats = calcola_statistica(int(statstxt[3].get()), int(ivstxt[3].get()), int(evstxt[3].get()), int(textbox_lvl.get()))
    statstxt[3].delete(0, tk.END)
    statstxt[3].insert(0, str(int(math.ceil(newstats))))
    print("ATTS calcolati:", newstats)

    #DEFS
    newstats = calcola_statistica(int(statstxt[4].get()), int(ivstxt[4].get()), int(evstxt[4].get()), int(textbox_lvl.get()))
    statstxt[4].delete(0, tk.END)
    statstxt[4].insert(0, str(int(math.ceil(newstats))))
    print("DEFS calcolati:", newstats)

    #SPD
    newstats = calcola_statistica(int(statstxt[5].get()), int(ivstxt[5].get()), int(evstxt[5].get()), int(textbox_lvl.get()))
    statstxt[5].delete(0, tk.END)
    statstxt[5].insert(0, str(int(math.ceil(newstats))))
    print("SPD calcolati:", newstats)

    #Nature
    #CalcoloNatura()

# Funzione per la stampa
def stampa():
    # Codice per la stampa...
    pass
# Funzione per la finestra "About"
def about():
    # Codice per la finestra "About"...
    pass

# Creazione della finestra principale
root = tk.Tk()
root.title("LCPM - Local Calculator PokettoMonsuta - by Nieft&Manush")

# Impostazione delle dimensioni della finestra
root.geometry("500x350")

# Creazione del menu a tendina
menu_bar = Menu(root)
root.config(menu=menu_bar)
root.resizable(False, False)  # Blocca il ridimensionamento sia in larghezza che in altezza

# Creazione del menu "PokeStars"
pokestars_menu = Menu(menu_bar, tearoff=0)
menu_bar.add_cascade(label="PokeStars", menu=pokestars_menu)
pokestars_menu.add_command(label="Stampa", command=stampa)

# Creazione del menu "?"
altro_menu = Menu(menu_bar, tearoff=0)
menu_bar.add_cascade(label="?", menu=altro_menu)
altro_menu.add_command(label="About", command=about)

# creo DB
creaDB.esegui_script_sql('prototypepokemonstats/db_pokemon.sql', 'prototypepokemonstats/database.db')

# Creazione della combobox a sinistra
cmb_pokemon = ttk.Combobox(root)
cmb_pokemon.bind("<<ComboboxSelected>>", lambda event: popola_textbox())
cmb_pokemon.place(x=0, y=5)

# Label del Tipo 1
type1_label = tk.Label(root, text="TIPO 1")
type1_label.place(x=160, y=5)
textbox_type1 = tk.Entry(root)
textbox_type1.place(x=200 ,y=5, width=60)

# Label del Tipo 2
type2_label = tk.Label(root, text="TIPO 2")
type2_label.place(x=280, y=5)
textbox_type2 = tk.Entry(root)
textbox_type2.place(x=320 ,y=5, width=60)

# Lista delle etichette per le statistiche
labels = ["PS", "ATT", "DEF", "ATTS", "DEFS", "SPD"]

# Creazione delle etichette per le statistiche e delle textbox
statstxt = []
for i in range(3):
    for j in range(2):
        label = tk.Label(root, text=labels[i*2 + j])
        label.place(x=0+j*100, y=50+i*25)
        
        textbox = tk.Entry(root)
        textbox.place(x=50+j*100, y=50+i*25, width=40)
        textbox.config(bg="white")
        statstxt.append(textbox)

#Totale STATS
totstats_label = tk.Label(root, text="TOT")
totstats_label.place(x=0, y=120)
textbox_totstats = tk.Entry(root)
textbox_totstats.place(x=50 ,y=120, width=40)

#Totale LVL
lvlstats_label = tk.Label(root, text="LVL")
lvlstats_label.place(x=100, y=120)
textbox_lvl = tk.Entry(root)
textbox_lvl.place(x=150 ,y=120, width=40)
textbox_lvl.insert(0, 100)

#EVS
evs_label = tk.Label(root, text="EVs:")
evs_label.place(x=0, y=140)
evs_label2 = tk.Label(root, text="PS        ATT       DEF       ATTS     DEFS    SPD")
evs_label2.place(x=0, y=160)

# Creazione delle textbox per EVS 0 to 252
evstxt = []
for i in range(6):
    textbox = tk.Entry(root)
    textbox.place(x=0+i*40, y=180, width=40)
    textbox.insert(i, 0)
    evstxt.append(textbox)

#IVS
ivs_label = tk.Label(root, text="IVs:")
ivs_label.place(x=0, y=200)
ivs_label2 = tk.Label(root, text="PS        ATT       DEF       ATTS     DEFS    SPD")
ivs_label2.place(x=0, y=220)

# Creazione delle textbox per IVS 0 to 31
ivstxt = []
for i in range(6):
    textbox = tk.Entry(root)
    textbox.place(x=0+i*40, y=240, width=40)
    textbox.insert(i, 31)
    ivstxt.append(textbox)

# Creazione della combobox a sinistra
nature_label = tk.Label(root, text="Nature")
nature_label.place(x=250, y=220)
cmb_nature = ttk.Combobox(root)
cmb_nature.bind("<<ComboboxSelected>>", lambda event: Reset())
cmb_nature.place(x=250, y=240)

# Pulsante "Calcola"
avanti_button = tk.Button(root, text="CALCOLA", command=CalcoloAll)
avanti_button.place(x=0, y=320)

# Pulsante "Indietro"
indietro_button = tk.Button(root, text="<", command=indietro)
indietro_button.place(x=80, y=320)

# Pulsante "Avanti"
avanti_button = tk.Button(root, text=">", command=avanti)
avanti_button.place(x=120, y=320)


# Riquadro per l'immagine
image_frame = tk.Label(root, bg="white", width=124, height=124)
image_frame.place(x=265, y=50)


# Popolare la combobox con i nomi dei Pokémon
popola_combobox_pokemon()
popola_combobox_nature()
popola_textbox()
Reset()

root.mainloop()
