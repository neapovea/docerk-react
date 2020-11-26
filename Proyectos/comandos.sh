
#comandos git para agregar código del curso
git flow feature start 48_minimizing-cache-busting_simpleweb
git add .
git commit -m "48_minimizing-cache-busting_simpleweb"
git flow feature finish 48_minimizing-cache-busting_simpleweb

git flow release start 1.0.48.1
git flow release finish -m "minimizing-cache-busting_simpleweb" 1.0.48.1


#Generar imagen con nombre neapovea/simpleweb
sudo docker build -t neapovea/simpleweb .

#Arrancar docker basado en el imagen indicando puerto
sudo docker run -p 8080:8080 neapovea/simpleweb

#lanza contendor y lanza sh dentor del mismo
sudo docker run -p  8080:8080 neapovea/simpleweb sh


#ejecutar sh dentro de unc ontendor ya lanzado
sudo docker exec -it CONTANER_ID sh