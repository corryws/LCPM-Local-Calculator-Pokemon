import createDB as createDB
import sqlite3


def Dbconnection():
    conn = sqlite3.connect('prototypepokemonstats/database.db') 
    cursor = conn.cursor()
    return conn, cursor

def Dbclose(conn, cursor):
    cursor.close()
    conn.close()