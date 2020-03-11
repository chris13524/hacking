FROM ubuntu
RUN apt-get update && apt-get install -y net-tools ncdu tmux python3 bc
COPY . /app
WORKDIR /app
CMD ["./run.sh"]
