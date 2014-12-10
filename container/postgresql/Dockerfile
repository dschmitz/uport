#
# example Dockerfile for http://docs.docker.com/examples/postgresql_service/
#

FROM uport/ubuntu:latest
MAINTAINER David Schmitz

# Add the PostgreSQL PGP key to verify their Debian packages.
# It should be the same key as https://www.postgresql.org/media/keys/ACCC4CF8.asc
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8

# Add PostgreSQL's repository. It contains the most recent stable release
#     of PostgreSQL, ``9.4``.
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ utopic-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# Update the Ubuntu and PostgreSQL repository indexes
RUN apt-get update

# Install ``python-software-properties``, ``software-properties-common`` and PostgreSQL 9.3
#  There are some warnings (in red) that show up during the build. You can hide
#  them by prefixing each apt-get statement with DEBIAN_FRONTEND=noninteractive
RUN apt-get -y -q install postgresql-9.4 postgresql-client-9.4 postgresql-contrib-9.4 postgresql-9.4-postgis-2.1 pgtop

# Note: The official Debian and Ubuntu images automatically ``apt-get clean``
# after each ``apt-get``

# --------------- postgresql.conf
ADD docker-postgresql.conf /etc/postgresql/9.4/main/docker-postgresql.conf
ADD pg_hba.conf /etc/postgresql/9.4/main/pg_hba.conf

RUN echo "include 'docker-postgresql.conf'" >> /etc/postgresql/9.4/main/postgresql.conf

RUN chown -v postgres:postgres /etc/postgresql/9.4/main/*
RUN chmod -v u=rw,g=r,o= /etc/postgresql/9.4/main/*

# Run the rest of the commands as the ``postgres`` user created by the ``postgres-9.4`` package when it was ``apt-get installed``
USER postgres

ADD create_default_user.sql .

RUN /etc/init.d/postgresql start && \
  psql -a -e -d postgres -c "create extension if not exists postgis;" && \
  psql -a -e -d postgres -c "create extension if not exists postgis_topology;" && \
  psql -a -e -d postgres -c "create database db with template postgres;" && \
  psql -a -e -d postgres -c "alter user postgres with encrypted password 'postgres';" && \
  psql -a -e -d db -f create_default_user.sql && \
  /etc/init.d/postgresql stop

# Add VOLUMEs to allow backup of config, logs and databases
VOLUME  ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]

# Expose the PostgreSQL port
EXPOSE 5432

# Set the default command to run when starting the container
CMD ["/usr/lib/postgresql/9.4/bin/postgres", "-D", "/var/lib/postgresql/9.4/main", "-c", "config_file=/etc/postgresql/9.4/main/postgresql.conf"]

ADD Dockerfile .
