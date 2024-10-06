import psycopg2

# Соединение с базой данных
conn = psycopg2.connect(database="mydb", user="myuser", password="mypassword", host="localhost", port="5432")
cur = conn.cursor()

# Пример выполнения скрипта из файла
def execute_sql_file(file_path):
    with open(file_path, 'r') as file:
        sql = file.read()
        cur.execute(sql)

# Выполнение каждого SQL-скрипта
execute_sql_file('sql_scripts/get_items_taken_from_warehouse.sql')
execute_sql_file('sql_scripts/get_brands_delivered_to_warehouse.sql')
# Добавьте другие вызовы по мере необходимости

# Закрытие соединения
cur.close()
conn.close()
