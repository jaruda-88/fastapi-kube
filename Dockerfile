FROM python:3.11

WORKDIR /app

COPY requirements.txt .

# COPY . /app

RUN apt-get update && \
    apt-get install -y && \
    pip install --no-cache-dir --upgrade -r requirements.txt


COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]