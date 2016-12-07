Mr. Spec
========

## Framework de BDD para Ruby

Mediante el uso de DSLs y metaprogramación tenemos como objetivo lograr un framework que sirva para testear proyectos utilizando BDD
permitiendo la realización de los tests de forma sencilla y pudiendo utilizar el principio GIVEN, WHEN, THEN


## Instalación y uso del Framework:

**Instalación:** Realizar un clone del repositorio actual e importar los archivos de la carpeta MrSpec/model al repositorio en el que se este trabajando.

**Uso:**
   
   ***Definición de un test:*** Se debe crear una clase de test cuyo nombre finalice con *_mr_spec*
                                 En esa clase, se deben crear los diferentes tests, cuyos nombres deben finalizar con *_MrSpec*
                                 Si se llegaran a utilizar, definir metodos setUp y Before para reestablecer las variables previo a cada ejecución de test.
                                 
   ***Definición de un test con la sintaxis clasica:***
    
```Ruby
def method_MrSpec
   definicion de variables
   manipulacion de variables
   assertTrue metodo a verificar
   assertFalse metodo a verificar
   assertEquals valor1, valor2
end
```                                 

   ***Definición de un test con la sintaxis Given, When Then:***
    
```Ruby
def method_MrSpec
   Given {Creación de las variables}
   When {Manipulación de las variables}
   Then {Aserción de la manipulación realizada}
end
```

   ***Definición de un test con la sintaxis Spec:***
    
```Ruby
def method_MrSpec
   it "una descripcion del test"
   definicion de variables
   manipulacion de variables
   expect metodoOvalor,algunaAsercion, resultado esperado
end
```   



Por último, al darle runTests se observa un reporte como este:

![](https://github.com/trimegisto87/MrSpec/raw/master/docs/MrSpecreadme.png)
