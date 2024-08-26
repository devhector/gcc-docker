# gcc-docker

#### Modo de usar:

1. Na pasta raiz do projeto, execute o comando abaixo para criar a imagem do docker:
```bash
docker build -t ubuntu-gcc13 .
```

2. Execute o comando abaixo para rodar o container:
```bash
docker run -it ubuntu-gcc13 bash
```

3. Para compilar o código, execute o comando abaixo:
```bash
gcc -o app app.c
```
