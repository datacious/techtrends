# Start with a base image containing Python 3.8
FROM python:3.8-alpine

COPY ./techtrends/ /app/

# Set the working directory inside the docker image
WORKDIR /app

# export port
EXPOSE 3111

RUN pip install -r requirements.txt
RUN python init_db.py

CMD ["python", "app.py"]
