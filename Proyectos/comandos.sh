
## Git

#comandos git para agregar código del curso
git flow feature start 58_automatic-container-restarts_visits
git add .
git commit -m "58_automatic-container-restarts_visits"
git flow feature finish 58_automatic-container-restarts_visits

git flow release start 1.0.58.1
git flow release finish -m "automatic-container-restarts" 1.0.58.1

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


sudo docker-compose down
sudo docker-compse

