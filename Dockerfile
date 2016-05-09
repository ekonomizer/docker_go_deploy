FROM ekonomizer/golang
MAINTAINER Andrey Gorelov <ekonomizer@gmail.com>

ARG PORT
ARG REPO
ARG EXEC_FILE
ARG RUNNER_PATH

ENV PORT ${PORT}
ENV REPO ${REPO}
ENV EXEC_FILE ${EXEC_FILE}
WORKDIR /project/
EXPOSE ${PORT}

ADD ${RUNNER_PATH} /project
#ENTRYPOINT ${EXEC_FILE}