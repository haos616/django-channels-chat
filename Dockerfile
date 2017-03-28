FROM python:3.6.1

RUN mkdir /code \
    && mkdir /script
WORKDIR /code

ADD ./docker-entrypoint.sh /scripts/docker-entrypoint.sh
ADD ./ /code

RUN pip install -r /code/requirements.txt \
    && chmod +x /scripts/docker-entrypoint.sh

ENTRYPOINT ["/scripts/docker-entrypoint.sh"]
