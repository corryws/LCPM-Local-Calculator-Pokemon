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
    #set thetaoffset ne cambia il giro
    #set thetadirection specchia o meno la proiezione
    ax.set_theta_offset(np.pi / 2)
    ax.set_theta_direction(-1)

    # Aggiungi le statistiche
    ax.fill(angles, stats, color='blue', alpha=0.25)
    ax.plot(angles, stats, color='blue', linewidth=0)

    # Etichette
    ax.set_yticklabels([])
    ax.set_xticks(angles[:-1])
    ax.set_xticklabels(categories)

    return fig