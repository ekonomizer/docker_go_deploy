FROM ekonomizer/golang
MAINTAINER Andrey Gorelov <ekonomizer@gmail.com>

ARG PORT
ARG REPO
ARG SERVER_EXEC

ENV REPO ${REPO}
ENV SERVER_EXEC ${SERVER_EXEC}
ENV PORT ${PORT}

WORKDIR /project/
EXPOSE ${PORT}

ADD ./run_app /project
RUN chmod 777 /project/run_app
ENTRYPOINT /project/run_app