
#comandos git para agregar código del curso
git flow feature start 50_app-server-starter-code_visits_starter
git add .
git commit -m "50_app-server-starter-code_visits_starter"
git flow feature finish 50_app-server-starter-code_visits_starter

git flow release start 1.0.50.1
git flow release finish -m "app-server-starter-code_visits_starter" 1.0.50.1


#Generar imagen con nombre neapovea/simpleweb
sudo docker build -t neapovea/simpleweb .

#Arrancar docker basado en el imagen indicando puerto
sudo docker run -p 8080:8080 neapovea/simpleweb

#lanza contendor y lanza sh dentor del mismo
sudo docker run -p  8080:8080 neapovea/simpleweb sh


#ejecutar sh dentro de unc ontendor ya lanzado
sudo docker exec -it CONTANER_ID sh