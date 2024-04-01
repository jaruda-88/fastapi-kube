# FROM python:3.11

# WORKDIR /app

# COPY requirements.txt .

# # COPY . /app

# RUN apt-get update && \
#     apt-get install -y && \
#     pip install --no-cache-dir --upgrade -r requirements.txt


# COPY . .

# EXPOSE 8000

# CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]

FROM python:3.11

COPY . /app
WORKDIR /app

RUN apt-get update && \
    apt-get install -y && \
    pip install --no-cache-dir --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org --upgrade pip && \
    pip install --no-cache-dir --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org -U setuptools pip && \
    pip install --no-cache-dir --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org --no-cache-dir --upgrade -r requirements.txt

EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0"]
