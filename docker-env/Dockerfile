FROM debian:stable

RUN apt-get -y update

# Install some libraries to build an environment with pyenv
# Do not disable "sslVerify"
RUN apt-get install -y \
    wget \
    gcc \
    make \
    git
# https://aiedoc.github.io/note/Infrastructure/OS%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89/python%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB/
RUN apt-get install -y build-essential libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libssl-dev openssl libbz2-dev libreadline-dev

# Install Python with pyenv
ENV PYTHON_MAJOR_VERSION=3
ENV PYTHON_MINOR_VERSION=10
ENV PYTHON_MICRO_VERSION=4
ENV PYTHON_VERSION="${PYTHON_MAJOR_VERSION}.${PYTHON_MINOR_VERSION}.${PYTHON_MICRO_VERSION}"
RUN git clone --depth=1 https://github.com/pyenv/pyenv.git .pyenv
ENV PYENV_ROOT="${HOME}/.pyenv"
ENV PATH="${PYENV_ROOT}/shims:${PYENV_ROOT}/bin:${PATH}"
RUN pyenv install ${PYTHON_VERSION}
RUN pyenv global ${PYTHON_VERSION}
RUN /.pyenv/versions/${PYTHON_VERSION}/bin/python${PYTHON_MAJOR_VERSION}.${PYTHON_MINOR_VERSION} -m pip install --upgrade pip setuptools

# Install poetry 
WORKDIR /app
COPY poetry /app
RUN pip install poetry \
    && poetry install -v

# Install zsh
RUN apt-get install -y zsh
ENV SHELL /usr/bin/zsh
RUN echo "export LANG=ja_JP.UTF-8" >> ~/.zshrc