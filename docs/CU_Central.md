# Caso de uso: CU-01 Utilizar MrSpec como framework

## Descripción del escenario
    Un usuario de Ruby crea su proyecto de software y quiere testearlo utilizando MrSpec.
    
## Actores
    Usuario que utiliza Ruby (ACT-01).

## Secuencia de interacciones entre los actores y el sistema
    1. El usuario crea una clase en Ruby cuyo nombre debe finalizar con _mr_spec y ser subclase de MrSpec.
    2. El usuario define los distintos metodos de tests que también deben finalizar con _mr_spec para probar las distintas funcionalidades de su sistema.
    Adicionalmente puede crear un after y un before
    3. El usuario ejecuta el metodo runTests() de la clase creada previamente.
    4. El sistema muestra un reporte indicando que tests funcionaron y cuales fallaron.

## Extensiones/Flujos alternativos
    1. El usuario puede refactorizar tests en cualquier momento

## Tabla resumen

|                       |                                                           |
| --------------------- | ------                                                    |
| ID                    | CU-01                                                     |
| Nombre                | Utilizar MrSpec como framework                            |
| Objetivo              | Testear una clase en Ruby                                 |
| Actores               | Usuario que utiliza Ruby (ACT-01)                         |
| Condiciones iniciales | El usuario debe tener instalado una version de Ruby       |
| Condiciones finales   | El usuario recibe un reporte sobre los tests ejecutados   |
    