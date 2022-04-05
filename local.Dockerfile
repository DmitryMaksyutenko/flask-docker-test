FROM python:3.10

RUN pip install pdm

WORKDIR /app

COPY ./app /app
COPY ./run.py /app/run.py
COPY ./settings/local /app/settings/local
COPY ./settings/common_config.py /app/settings/common_config.py
COPY ./.pdm.toml /app/.pdm.toml
COPY ./pdm.lock /app/pdm.lock
COPY ./pyproject.toml /app/pyproject.toml

RUN pdm install