FROM python:3.10.7-alpine3.16

WORKDIR /app

RUN apk update \
    && apk add --no-cache gcc musl-dev PyMysql Pillow python-dev libffi-dev \
    && pip install --upgrade pip

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./ ./

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]