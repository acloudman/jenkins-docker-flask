FROM ubuntu:latest

COPY . /app
WORKDIR /app

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && pip3 install --upgrade pip

EXPOSE 5000

RUN pip install -r requirements.txt

ENTRYPOINT ["python3"]
CMD ["run.py"]