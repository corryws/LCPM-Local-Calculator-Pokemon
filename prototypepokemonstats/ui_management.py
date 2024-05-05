from tkinter import Image
from PIL import Image, ImageTk

#funzione che estrae l'immagine icona del pokemon
def mostra_immagine_pokemon_ui(id_pokemon):
    try:
        spritesheet = Image.open("prototypepokemonstats/primagen.png")

        # Dimensioni delle immagini nel spritesheet
        larghezza_immagine = 57
        altezza_immagine = 57

        # Aggiungi 1 all'ID del Pokémon per allineare gli indici
        id_pokemon -= 1

        # Calcola la posizione del Pokémon nel spritesheet
        riga = id_pokemon // 12  # Calcola la riga
        colonna = id_pokemon % 12  # Calcola la colonna

        # Calcola la coordinata x e y dell'immagine nel spritesheet
        x = colonna * larghezza_immagine
        y = riga * altezza_immagine

        # Ritaglia l'immagine corrispondente
        region = spritesheet.crop((x, y, x + larghezza_immagine, y + altezza_immagine))
        region = region.resize((124, 124), Image.LANCZOS) # deprecated Image.ANTIALIAS
        photo = ImageTk.PhotoImage(region)

        return photo

    except Exception as e:
        print("Errore durante il caricamento o il ritaglio dell'immagine:", e)

def mostra_immagine_screen_ui():
    # Caricare un'immagine
    image_path = "prototypepokemonstats/screen.png"  # Sostituisci con il percorso del tuo file immagine
    image = Image.open(image_path)
    image = image.resize((180, 180),Image.LANCZOS)  # Ridimensiona l'immagine se necessario
    tk_image = ImageTk.PhotoImage(image)

    return tk_image

# funzione che estrae l'immagine icona del tipo del pokemon
def mostra_immagine_tipo_ui(id_type):
    #type sarà un intero e in base appunto al "tipo assocerò un id"
    try:
        spritesheet = Image.open("prototypepokemonstats/types_icon.png")

        # Dimensioni delle immagini nel spritesheet
        larghezza_immagine = altezza_immagine   = 38

        # Aggiungi 1 all'ID del tipo per allineare gli indici
        id_type -= 1

        # Calcola la posizione del Pokémon nel spritesheet
        riga    = id_type // 9  # Calcola la riga
        colonna = id_type % 9  # Calcola la colonna

        # Calcola la coordinata x e y dell'immagine nel spritesheet
        x = colonna * larghezza_immagine ; y = riga * altezza_immagine

        # Ritaglia l'immagine corrispondente
        region = spritesheet.crop((x, y, x + larghezza_immagine, y + altezza_immagine))
        region = region.resize((38, 38), Image.LANCZOS) # deprecated Image.ANTIALIAS
        photo  = ImageTk.PhotoImage(region)

        return photo
    
    except Exception as e:
        print("Errore durante il caricamento o il ritaglio dell'immagine:", e)