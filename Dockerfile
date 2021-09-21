FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install packages
RUN apt-get update && apt-get install -y \
    ffmpeg \
    gettext \
    graphviz \
    inkscape \
    libfile-mimeinfo-perl \
    libfreetype6 \
    libjpeg-dev \
    libtiff-dev \
    libwebp6 \
    libimage-exiftool-perl \
    poppler-utils \
    python3-pythonmagick \
    qpdf \
    xvfb \
    zlib1g-dev

RUN apt-get clean && rm -rf /var/lib/apt/lists/*
