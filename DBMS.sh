#!/bin/bash
echo "Choose from menu:"
select choice in create_database rename_database delete_database use_database
do
case $choice in
create_database) read -p "enter database name:"; 
mkdir $REPLY
;;
rename_database) 
read -p "enter database name : " dbname;
if [ -d "$dbname" ]; then
	read -p "enter  new database name : " newdbname;
	mv $dbname $newdbname;

fi
;;
delete_database) 
read -p "enter database name : ";
 rm -R $REPLY;
;;
use_database) 
;;

*) print $REPLY is not one of the choices.
;;
esac
done
