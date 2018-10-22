#wait for the SQL Server to come up
sleep 2m
#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Bigp0nts -d master -i setup.sql