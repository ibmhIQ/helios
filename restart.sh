
	supervisorctl stop helios1
	supervisorctl stop helios1celeryd
	pkill -f "python manage.py runserver"
	supervisorctl start helios1
	supervisorctl start helios1celeryd
echo "script end"



