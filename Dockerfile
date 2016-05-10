FROM ekonomizer/golang
MAINTAINER Andrey Gorelov <ekonomizer@gmail.com>

WORKDIR /project/

ADD ./run_app /project
RUN chmod 777 /project/run_app
