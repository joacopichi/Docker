FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

RUN mkdir /imagenes

RUN wget -O /imagenes/tux.jpg https://upload.wikimedia.org/wikipedia/commons/a/af/Tux.png

CMD ["bash"]