FROM docker:dind

RUN apk update && \
    apk add \
        python3 python3-dev py3-pip gcc musl-dev libffi-dev make \
        openssl-dev
RUN pip3 install ansible molecule docker yamllint ansible-lint

ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD ["sh"]
