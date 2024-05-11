from tkinter import Image
from PIL import Image, ImageTk

#funzione che estrae l'immagine icona del pokemon
def mostra_immagine_pokemon_ui(id_pokemon):
    try:
        spritesheet = Image.open("prototypepokemonstats/GenI.png")

        # Dimensioni delle immagini nel spritesheet
        larghezza_immagine = 128
        altezza_immagine = 128

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
        region = region.resize((230, 230), Image.LANCZOS) # deprecated Image.ANTIALIAS
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
    try:
        spritesheet = Image.open("prototypepokemonstats/types_label.png")

        # Dimensioni delle immagini nel spritesheet
        larghezza_immagine = 100
        altezza_immagine   = 22

        # Calcola la riga e la colonna corrispondenti all'ID
        colonna = (id_type - 1) % 6  # Calcola la colonna (partendo da 0)
        riga    = (id_type - 1) // 6  # Calcola la riga (partendo da 0)

        # Calcola la coordinata x e y dell'immagine nel spritesheet
        x = colonna * larghezza_immagine
        y = riga * altezza_immagine

        # Ritaglia l'immagine corrispondente
        region = spritesheet.crop((x, y, x + larghezza_immagine, y + altezza_immagine))
        region = region.resize((100, 22), Image.LANCZOS)
        photo  = ImageTk.PhotoImage(region)

        return photo
    except Exception as e:
        print("Errore:", e)
