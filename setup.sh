#!/bin/bash
echo Intializing the Airflow Database;
airflow db init;
echo Creating User Account;
airflow users create --role "Admin" --username "admin" --password "admin" --firstname "admin" --lastname "admin" --email "admin";
echo Starting the Airflow Scheduler;
nohup airflow scheduler >> ~/airflow/logs/scheduler.logs &
echo Starting the Airflow Webserver;
airflow webserver
