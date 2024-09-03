# Dockerfile for book_catalog microservice
FROM python:3.11-alpine

WORKDIR /app/

COPY book_catalog/requirements.txt .

RUN pip install --nocache-dir -r requirements.txt

COPY /book_catalog/ .

CMD ["unvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
