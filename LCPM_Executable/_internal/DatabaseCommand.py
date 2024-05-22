import os
import createDB as createDB
import sqlite3


def Dbconnection():
    path_to_image_db= os.path.join(os.path.dirname(__file__), 'database.db')
    conn = sqlite3.connect(path_to_image_db) 
    cursor = conn.cursor()
    return conn, cursor

def Dbclose(conn, cursor):
    cursor.close()
    conn.close()