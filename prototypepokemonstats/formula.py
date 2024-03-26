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