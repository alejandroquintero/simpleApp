# Tabla de contenidos
-  [Introducción](#introducción)
-  [API](#api-de-la-aplicación-simpleapp)
  - [Recurso Branch](#recurso-branch)
    - [GET /branchs](#GET-/branchs)
    - [GET /branchs/{id}](#GET-/branchs/{id})
    - [POST /branchs](#POST-/branchs)
    - [PUT /branchs/{id}](#PUT-/branchs/{id})
    - [DELETE /branchs/{id}](#DELETE-/branchs/{id})
  - [Recurso Product](#recurso-product)
    - [GET /products](#GET-/products)
    - [GET /products/{id}](#GET-/products/{id})
    - [POST /products](#POST-/products)
    - [PUT /products/{id}](#PUT-/products/{id})
    - [DELETE /products/{id}](#DELETE-/products/{id})
    - [GET products/{productsid}/category](#GET-products/{productsid}/category)
    - [GET products/{productsid}/category/{categoryid}](#GET-products/{productsid}/category/{categoryid})
    - [POST products/{productsid}/category/{categoryid}](#POST-products/{productsid}/category/{categoryid})
    - [PUT products/{productsid}/category](#PUT-products/{productsid}/category)
    - [DELETE products/{productsid}/category/{categoryid}](#DELETE-products/{productsid}/category/{categoryid}])
  - [Recurso Category](#recurso-category)
    - [GET /categorys](#GET-/categorys)
    - [GET /categorys/{id}](#GET-/categorys/{id})
    - [POST /categorys](#POST-/categorys)
    - [PUT /categorys/{id}](#PUT-/categorys/{id})
    - [DELETE /categorys/{id}](#DELETE-/categorys/{id})

# API Rest
## Introducción
La comunicación entre cliente y servidor se realiza intercambiando objetos JSON. Para cada entidad se hace un mapeo a JSON, donde cada uno de sus atributos se transforma en una propiedad de un objeto JSON. Todos los servicios se generan en la URL /SimpleApp.api/api/. Por defecto, todas las entidades tienen un atributo `id`, con el cual se identifica cada registro:

```javascript
{
    id: '',
    attribute_1: '',
    attribute_2: '',
    ...
    attribute_n: ''
}
```

Cuando se transmite información sobre un registro específico, se realiza enviando un objeto con la estructura mencionada en la sección anterior.
La única excepción se presenta al solicitar al servidor una lista de los registros en la base de datos, que incluye información adicional para manejar paginación de lado del servidor en el header `X-Total-Count` y los registros se envían en el cuerpo del mensaje como un arreglo.

La respuesta del servidor al solicitar una colección presenta el siguiente formato:

```javascript
[{}, {}, {}, {}, {}, {}]
```

## API de la aplicación SimpleApp
### Recurso Branch
El objeto Branch tiene 2 representaciones JSON:	

#### Representación Minimum
```javascript
{
    id: '' /*Tipo Long*/,
    name: '' /*Tipo String*/
}
```




#### GET /branchs

Retorna una colección de objetos Branch en representación Detail.

#### Parámetros

#### N/A

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
200|OK|Colección de [representaciones Detail](#recurso-branch)
409|Un objeto relacionado no existe|Mensaje de error
500|Error interno|Mensaje de error

#### GET /branchs/{id}

Retorna una colección de objetos Branch en representación Detail.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
id|Path|ID del objeto Branch a consultar|Sí|Integer

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
200|OK|Objeto Branch en [representaciones Detail](#recurso-branch)
404|No existe un objeto Branch con el ID solicitado|Mensaje de error
500|Error interno|Mensaje de error

#### POST /branchs

Es el encargado de crear objetos Branch.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
body|body|Objeto Branch que será creado|Sí|[Representación Detail](#recurso-branch)

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
201|El objeto Branch ha sido creado|[Representación Detail](#recurso-branch)
409|Un objeto relacionado no existe|Mensaje de error
500|No se pudo crear el objeto Branch|Mensaje de error

#### PUT /branchs/{id}

Es el encargado de actualizar objetos Branch.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
id|Path|ID del objeto Branch a actualizar|Sí|Integer
body|body|Objeto Branch nuevo|Sí|[Representación Detail](#recurso-branch)

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
201|El objeto Branch actualizado|[Representación Detail](#recurso-branch)
409|Un objeto relacionado no existe|Mensaje de error
500|No se pudo actualizar el objeto Branch|Mensaje de error

#### DELETE /branchs/{id}

Elimina un objeto Branch.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
id|Path|ID del objeto Branch a eliminar|Sí|Integer

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
204|Objeto eliminado|N/A
500|Error interno|Mensaje de error



[Volver arriba](#tabla-de-contenidos)
### Recurso Product
El objeto Product tiene 2 representaciones JSON:	

#### Representación Minimum
```javascript
{
    id: '' /*Tipo Long*/,
    name: '' /*Tipo String*/,
    image: '' /*Tipo String*/,
    price: '' /*Tipo Long*/
}
```




#### GET /products

Retorna una colección de objetos Product en representación Detail.

#### Parámetros

#### N/A

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
200|OK|Colección de [representaciones Detail](#recurso-product)
409|Un objeto relacionado no existe|Mensaje de error
500|Error interno|Mensaje de error

#### GET /products/{id}

Retorna una colección de objetos Product en representación Detail.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
id|Path|ID del objeto Product a consultar|Sí|Integer

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
200|OK|Objeto Product en [representaciones Detail](#recurso-product)
404|No existe un objeto Product con el ID solicitado|Mensaje de error
500|Error interno|Mensaje de error

#### POST /products

Es el encargado de crear objetos Product.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
body|body|Objeto Product que será creado|Sí|[Representación Detail](#recurso-product)

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
201|El objeto Product ha sido creado|[Representación Detail](#recurso-product)
409|Un objeto relacionado no existe|Mensaje de error
500|No se pudo crear el objeto Product|Mensaje de error

#### PUT /products/{id}

Es el encargado de actualizar objetos Product.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
id|Path|ID del objeto Product a actualizar|Sí|Integer
body|body|Objeto Product nuevo|Sí|[Representación Detail](#recurso-product)

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
201|El objeto Product actualizado|[Representación Detail](#recurso-product)
409|Un objeto relacionado no existe|Mensaje de error
500|No se pudo actualizar el objeto Product|Mensaje de error

#### DELETE /products/{id}

Elimina un objeto Product.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
id|Path|ID del objeto Product a eliminar|Sí|Integer

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
204|Objeto eliminado|N/A
500|Error interno|Mensaje de error

#### GET products/{productsid}/category

Retorna una colección de objetos Category asociados a un objeto Product en representación Detail.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
id|Path|ID del objeto Product a consultar|Sí|Integer

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
200|OK|Colección de objetos Category en [representación Detail](#recurso-category)
500|Error consultando category |Mensaje de error

#### GET products/{productsid}/category/{categoryid}

Retorna un objeto Category asociados a un objeto Product en representación Detail.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
productsid|Path|ID del objeto Product a consultar|Sí|Integer
categoryid|Path|ID del objeto Category a consultar|Sí|Integer

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
200|OK|Objeto Category en [representación Detail](#recurso-category)
404|No existe un objeto Category con el ID solicitado asociado al objeto Product indicado |Mensaje de error
500|Error interno|Mensaje de error

#### POST products/{productsid}/category/{categoryid}

Asocia un objeto Category a un objeto Product.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
productsid|PathParam|ID del objeto Product al cual se asociará el objeto Category|Sí|Integer
categoryid|PathParam|ID del objeto Category a asociar|Sí|Integer

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
200|Objeto Category asociado|[Representación Detail de Category](#recurso-category)
500|No se pudo asociar el objeto Category|Mensaje de error

#### PUT products/{productsid}/category

Es el encargado de remplazar la colección de objetos Category asociada a un objeto Product.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
productsid|Path|ID del objeto Product cuya colección será remplazada|Sí|Integer
body|body|Colección de objetos Category|Sí|[Representación Detail](#recurso-category)

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
200|Se remplazó la colección|Colección de objetos Category en [Representación Detail](#recurso-category)
500|No se pudo remplazar la colección|Mensaje de error

#### DELETE products/{productsid}/category/{categoryid}

Remueve un objeto Category de la colección en un objeto Product.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
productsid|Path|ID del objeto Product asociado al objeto Category|Sí|Integer
categoryid|Path|ID del objeto Category a remover|Sí|Integer

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
204|Objeto removido|N/A
500|Error interno|Mensaje de error



[Volver arriba](#tabla-de-contenidos)
### Recurso Category
El objeto Category tiene 2 representaciones JSON:	

#### Representación Minimum
```javascript
{
    id: '' /*Tipo Long*/,
    name: '' /*Tipo String*/
}
```

#### Representación Detail
```javascript
{
    // todo lo de la representación Minimum más los objetos Minimum con relación simple.
    parentCategory: {
    id: '' /*Tipo Long*/,
    name: '' /*Tipo String*/    }
}
```



#### GET /categorys

Retorna una colección de objetos Category en representación Detail.
Cada Category en la colección tiene embebidos los siguientes objetos: Category.

#### Parámetros

#### N/A

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
200|OK|Colección de [representaciones Detail](#recurso-category)
409|Un objeto relacionado no existe|Mensaje de error
500|Error interno|Mensaje de error

#### GET /categorys/{id}

Retorna una colección de objetos Category en representación Detail.
Cada Category en la colección tiene los siguientes objetos: Category.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
id|Path|ID del objeto Category a consultar|Sí|Integer

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
200|OK|Objeto Category en [representaciones Detail](#recurso-category)
404|No existe un objeto Category con el ID solicitado|Mensaje de error
500|Error interno|Mensaje de error

#### POST /categorys

Es el encargado de crear objetos Category.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
body|body|Objeto Category que será creado|Sí|[Representación Detail](#recurso-category)

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
201|El objeto Category ha sido creado|[Representación Detail](#recurso-category)
409|Un objeto relacionado no existe|Mensaje de error
500|No se pudo crear el objeto Category|Mensaje de error

#### PUT /categorys/{id}

Es el encargado de actualizar objetos Category.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
id|Path|ID del objeto Category a actualizar|Sí|Integer
body|body|Objeto Category nuevo|Sí|[Representación Detail](#recurso-category)

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
201|El objeto Category actualizado|[Representación Detail](#recurso-category)
409|Un objeto relacionado no existe|Mensaje de error
500|No se pudo actualizar el objeto Category|Mensaje de error

#### DELETE /categorys/{id}

Elimina un objeto Category.

#### Parámetros

Nombre|Ubicación|Descripción|Requerido|Esquema
:--|:--|:--|:--|:--
id|Path|ID del objeto Category a eliminar|Sí|Integer

#### Respuesta

Código|Descripción|Cuerpo
:--|:--|:--
204|Objeto eliminado|N/A
500|Error interno|Mensaje de error



[Volver arriba](#tabla-de-contenidos)
