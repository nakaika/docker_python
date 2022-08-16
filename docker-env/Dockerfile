FROM python:3.10.6-buster

RUN apt-get -y update

# Do not disable "sslVerify"

# Install essential libraries
RUN apt-get install -y git nano

# Install poetry 
WORKDIR /app
COPY poetry /app
RUN pip install poetry \
    && poetry install -v

# Install zsh
RUN apt-get install -y zsh
ENV SHELL /usr/bin/zsh

# Install Zinit
COPY .zshrc /root
RUN git clone https://github.com/zdharma-continuum/zinit.git /root/.local/share/zinit/zinit.git