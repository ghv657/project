import psycopg2 as psy
from data import config

def close(cur=None):
    if cur:
        cur.close()
    con.close()

def open():
    global con
    dbname, user, host, password = config.read_config()
    con = psy.connect(dbname=dbname, user=user, host=host, password=password)

def fetch_ejendom(region: int, items: str, where: str = None):
    """
    Fetches the  data from the database specified in credentials.txt
    
    Args:
        region: region you want (hoved_staden,hele_landet)
        items: a comma seperated strings of the values you want returned (year, somhus, famhus, ejerlejl)
    Returns:
        A list of tuples, with each tuple containing the items for a given row in the table.
    """
    cur = con.cursor()
    try:
        sql = f"""--sql
            SELECT {items} FROM {region}_ejendom {where};
        """
        cur.execute(sql)
        tuple_res = cur.fetchall()
        cur.close()
        return tuple_res
    except:
        close(cur)


def fetch_loen_or_indkomst(category: str, region: int, items: str, where: str = None):
    """
    Fetches the  data from the database specified in credentials.txt
    
    Args:
        category: The category you want (indkomst,loen)
        region: region you want (hoved_staden,hele_landet)
        items: a comma seperated strings of the values you want returned (year,"15-19","20-24","25-29","30-34","35-39","40-44","45-49","50-54","55-59","60-64","65-69")
    Returns:
        A list of tuples, with each tuple containing the items for a given row in the table.
    """
    cur = con.cursor()
    try:
        sql = f"""--sql
            SELECT {items} FROM {region}_{category} {where};
        """
        print(sql)
        cur.execute(sql)
        tuple_res = cur.fetchall()
        cur.close()
    except:
        close(cur)
    return tuple_res
