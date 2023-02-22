FROM ubuntu

ENV PYTHONUNBUFFERED=1
RUN apt update
RUN apt install libpq-dev python3-pip -y
RUN pip install -U pip
ENV APP_HOME=/home/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
COPY requirements.txt $APP_HOME
RUN pip install -r requirements.txt