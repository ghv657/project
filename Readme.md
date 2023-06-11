## Running the file
To run the file, first copy the database into your database server. This can be done with psql: "psql <database name> < dis_proj.sql"

Afterwards make sure your postgresql server is online, and then go to the project directory and run "pip install -r requirements.txt" to install the requirements.

Then run "python run.py". This will create a config file storing the data needed to connect to the postgresql server. **THE PASSWORD IS NOT ENCRYPTED, MAKE SURE TO NOT UPLOAD THE CONFIG FILE**.

Now you are ready to run the website. From the same directory run "python app.py".


### Ejendom
Taget fra https://www.statistikbanken.dk/statbank5a/selectvarval/define.asp?PLanguage=0&subword=tabsel&MainTable=EJEN88&PXSId=153413&tablestyle=&ST=SD&buttons=0

### Indkomst
Taget fra https://www.statistikbanken.dk/INDKP111
