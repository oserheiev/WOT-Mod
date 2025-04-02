FROM python:2.7.18-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    zip \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip setuptools

# Clone and install setuptools-wotmod from GitHub
RUN git clone https://github.com/jhakonen/setuptools-wotmod.git /tmp/setuptools-wotmod && \
    cd /tmp/setuptools-wotmod && \
    python setup.py install && \
    rm -rf /tmp/setuptools-wotmod

WORKDIR /app