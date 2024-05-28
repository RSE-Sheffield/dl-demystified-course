FROM python:3.8-slim-bookworm as build

WORKDIR /home/dlcourse

RUN apt update && apt-get install -y wget \
    gcc  \
    bzip2

RUN pip install jupyter

RUN adduser --disabled-password dlcourse

COPY notebooks/python .

RUN chown -R dlcourse:dlcourse ./

EXPOSE 8888

USER dlcourse

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--ServerApp.token='f9a3bd4e9f2c3be01cd629154cfb224c2703181e050254b5'", "/home/dlcourse"]
