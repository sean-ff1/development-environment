FROM debian:latest

MAINTAINER Sean Davis

RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install vim tmux git ctags -y
RUN mkdir -p /root/.vim/swapfiles

COPY .vimrc /root
RUN mkdir -p /root/.vim/snippets
ADD ./snippets /root/.vim/snippets
WORKDIR /data

CMD ["tail", "-f", "/dev/null"]


# windows example: docker run -v %cd%:/data -it seantdg/dev bash


