from python:3.8.10

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /app
WORKDIR /app

RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install


EXPOSE 8000