FROM python:3.11-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y --no-install-recommends ca-certificates curl \
  && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir awscli gsutil

RUN mkdir -p /app

COPY * ./app/

RUN echo "hello world"

CMD ["bash"]