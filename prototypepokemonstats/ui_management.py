from tkinter import Image
from PIL import Image, ImageTk


#funzione che estrae l'immagine icona del pokemon
def mostra_immagine_pokemon_ui(id_pokemon):
    try:
        print(id_pokemon)
        # far partire id_pokemon da 1 nuovamente per le nuove gen
        gen_selection = "I"
        if id_pokemon <= 151 :
            gen_selection = "I"

        elif id_pokemon >= 152 and id_pokemon < 252:
            gen_selection = "II"
            id_pokemon -= 151

        elif id_pokemon >= 252 and id_pokemon < 387:
            gen_selection = "III"
            id_pokemon -= 251

        elif id_pokemon >= 387 and id_pokemon < 494:
            gen_selection = "IV"
            id_pokemon -= 386

        elif id_pokemon >= 494 and id_pokemon < 650: 
            gen_selection = "V"
            id_pokemon -= 493
        
        elif id_pokemon >= 650 and id_pokemon < 722: 
            gen_selection = "VI"
            id_pokemon -= 649
        
        elif id_pokemon >= 722 and id_pokemon < 810:  
            gen_selection = "VII"
            id_pokemon -= 721
        
        elif id_pokemon >= 810:  
            gen_selection = "VIII"
            id_pokemon -= 809

        print("prototypepokemonstats/Assets/PokemonGen/Gen"+gen_selection+".png")
        spritesheet = Image.open("prototypepokemonstats/Assets/PokemonGen/Gen"+gen_selection+".png")
       
        # Dimensioni delle immagini nel spritesheet
        larghezza_immagine = 128
        altezza_immagine   = 128

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

# funzione che estrae l'immagine icona del tipo del pokemon
def mostra_immagine_tipo_ui(id_type):
    try:
        spritesheet = Image.open("prototypepokemonstats/Assets/PokemonType/types_label.png")

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
