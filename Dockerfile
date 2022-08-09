FROM python:latest

RUN	apt update -y &&\ 
	pip install flask &&\
	pip install nltk &&\
	pip install numpy &&\
	pip install keras &&\
	pip install random

COPY . .

EXPOSE 9000

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0
