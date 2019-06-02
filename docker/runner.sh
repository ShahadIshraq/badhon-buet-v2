#!/bin/bash
pwd
cd ./server
python3 app.py &
cd ..
cd ./client
npm start &
cd ..
tail -f /dev/null
