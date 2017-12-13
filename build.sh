docker build -t josebispo/superuber -f Dockerfile .
docker push josebispo/superuber


docker run   --name=meucontainer -v /seuprojeto:/var/www/src  --link mysql:mysql  -p 8180:80 -d josebispo/superuber