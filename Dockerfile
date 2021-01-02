FROM python:3.8.6-slim-buster as build

RUN apt-get update && apt-get install -y build-essential git

WORKDIR /app

RUN pip install pipenv

COPY Pipfile ./
RUN pipenv install --skip-lock

COPY . ./

CMD ["pipenv", "run", "python", "train.py"]
