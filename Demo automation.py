import mysql.connector
from google.oauth2 import service_account
from googleapiclient.discovery import build

# Set up authentication for the Sheets API
credentials = service_account.Credentials.from_service_account_file('testsheet-384706-f2bfa79d6f1b.json')
service = build('sheets', 'v4', credentials=credentials)

# Fetch data from the Google sheet
sheet = service.spreadsheets()
result = sheet.values().get(spreadsheetId='18als588WzlIPDFVB8MofSqcmTZ0_YLaCPj14E8U82FM', range='A2:D7').execute()
rows = result.get('values', [])

# Connect to the MySQL database
db = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="mysql",
    database="sales"
)
cursor = db.cursor()

# Insert data into the MySQL database
for row in rows:
    query = "INSERT INTO sales (sales_date, sales_region, sales_quantity, sales_amount) VALUES (%s, %s, %s, %s)"
    values = tuple(row)
    cursor.execute(query, values)

# Commit the changes to the database
db.commit()

# Close the database connection
db.close()