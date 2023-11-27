FROM python:3.8

RUN apt update \
    && apt install -y systemctl cron vim

# Install packages
COPY ./app /app
WORKDIR /app
RUN pip3 install -r Document/requirements.txt

COPY ./entrypoint/start-cron.sh /start-cron.sh
RUN chmod 755 /start-cron.sh

ENTRYPOINT [ "/start-cron.sh" ]
