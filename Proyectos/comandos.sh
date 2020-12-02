
## Git

#comandos git para agregar código del curso
git flow feature start 75_shorthand-with-compose_frontend

git add .
git commit -m "75_shorthand-with-compose_frontend"
git flow feature finish 75_shorthand-with-compose_frontend

git flow release start 1.0.75.1
export GIT_MERGE_AUTOEDIT=no
git flow release finish -m "shorthand-with-compose" 1.0.75.1
unset GIT_MERGE_AUTOEDIT

git push --tags origin master develop

## Docker

#Generar imagen con nombre neapovea/simpleweb
sudo docker build -t neapovea/simpleweb .

#Arrancar docker basado en el imagen indicando puerto
sudo docker run -p 8080:8080 neapovea/simpleweb

#lanza contendor y lanza sh dentor del mismo
sudo docker run -p  8080:8080 neapovea/simpleweb sh


#ejecutar sh dentro de unc ontendor ya lanzado
sudo docker exec -it CONTANER_ID sh


## Docker Compose
sudo docker-compose up #ejecutar contenedor
sudo docker-compose up --build #generar y ejecutar contenedor
sudo docker-compose up -d #ejecutar docker en background


sudo docker-compose ps #muestra los docker levantados con el docker-compse
#        Name                   Command           State           Ports
#------------------------------------------------------------------------------
#_frontend_node-app_1       docker-entrypoint.sh     Up      0.0.0.0:4001->8081/tc
#                        npm start                        p
#_frontend_redis-server_1   docker-entrypoint.sh     Up      6379/tcp
#                        redis ...


sudo docker-compose down
sudo docker-compse

