FROM python:3.11.2-slim-bullseye@sha256:28e5366ce5c423639950d3962b668730535da08cd235bdacef32171e26cd2b5c

ADD requirements.txt /tmp/flask-requirements.txt
RUN pip3 install -qr /tmp/flask-requirements.txt
RUN mkdir /code

ENTRYPOINT ["python3", "/code/service.py"]
