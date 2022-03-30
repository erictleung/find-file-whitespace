FROM alpine/git:v2.24.1

ENV WORKDIR="/find-file-whitespace"
WORKDIR ${WORKDIR}

RUN apk add bash
COPY ./entrypoint.sh ${WORKDIR}/entrypoint.sh

ENTRYPOINT bash ${WORKDIR}/entrypoint.sh
