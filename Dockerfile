
FROM python:3.10-slim


ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


WORKDIR /app


COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


COPY . /app/


RUN python manage.py collectstatic --noinput

CMD ["gunicorn", "customer_api.wsgi:application", "--bind", "0.0.0.0:8000"]
