FROM python:3.12.3-slim

RUN apt update

RUN apt install gcc -y

RUN apt install python3-dev -y

RUN python3 -m pip install apache-airflow

COPY setup.sh .

COPY requirements.txt /requirements.txt

RUN pip install --no-cache-dir --user -r /requirements.txt

RUN chmod +x setup.sh

CMD [ "bash", "setup.sh"]

EXPOSE 8080