FROM python:3.7.3-alpine3.9

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY src /app
WORKDIR /app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 5000
CMD ["flask", "run"]
