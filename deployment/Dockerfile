FROM python:3.9-slim

ARG SUMMER_PROJECT_NAME="summer"
ARG WORKERS=1
ARG PHASE="dev"

ENV SUMMER_PROJECT_NAME ${SUMMER_PROJECT_NAME}
ENV SUMMER_DEPLOYMENT_PHASE ${PHASE}
ENV SUMMER_WORKERS ${WORKERS}

COPY ./requirements.txt /
RUN pip install -r /requirements.txt
RUN pip install gunicorn
RUN rm /requirements.txt

COPY ./${SUMMER_PROJECT_NAME} /app/${SUMMER_PROJECT_NAME}
COPY ./deployment/run.sh /app/run.sh

RUN chmod +x /app/run.sh

WORKDIR /app

ENTRYPOINT ["/app/run.sh"]
