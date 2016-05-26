while true; do 
string_pull="$(git pull origin master)"

if [ "$string_pull" != "Already up-to-date." ]; then
	#date
	#echo "HEAD UPDATED TO $string_head_hash_compare"
	supervisorctl stop helios1
	pkill -f "python manage.py runserver"
	supervisorctl start helios1
	
fi

sleep 0.5
done

echo "script end"



