FROM postgres:latest

ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=db_invoice
COPY ./postgres.sql /docker-entrypoint-initdb.d

