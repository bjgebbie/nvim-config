FROM ubuntu:latest

COPY ./install.sh install.sh
COPY . /root/.config/nvim
COPY ./assets/node-typescript-boilerplate /root/.config/nvim/assets

RUN ./install.sh

CMD ["echo", "You forgot to set an entrypoint silly goose!"]
