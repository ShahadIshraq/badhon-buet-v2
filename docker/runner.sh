#!/bin/bash
pwd
cd ./server
python3 app.py &
cd ../client
npm start
