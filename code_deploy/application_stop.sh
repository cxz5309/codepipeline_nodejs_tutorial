pm2 stop all  
pm2 kill

if pgrep node; 
then pkill node; 
fi
