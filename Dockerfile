FROM python:3.13.3-slim
LABEL author='kaiyo'

WORKDIR /app
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

COPY . .
RUN pip install -r requirements.txt
EXPOSE 4242
ENTRYPOINT [ "python", 'app.py' ]