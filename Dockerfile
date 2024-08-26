# Use a imagem base do Ubuntu 22.04 (ou qualquer outra versão mais recente)
FROM ubuntu:22.04

# Atualize o sistema e instale ferramentas necessárias
RUN apt-get update && apt-get install -y \
    software-properties-common \
    wget \
    build-essential \
    ca-certificates \
    gnupg

# Adicione o repositório para GCC 13
RUN add-apt-repository ppa:ubuntu-toolchain-r/test

# Instale o GCC 13 e as ferramentas associadas
RUN apt-get update && apt-get install -y \
    gcc-13 g++-13

# Configure o update-alternatives para definir o GCC 13 como padrão
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-13 100 && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-13 100

# Verifique a versão do GCC instalado
CMD ["gcc", "--version"]
