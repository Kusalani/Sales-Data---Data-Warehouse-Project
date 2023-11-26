import pyodbc

# Replace these values with your actual database connection details
server = 'DESKTOP-7J8QA6V\MSSQLSERVER02'
database = 'Cargills_Sales_Data_SourceDB'
# username = r'DESKTOP-7J8QA6V\USER'
# password = ''

# Create a connection string
connection_string = f'DRIVER={{SQL Server}};SERVER={server};DATABASE={database};Trusted_Connection=yes;'

# Initialize an empty list to store the order_counts
order_counts = []

try:
    # Establish a connection
    with pyodbc.connect(connection_string) as conn:
        # Create a cursor
        cursor = conn.cursor()

        # Execute the SQL query to get OrderNumber and its count
        cursor.execute("""
            SELECT OrderNumber, COUNT(*)
            FROM sales_data_sample
            GROUP BY OrderNumber;
        """)

        # Fetch all rows from the result set
        rows = cursor.fetchall()

        # Iterate through the result and generate INSERT statements
        for row in rows:
            order_number, count = row
            # Assuming the Orders table has the same column names as your Python script result
            insert_statement = f"""
                INSERT INTO Orders (OrderNumber, QuantityOrdered)
                VALUES ({order_number}, {count});
            """
            # Execute the INSERT statement
            cursor.execute(insert_statement)

        # Commit the changes
        conn.commit()

except Exception as e:
    print(f"Error: {e}")

# Print a message indicating successful insertion
print("Data inserted successfully.")
