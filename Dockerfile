FROM ubuntu

RUN apt update && \
    apt install -y python3 python3-pip && \
    python3 -m pip install --upgrade pip

RUN mkdir /code

ADD requirements.txt /code
RUN python3 -m pip install -r /code/requirements.txt

ADD . /code

CMD python3 /code/app.py
