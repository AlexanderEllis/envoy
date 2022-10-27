FROM python:3.11.0-slim-bullseye@sha256:f8cc89f5e47347703ec0c2b755464d7db2fa16f255ab860c4b24ba6ef2402020

ADD requirements.txt /tmp/flask-requirements.txt
RUN pip3 install -qr /tmp/flask-requirements.txt
RUN mkdir /code

ENTRYPOINT ["python3", "/code/service.py"]
