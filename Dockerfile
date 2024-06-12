FROM ubuntu:latest

WORKDIR /app

RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay 
    
COPY . /app

EXPOSE 4499

CMD ["sh","wisecow.sh"]