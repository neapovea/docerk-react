
## Git

#comandos git para agregar código del curso
git flow feature start 67_creating-dev-dockerfile_frontend
git add .
git commit -m "67_creating-dev-dockerfile_frontend"
git flow feature finish 67_creating-dev-dockerfile_frontend

git flow release start 1.0.67.1
export GIT_MERGE_AUTOEDIT=no
git flow release finish -m "creating-dev-dockerfile" 1.0.67.1
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


#arrancar docker con un fichero distinto al dockerfile

sudo docker build -f Dockerfile.dev


#3-22-2020
#Due to a recent update in the Create React App library, we will need to change how we start our containers.
#In the upcoming lecture, you'll need to add the -it flag to run the container in interactive mode:

sudo docker run -it -p 3000:3000 CONTAINER_ID

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



## Node commmands

#updated 8-4-2020
#
#In the next lecture, Stephen will be going over how to install Create React App
#globally and generate the application. This method of generating a React project is no longer recommended.
#
#Instead of this:

npm install -g create-react-app
create-react-app frontend

#We need to run this command:

npx create-react-app frontend

#Documentation:
#
#https://create-react-app.dev/docs/getting-started#npx
#
#If you've previously installed create-react-app globally via npm install -g create-react-app,
#we recommend you uninstall the package using npm uninstall -g create-react-app to ensure that
#npx always uses the latest version.


