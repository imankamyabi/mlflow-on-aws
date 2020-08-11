import pymysql
import os

databaseServerIP = os.environ.get("DATABASE_ENDPOINT", None)
databaseUserName = os.environ.get("DATABASE_USERNAME", None)
databaseUserPassword = os.environ.get("DATABASE_PASSWORD", None)
newDatabaseName = os.environ.get("PROJECT_NAME", None)
charSet = "utf8mb4"
cusrorType = pymysql.cursors.DictCursor

connectionInstance  = pymysql.connect(host=databaseServerIP, user=databaseUserName, password=databaseUserPassword, charset=charSet, cursorclass=cusrorType)

try:
  cursorInsatnce  = connectionInstance.cursor()
  sqlStatement = "CREATE DATABASE "+newDatabaseName  
  cursorInsatnce.execute(sqlStatement)
except Exception as e:
  print("Exeception occured:{}".format(e))
finally:
  connectionInstance.close()