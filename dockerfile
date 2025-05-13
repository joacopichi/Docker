FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y wget python3 && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /imagenes
RUN wget -O /imagenes/tux.jpg https://upload.wikimedia.org/wikipedia/commons/a/af/Tux.png

EXPOSE 8080

CMD ["python3", "-m", "http.server", "8080", "--directory", "/imagenes"]
