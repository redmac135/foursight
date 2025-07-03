FROM python:3.11.9-slim

# Install system dependencies for psycopg2 and build tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    python3-dev \
    gcc \
    libc6-dev \
    && rm -rf /var/lib/apt/lists/*

# install psycopg2 dependencies
RUN apt-get update && apt-get install -y
RUN apt-get install -y python3-psycopg2

# set work directory
WORKDIR /src

# set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# copy entrypoint.sh
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

COPY ./cwsf .

ENTRYPOINT [ "bash", "/docker-entrypoint.sh" ]
