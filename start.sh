# /bin/bash
chmod 755 /app/*
nohup /bin/bash /app/alwayson.sh &
/app/gost -L=ws://:80
