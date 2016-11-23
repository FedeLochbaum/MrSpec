Mr. Spec
========

## Framework de BDD para Ruby

Mediante el uso de DSLs y metaprogramación tenemos como objetivo lograr un framework que sirva para testear proyectos utilizando BDD
permitiendo la realización de los tests de forma sencilla y pudiendo utilizar el principio GIVEN, WHEN, THEN


## Stack Tecnológico

[![StackShare](http://d27momt4n1f9pb.cloudfront.net/assets/stackshare-logo-5ae67a54b3fde02b445ee57486d00f7c753c18cd1d61d66bd77955a8bf05c508.png)] (http://stackshare.io/rodrigoep94/mr-spec)

## Integrantes:

| Nombre y Apellido  |     usuario Gitlab   |
| ----------------   | -------------------  |
| Federico Lochbaum  |     trimegisto       |
| Sebastian Lopez    |     sennedjem        |
| Rodrigo Papadopulo |     rodrigoep94      |

## Instalación y uso del Framework:

**Instalación:** Realizar un clone del repositorio actual e importar los archivos de la carpeta MrSpec/model al repositorio en el que se este trabajando.

**Uso:**
   
   ***Definición de un test:*** Se debe crear una clase de test cuyo nombre finalice con *_mr_spec*
                                 En esa clase, se deben crear los diferentes tests, cuyos nombres deben finalizar con *_MrSpec*
                                 Si se llegaran a utilizar, definir metodos setUp y Before para reestablecer las variables previo a cada ejecución de test.

  
  
    ***Definición de un test con la sintaxis Given, When Then:** 
    
    ```
        Given {Creación de las variables}
        When {Manipulación de las variables}
        Then {Aserción de la manipulación realizada}
    ```
    
    Por último, a darle runTests se observa un reporte como este:
    
    ![](https://gitlab.com/eis-tpi-unq-2016-s02/grupal-mr-spec/raw/master/docs/MrSpecreadme.png)
