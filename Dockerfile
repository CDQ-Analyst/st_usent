FROM python:3.8-slim-buster

EXPOSE 8501

RUN echo "deb http://archive.debian.org/debian buster main" > /etc/apt/sources.list && \
    echo "deb http://archive.debian.org/debian-security buster/updates main" >> /etc/apt/sources.list && \
    echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf.d/99no-check-valid-until && \
    apt-get update && \
    apt-get install -y \
        build-essential \
        software-properties-common \
        git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app

RUN pip3 install -r requirements.txt

ENTRYPOINT ["streamlit", "pandas", "openpyxl",   "run", "USENT_25-710.py", "--server.port=8501", "--server.address=0.0.0.0"]
