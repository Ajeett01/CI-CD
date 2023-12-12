FROM python:3.9

WORKDIR /app/backend

COPY requirement.txt /app/backend
RUN pip install -r requirement.txt

COPY . /app/backend

EXPOSE 8000

CMD python /app/backend/manage.py runserver 0.0.0.0:8000
