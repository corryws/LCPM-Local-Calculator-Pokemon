# In this file we found it all the function for calculating formula
#STATS EVS IVS NATURE

# Formula statistiche
import math


def calcola_statistica(base, iv, ev, livello):
    """
    Calcola una statistica dati i valori base, iv, ev e livello.
    Restituisce il valore della statistica calcolata.
    """
    statistica = ((2 * base + iv + (ev / 4)) / 100 * livello) + 5
    print("statistica da formula 0",statistica)
    return statistica

# Formula PS
def calcola_ps(base, iv, ev, livello):
    """
    Calcola i punti salute (PS) dati i valori base, iv, ev e livello.
    Restituisce il valore dei PS calcolati.
    """

    #shedinja check
    if base == 1 : 
        ps = base
        return ps

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
        ev = 4 * (((statistica - 5) / livello) * 100 - 2 * base - iv)
    else:
        ev = 4 * ((100 * (statistica - livello - 10) / livello) - 2 * base - iv)
    return ev

def RicalibroStatistiche(nature,oldstats):
    print("oldstats = " ,oldstats)
    print("nature = ", nature)
    #  ps     att    def    atts   defs   spd
    #[231.0, 134.0, 134.0, 166.0, 166.0, 126.0]
    #deve ritornare solo una coppia di valori in base alla natura
    if nature == 'Adamant':
        #+att -atts
        oldstats[1]  = int(math.ceil(oldstats[1] / 1.1))
        oldstats[3]  = int(math.ceil(oldstats[3] / 0.9))
    elif nature == 'Bold':
        #+def -att
        oldstats[2]  = int(math.ceil(oldstats[2] / 1.1))
        oldstats[1]  = int(math.ceil(oldstats[1] / 0.9))
    elif nature == 'Brave':
        #+att -spd
        oldstats[1]  = int(math.ceil(oldstats[1] / 1.1))
        oldstats[5]  = int(math.ceil(oldstats[5] / 0.9))
    elif nature == 'Calm':
        #+defs -att
        oldstats[4]  = int(math.ceil(oldstats[4] / 1.1))
        oldstats[1]  = int(math.ceil(oldstats[1] / 0.9))
    elif nature == 'Careful':
        #+defs -atts
        oldstats[4]  = int(math.ceil(oldstats[4] / 1.1))
        oldstats[3]  = int(math.ceil(oldstats[3] / 0.9))
    elif nature == 'Gentle':
        #+defs -def
        oldstats[4]  = int(math.ceil(oldstats[4] / 1.1))
        oldstats[2]  = int(math.ceil(oldstats[2] / 0.9))
    elif nature == 'Hasty':
        #+spd -def
        oldstats[5]  = int(math.ceil(oldstats[5] / 1.1))
        oldstats[2]  = int(math.ceil(oldstats[2] / 0.9))
    elif nature == 'Impish':
        #+def -atts
        oldstats[2]  = int(math.ceil(oldstats[2] / 1.1))
        oldstats[3]  = int(math.ceil(oldstats[3] / 0.9))
    elif nature == 'Jolly':
        #+spd -atts
        oldstats[5]  = int(math.ceil(oldstats[5] / 1.1))
        oldstats[3]  = int(math.ceil(oldstats[3] / 0.9))
    elif nature == 'Lax':
        #+def -defs
        oldstats[2]  = int(math.ceil(oldstats[2] / 1.1))
        oldstats[4]  = int(math.ceil(oldstats[4] / 0.9))
    elif nature == 'Lonely':
        #+att -def
        oldstats[1]  = int(math.ceil(oldstats[1] / 1.1))
        oldstats[2]  = int(math.ceil(oldstats[2] / 0.9))
    elif nature == 'Mild':
        #+atts -def
        oldstats[3]  = int(math.ceil(oldstats[3] / 1.1))
        oldstats[2]  = int(math.ceil(oldstats[2] / 0.9))   
    elif nature == 'Modest':
        #+atts -att
        oldstats[3]  = int(math.ceil(oldstats[3] / 1.1))
        oldstats[1]  = int(math.ceil(oldstats[1] / 0.9))
    elif nature == 'Naive':
        #+spd -defs
        oldstats[5]  = int(math.ceil(oldstats[5] / 1.1))
        oldstats[4]  = int(math.ceil(oldstats[4] / 0.9))    
    elif nature == 'Quiet':
        #+atts -spd
        oldstats[3]  = int(math.ceil(oldstats[3] / 1.1))
        oldstats[5]  = int(math.ceil(oldstats[5] / 0.9)) 
    elif nature == 'Rash':
        #+atts -defs
        oldstats[3]  = int(math.ceil(oldstats[3] / 1.1))
        oldstats[4]  = int(math.ceil(oldstats[4] / 0.9))  
    elif nature == 'Relaxed':
        #+def -spd
        oldstats[2]  = int(math.ceil(oldstats[2] / 1.1))
        oldstats[5]  = int(math.ceil(oldstats[5] / 0.9))     
    elif nature == 'Sassy':
        #+defs -spd
        oldstats[4]  = int(math.ceil(oldstats[4] / 1.1))
        oldstats[5]  = int(math.ceil(oldstats[5] / 0.9))     
    elif nature == 'Timid':
        #+spd -att
        oldstats[5]  = int(math.ceil(oldstats[5] / 1.1))
        oldstats[1]  = int(math.ceil(oldstats[1] / 0.9))     

    return oldstats

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
    if(typename == "Lotta")     : return 2
    if(typename == "Volante")   : return 3
    
    if(typename == "Veleno")    : return 4

    if(typename == "Terra")     : return 5
    if(typename == "Roccia")    : return 6
    if(typename == "Coleottero"): return 7
    if(typename == "Spettro")   : return 8
    if(typename == "Acciaio")   : return 9
    if(typename == "Fuoco")     : return 10
    if(typename == "Acqua")     : return 11

    if(typename == "Erba")      : return 12

    if(typename == "Elettro")   : return 13
    if(typename == "Psico")     : return 14
    if(typename == "Ghiaccio")  : return 15
    if(typename == "Drago")     : return 16
    if(typename == "Buio")      : return 17
    if(typename == "Folletto")  : return 18
    