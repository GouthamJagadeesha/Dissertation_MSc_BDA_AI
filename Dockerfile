FROM ubuntu:22.04

RUN	apt-get update -y &&\ 
	apt-get install python3-pip -y

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 9000

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0
