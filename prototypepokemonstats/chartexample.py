import tkinter as tk
from tkinter import ttk
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg

def plot_radar(stats, categories, figsize):
    # Numero di categorie
    num_vars = len(categories)

    # Angoli per ciascuna categoria
    angles = np.linspace(0, 2 * np.pi, num_vars, endpoint=False).tolist()

    # Chiudi il loop
    stats += [stats[0]]
    angles += [angles[0]]

    # Preparazione del grafico
    fig, ax = plt.subplots(figsize=figsize, subplot_kw=dict(polar=True))

    # Cambia il tipo di proiezione a "polygonal"
    ax.set_theta_offset(np.pi / 2)
    ax.set_theta_direction(-1)

    # Aggiungi le statistiche
    ax.fill(angles, stats, color='blue', alpha=0.25)
    ax.plot(angles, stats, color='blue', linewidth=2)

    # Etichette
    ax.set_yticklabels([])
    ax.set_xticks(angles[:-1])
    ax.set_xticklabels(categories)

    return fig

# Creazione dell'app Tkinter
window = tk.Tk()
window.title("Radar Plot")
window.geometry("500x350")

# Creazione dei widget per l'inserimento dei valori delle statistiche
categories = ['HP', 'Attack', 'Defense', 'Speed', 'Special Attack', 'Special Defense']

# Aggiornamento del grafico all'avvio
stats = [40,50,30,22,34,23]
fig = plot_radar(stats, categories,figsize=(2.5, 2.5))
canvas = FigureCanvasTkAgg(fig, master=window)
canvas_widget = canvas.get_tk_widget()
canvas_widget.grid(row=len(categories)+1, column=0, columnspan=2, padx=5, pady=5)

window.mainloop()
