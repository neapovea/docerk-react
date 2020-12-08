
## Git
#comando que se ejecuta una vez
git config --global gitflow.feature.finish.no-ff TRUE

VERSION="76"
COMENTARIO="overriding-dockerfile"
NOMBRE_APP="frontend"

#comandos git para agregar código del curso
git flow feature start $VERSION"_"$COMENTARIO"_"$NOMBRE_APP
git add .
git commit -m $VERSION"_"$COMENTARIO"_"$NOMBRE_APP
git flow feature finish $VERSION"_"$COMENTARIO"_"$NOMBRE_APP

git flow release start 1.0.$VERSION.1
export GIT_MERGE_AUTOEDIT=no
git flow release finish -m $COMENTARIO 1.0.$VERSION.1
unset GIT_MERGE_AUTOEDIT

git push --tags origin master develop

## Docker

#Generar imagen con nombre neapovea/simpleweb
sudo docker build -t neapovea/simpleweb .

#Arrancar docker basado en el imagen indicando puerto
sudo docker run -p 8080:8080 neapovea/simpleweb

#lanza contendor y lanza sh dentor del mismo
sudo docker run -p  8080:8080 neapovea/simpleweb sh

#arranchar con dockervolume docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app <image_id>

# detectar cambios de fichero con node más rápido (componete chokidar
#docker run -it -p 3000:3000 -v /app/node_modules -v ${PWD}:/app -e CHOKIDAR_USEPOLLING=true CONTAINER_ID

#volumnes
  # -v VOLUMEN_LOCAL:VOLUMEN_NODE # en el ejmpleo mapea el directorio /app entero y sus subdirectorios
  # -v VOLUMEN_NODE #para que no mapee el subdirestorio de /app/node_modules.


#ejecutar sh dentro de unc ontendor ya lanzado
sudo docker exec -it CONTANER_ID sh


#arrancar docker con un fichero distinto al dockerfile

sudo docker build -f Dockerfile.dev .


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


#Problema con react App:
##https://github.com/facebook/create-react-app/issues/8688
##https://stackoverflow.com/questions/60790696/react-scripts-start-exiting-in-docker-foreground-cmd
##hay que agregar stdin_open: true al docker-compse del componente web

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


