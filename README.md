# Badhan BUET Zone Website Version 2.0
This is a collaborative endevour to develop a website for Badhan BUET zone.
This project will take advantage of latest techniques to make the development, testing and deployment process seemless.


# How to run?
First, you need to build the image
```
sudo docker build -t badhan:latest .
```

Then run the container
```
sudo docker run -dt -p 3000:3000 badhan
```

# How to stop?
Check which containers are running
```
sudo docker ps
```
Collect the CONTAINER ID / NAME of the IMAGE **badhan**
Then stop the container
```
sudo docker stop CONTAINER ID / NAME
```
