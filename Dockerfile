FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

RUN python3 django_web_app/manage.py makemigrations

RUN python3 django_web_app/manage.py migrate

CMD ["python3", "django_web_app/manage.py", "runserver", "0.0.0.0:8000"]


