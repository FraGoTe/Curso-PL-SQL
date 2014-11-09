#Revisar que la base de datos esta corriendo en Linux
~ ps -ef | grep pmon
#Conectarme como root a la base de datos
~ sqlplus / as sysdba
SQL> startup #Levantar la base de datos, puerto default 1521
~ lsnrctl start #listenercontrol Levantar los listerners

#Modificar la clave del usuario de base de datos
~ sqlplus / as sysdba
SQL> alter user HR identified by HR account unlock
SQL> shutdown immediate # Apagar la base de datos