import os
import sqlite3

def esegui_script_sql(file_path, database_path):
    """
    Esegue uno script SQL su un database SQLite se il database esiste.

    :param file_path: Percorso del file SQL da eseguire.
    :param database_path: Percorso del database SQLite su cui eseguire lo script.
    """
    # Verifica se il database esiste già
    if os.path.exists(os.path.join(os.path.dirname(__file__), database_path)):
        # Connessione al database esistente
        conn = sqlite3.connect(os.path.join(os.path.dirname(__file__), database_path))
    else:
        # Se il database non esiste, lo crea
        conn = sqlite3.connect(os.path.join(os.path.dirname(__file__), database_path))
        print(f"Creato un nuovo database SQLite in: {database_path}")
         # Creazione di un cursore
        cursor = conn.cursor()

        # Lettura del file SQL
        with open(os.path.join(os.path.dirname(__file__), file_path), 'r') as file:
            sql_script = file.read()

        # Esecuzione del codice SQL
        cursor.executescript(sql_script)

        # Salvataggio dei cambiamenti
        conn.commit()

        # Chiusura del cursore e della connessione
        cursor.close()
        conn.close()
