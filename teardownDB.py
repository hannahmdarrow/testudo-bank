import pymysql
import names
import random
import string

# Connection Config Values
rds_endpoint='localhost'
username='root'
password='<Put MySQL Server Password Here>'
database_name = 'testudo_bank'

# Connect to local MySQL Server and delete a DB called 'testudo_bank'
connection = pymysql.connect(host=rds_endpoint, user=username, passwd = password)
cursor = connection.cursor()

delete_testudo_bank_db_sql = '''
DROP DATABASE {};
'''.format(database_name)

cursor.execute(delete_testudo_bank_db_sql)

connection.commit()
cursor.close()