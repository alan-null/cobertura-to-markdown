FROM python:slim

WORKDIR /app
COPY entrypoint.sh /entrypoint.sh
RUN pip install --no-cache-dir pycobertura
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
