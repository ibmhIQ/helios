while true; do 
string_pull="$(git pull origin master)"

if [ "$string_pull" != "Already up-to-date." ]; then
	#date
	#echo "HEAD UPDATED TO $string_head_hash_compare"
	supervisorctl stop helios1
	supervisorctl stop helios1celeryd
	pkill -f "python manage.py runserver"
	pkill -f "python manage.py celeryd"
	supervisorctl start helios1
	supervisorctl start helios1celeryd
	
fi

sleep 0.5
done

echo "script end"



