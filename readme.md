# Enviame - Challenge

Ejercicios propuestos.

## Requisitos

Para ejecutar los diferentes aplicativos es necesario instalar el siguiente stack:
- PHP 7.2.34
- Apache 2.4.46
- MariaDB 10.4.14
- Node.js (v8.15.0 or higher)
- NPM

En caso de no contar con una conectividad a internet, se incluyeron los node_modules en el proyecto "Ejercicio_2" que es la api.
Para descargar los ejercicios, todos estan subidos a un mismo repositorio que es: https://github.com/onibas123/enviame ahì puedes clonarlo o descargarlo.

## Ejercicio_2

Primero es necesario cargar el script "enviame.sql" en tu servidor. Una vez cargado el script, hay que configurar el .env que tiene los siguientes parametros:

- HOST=your host
- USER=your user
- PASSWORD=your password
- DATABASE=your database name

Una vez cargado el script y configurado el .env, hay que correr la app de node (por defecto esta en el puerto 8080 no quedo parametrizado).

Para correr la app solo necesitas aplicar los siguientes comandos:

- $ node install
- $ npm run start

Si todo sale bien, veremos algo como esto por la consola:

>>> Server on port 8080
>>> is connected!

- Endpoints expuestos:

url = localhost o tu servidor especificado

POST     url:8080      =>  Creacion de empresa  => data body
GET      url:8080      =>  Obtener todas las empresas
GET      url:8080/id   =>  Obtener una empresa por su id => id params
PUT      url:8080/id   =>  Editar empresa mediante id    => id params, data body
DELETE   url:8080/id   => Eliminar empresa mediante id   => id params

## Ejercicio_4

El ejercicio contra de un proyecto con 1 index.php, 1 archivo de ejemplo de consumo de api "api-postman-example.json" que se utilizo importandolo en el postman y 1 archivo "response_api.txt" que guarda la respuesta de la api.
Por temas de tiempo no alcance a hacerlo de manera mas elaboradadejando dinamico los campos con clases y metodos, solo la hice en duro consumiendo la respuesta de la api con los datos de ejemplo del archivo utilizando curl en php.
Solo hay que guardar el proyecto en la ruta Web y ejecutarlo.

## Ejercicio_5

El ejercicio consta de un proyecto de 2 archivos PHP, basta con copiar el directorio y en un servidor web apache y ejecutarlo.
Tiene un index.php en el cual se parametriza la cantidad de divisores a buscar en la serie Fibonacci (Fb), por defecto vienen 14.
Cabe señalar que hay problemas con setiar este valor en 1000 ya que por temas de rendimiento me soporto hasta 100. Es decir, me trae el primer valor de la serie de Fb que tiene divisores superior a 100.

## Ejercicio_6

El ejercicio consta de un proyecto de 2 archivos PHP, basta con copiar el directorio en un servidor web apache y ejecutarlo.

## Ejercicio_7

El ejercicio consta de un script.sql que se ejecuta en la consola mysql o mariadb como una query de update normal.


