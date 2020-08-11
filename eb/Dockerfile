FROM python:3

LABEL maintainer="Iman Kamyabi (ikamyabi@amazon.com)"
LABEL version="1.0"
LABEL description="dockerFile for mlflow server backed by an Aurora database and Amazon S3"

ENV MLFLOW_VERSION 1.6.0
ENV MLFLOW_HOME /opt/mlflow

RUN pip install --upgrade pip
RUN pip install sqlalchemy mysqlclient scikit-learn boto3 psycopg2 pymysql
RUN pip install mlflow==${MLFLOW_VERSION}

RUN mkdir -p ${MLFLOW_HOME}/scripts
COPY ./scripts ${MLFLOW_HOME}/scripts

EXPOSE 5000

WORKDIR ${MLFLOW_HOME}

RUN chmod +x scripts/run.sh

ENTRYPOINT ["scripts/run.sh"]