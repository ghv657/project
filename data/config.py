import configparser
def create_config():
    config = configparser.ConfigParser()

    config.add_section('postgresql')
    config.set('postgresql', 'host', input("Host: "))
    config.set('postgresql', 'user', input("User: "))
    config.set('postgresql', 'password', input("Password: "))
    config.set('postgresql', 'db', input("Database name: "))

    with open("./data/config.ini", "w") as configfile:
        config.write(configfile)

def read_config():
    config_obj = configparser.ConfigParser()
    config_obj.read("./data/config.ini")
    dbparam=config_obj['postgresql']
    return dbparam['db'], dbparam["user"], dbparam["host"], dbparam["password"]
