#!/bin/sh

# wait for RabbitMQ server to start
sleep 10

# Start site worker
celery -A codalab worker -l info -Q site-worker,submission-updates -n site-worker -Ofast -Ofair --logfile=/var/log/site_worker.log --concurrency=2
