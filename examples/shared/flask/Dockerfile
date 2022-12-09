FROM python:3.11.1-slim-bullseye@sha256:555dcc94587b4101de48664b45b19f17e099a3ab236dec629791f366e2f2e83c

ADD requirements.txt /tmp/flask-requirements.txt
RUN pip3 install -qr /tmp/flask-requirements.txt
RUN mkdir /code

ENTRYPOINT ["python3", "/code/service.py"]
