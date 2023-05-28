FROM python:3.7.3-alpine3.9

COPY src /app
WORKDIR /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
CMD exec /bin/sh -c "trap : TERM INT; sleep 9999999999d & wait"
EXPOSE 5000
