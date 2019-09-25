FROM alpine


# RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm
# RUN yum -y install gcc openssl-devel bzip2-devel
# RUN yum -y install python3
# RUN yum -y install python3-pip
# RUN yum -y install python3-devel

# RUN apk add --no-cache python3-dev \
#     && pip3 install --upgrade pip 

RUN apk add --no-cache python3-dev gcc libc-dev unixodbc-dev libressl-dev musl-dev libffi-dev\
    && pip3 install --upgrade pip

# RUN yum clean all


WORKDIR /app

COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

# COPY requirements.txt requirements.txt

# RUN pip3 install -r requirements.txt


EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]
CMD ["python", "app.py"]