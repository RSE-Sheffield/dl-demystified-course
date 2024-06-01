FROM tensorflow/tensorflow:2.16.1-gpu

RUN apt update && apt-get install -y wget \
    gcc  \
    bzip2

WORKDIR /course_setup
COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /root/.jupyter
COPY jupyter_lab_config.py .

WORKDIR /dlcourse
COPY notebooks/python .

EXPOSE 8888

ENTRYPOINT jupyter lab --no-browser  /dlcourse
