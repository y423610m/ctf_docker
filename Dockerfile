FROM ubuntu:24.04

USER root

RUN echo "# --- my scripts ---" >> ~/.bashrc && echo "cd ~/" >> ~/.bashrc

RUN apt update && apt install -y software-properties-common less wget zip vim && \
    add-apt-repository -y ppa:ubuntu-toolchain-r/test

RUN apt install -y build-essential

RUN apt install -y gdb

CMD ["bash"]
