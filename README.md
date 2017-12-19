# docker alpine nginx php 7.1

Essa imagem tem o peso médio de 333MB e inclui:
- alpine edge
- php 7.1 (cli e fpm)
- extensões do php:
    - mysql
    - mongodb
    - pear
    - mbstring
    - mcrypt
    - tokenizer
    - xml (xml, xmlwriter, xmlrpc, xmlreader, simplexml)
    - soap
    - openssl
    - json
    - curl
    - gd 
    - (veja o restante no Dockerfile)

Tanto o nginx, quanto o php-fpm rodam sob o usuário 'www', logo o diretório '/var/www/src' sempre será executado sob esse usuário (evitar ter que aplicar chmod especial em algum diretório para que o php possa operar).


## Docker  SUPERVIZ
- Faça o docker login com a sua conta do dockerhub
- Focker login 
- Em seguida configure o arquivo docker-compose.yml apontando para a pasta do projeto
- Rode o comando docker-compose up -d
- Docker ps - para exibir os container 
- O front ainda deve ser rodado dentro do container e pasta do projeto.

- Para acessar dentro do container rode
- Docker exec -it {ID CONTAINER} /bin/sh  


Mais dados no docker hub:
# docker run
```
docker run \
    --name=meucontainer \
    -v /diretorio/seuconteudo:/var/www/src \
    --link mysql:mysql \
    --link mongodb:mongodb \
    -p 8180:80 \
    -d josebispo/superuber
```

# docker compose

Acompanha um docker-compose de exemplo, subindo o container com php (e seu projeto) além do banco mysql e mongodb. Basta rodar:
```
docker-compose up -d
```

E para encerrar:
```
docker-compose down
```

Caso queira fazer o build:
```
docker build -t nomeDaSuaImagem -f Dockerfile .
```

docker run --rm -v $(pwd):/src -w /src -p 8080:8080 node:6 bash -c "npm install && npm run dev"
