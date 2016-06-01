
	supervisorctl stop helios1
	supervisorctl stop helios1celeryd
	pkill -f "python manage.py runserver"
echo "script end"



