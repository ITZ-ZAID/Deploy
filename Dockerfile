FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
RUN pip3 install -U -r requirements.txt
COPY start /start
CMD ["/bin/bash", "/start"]
