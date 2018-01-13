FROM python:3.6-alpine

RUN mkdir /var/app
WORKDIR /var/app

COPY . /var/app
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["/usr/local/bin/python3", "manage.py", "runserver 0.0.0.0:8000"]
