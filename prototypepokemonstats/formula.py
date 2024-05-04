# In this file we found it all the function for calculating formula
#STATS EVS IVS NATURE

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

# Inverse Formula
# Formula IVs
def calcola_iv(statistica, base, ev, livello,isps):
    """
    Calcola i valori degli IVs dati il valore della statistica, base, ev e livello.
    Restituisce il valore degli IVs calcolati.
    """
    if (isps == False):
        iv = (statistica - 5) * (100 / livello) - 2 * base - (ev / 4)
    else:
        iv = (statistica - livello - 10) * (100 / livello) - 2 * base - (ev / 4)
    return iv

# Formula EVs
def calcola_ev(statistica, base, iv, livello,isps):
    """
    Calcola i valori degli EVs dati il valore della statistica, base, iv e livello.
    Restituisce il valore degli EVs calcolati.
    """
    if (isps == False):
        ev = max(0, min(508, (statistica - 5) * (100 / livello) - 2 * base - iv))
        ev = max(ev, 252)  # Assicura che nessuna statistica superi 252 EVs
    else:
        ev = max(0, min(508, (statistica - livello - 10) * (100 / livello) - 2 * base - iv))
        ev = max(ev, 252)  # Assicura che nessuna statistica superi 252 EVs
    return ev

def RecolorBGImage(typename):
    if typename == 'Fuoco'        : return "red"
    elif typename == 'Acqua'      : return "blue"
    elif typename == 'Erba'       : return "green"
    elif typename == 'Elettro'    : return "yellow"
    elif typename == 'Ghiaccio'   : return "cyan"
    elif typename == 'Lotta'      : return "sienna"
    elif typename == 'Veleno'     : return "purple"
    elif typename == 'Terra'      : return "saddlebrown"
    elif typename == 'Volante'    : return "skyblue"
    elif typename == 'Psico'      : return "magenta"
    elif typename == 'Coleottero' : return "olive"
    elif typename == 'Roccia'     : return "darkgray"
    elif typename == 'Spettro'    : return "indigo"
    elif typename == 'Drago'      : return "darkorange"
    elif typename == 'Buio'       : return "black"
    elif typename == 'Acciaio'    : return "steelblue"
    elif typename == 'Folletto'   : return "pink"
    elif typename == 'Normale'    : return "lightgrey"
    else: return "white"

def GetType(typename):
    if(typename == "Normale")   : return 1
    if(typename == "Erba")      : return 2
    if(typename == "Fuoco")     : return 3
    if(typename == "Acqua")     : return 4
    if(typename == "Lotta")     : return 5
    if(typename == "Elettro")   : return 6
    if(typename == "Volante")   : return 7
    if(typename == "Coleottero"): return 8
    if(typename == "Veleno")    : return 9
    if(typename == "Ghiaccio")  : return 10
    if(typename == "Roccia")    : return 11
    if(typename == "Terra")     : return 12
    if(typename == "Acciaio")   : return 13
    if(typename == "Psico")     : return 14
    if(typename == "Spettro")   : return 15
    if(typename == "Buio")      : return 16
    if(typename == "Folletto")  : return 17
    if(typename == "Drago")     : return 18