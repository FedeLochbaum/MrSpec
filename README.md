![](https://res.cloudinary.com/teepublic/image/private/s--HszJ7-aF--/t_Preview/b_rgb:191919,c_limit,f_jpg,h_630,q_90,w_630/v1446235287/production/designs/251066_5.jpg) Mr. Spec
========

## Framework de BDD para Ruby

Implementacion de un Framework de BDD mediante el uso de DSLs y metaprogamacion permitiendo la realización de tests de forma sencilla con sintaxis GIVEN, WHEN, THEN o Spec.


## Instalación y uso del Framework:

   ***Instalacion:*** 
   
   - git clone https://github.com/trimegisto87/MrSpec.git
   - require  MrSpec/MrSpec/model/Utils/Test_suits/main_requires.rb
   - En consola tipiar: MrSpec.test

**Uso:**
   
   ***Definición de un test:*** Se debe crear una clase de test cuyo nombre finalice con *_mr_spec*
                                 En esa clase, se deben crear los diferentes tests, cuyos nombres deben finalizar con *_MrSpec*. 
                                Permitiendo definir metodos setup y before para reestablecer las variables previo a cada ejecución de test.
                                 
   ***Definición de un test con la sintaxis clasica:***
    
```Ruby
def method_MrSpec
   definicion de variables
   manipulacion de variables
   algunaAsercion valor
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

   ***Aserciones posibles:***
``` 
   * assertTrue unValor
   * assertFalse unValor
   * assertEquals unValor, otroValor
``` 

   ***Caracteristicas del reporte:*** 
``` 
   * Representacion MrSpec en ASCII
   * Quote random Mr.Robot
   * Evaluacion de cada test
   * Reporte general de los tests
```  

![](https://github.com/trimegisto87/MrSpec/raw/master/docs/MrSpecreadme2.png)
