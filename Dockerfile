FROM python:3.9-slim-buster
WORKDIR /app
COPY ./requirements.txt .
COPY src src

RUN apt-get update && apt-get install -y \
    python-pip \ 
    curl \
    wget

RUN pip install -r requirements.txt

RUN --mount=type=bind,src=.