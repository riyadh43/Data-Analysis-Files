
import gspread
import mysql.connector
from oauth2client.service_account import ServiceAccountCredentials

# Define the scope of the API access
scope = ['https://spreadsheets.google.com/feeds', 'https://www.googleapis.com/auth/drive']

# Path to the Google Sheets API credentials file
creds = ServiceAccountCredentials.from_json_keyfile_name('testsheet-384706-f2bfa79d6f1b.json', scope)

# Authenticate and authorize access to the API
client = gspread.authorize(creds)

# Open the Google Sheet by its name
sheet = client.open('Sheet to MySQL auto data input').sheet1

# Get all of the data from the sheet
data = sheet.get_all_values()


# Connect to the MySQL database
cnx = mysql.connector.connect(user='root', password='mysql',
                              host='127.0.0.1',
                              database='sales')

# Create a cursor for the database connection
cursor = cnx.cursor()

# Iterate over the data and insert each row into the database
for row in data:
    cursor.execute("INSERT INTO sales (sales_date, sales_region, sales_quantity, sales_amount) VALUES (%s, %s, %s,%s)", (row[0:]))

# Commit the changes to the database and close the cursor and connection
cnx.commit()
cursor.close()
cnx.close()
