#Justin Ariel Zhu Fan
#C4L212

#Tarea 2- Programación para estadística

#Ejercicio 1.
#Cree variables de todos los tipos estudiados y realice operaciones aritméticas y lógicas básicas con cada una de estas dependiendo del tipo de estas.
#Los tipos de variables que hay son character, numeric, logical, integer, complex y factor.

#Contexto, son ratings de peliculas 
#Primero, cargamos nuestro dataset una vez que ya limpiamos los datos iniciales para empezar a trabajar con el dataset obtenido luego de la limpieza.

#Por preferencia, asigno un nombre a mi dataset desde un inicio, en este caso, lo nombre "dataset". 
install.packages("readr")
library(readr)

dataset= read.csv("C:/Users/justin/Documents/R/dataset_peliculas.csv") #Usamos la funcion "read.csv()" en este caso ya que nuestro dataset esta en formato excel. 
#Esta funcion sirve para leer archivos csv, seguidamente, en el parentesis, ponemos la direccion en la que se encuentra nuestro documento con los datos.
dataset #No es necesario ponerlo, pero sirve para visualizar los datos si se requiere.

#Empezando por las variables de tipo character, fijese que en el dataset sobre películas y sus ratings, como tal, los nombres de las peliculas son variables de tipo character

nombre_peli_1 = "maze Runner" #Empezamos asignando nuestra variable de tipo character a una variable llamada "nombre_peli", para que R lo tome como una varaible character.
nombre_peli_2 = "frozen" #Hay que ponerlo entre comillas dobles o simples.
class(nombre_peli_1) #La funcion "class(aqui va el nombre de la variable que se quiere verificar)" sirve para verificar el tipo de variable que es la variable, 
#En este caso, nos dice que la variable es de tipo character, lo que es correcto.
class(nombre_peli_2)

#Caso de las variables tipo numéricas, como lo dice el nombre, estas variables trabajan con números 
#En este caso especifico, son ratings de peliculas que van del 1 al 5 
rating_1 = 1 # Las variables de tipo numérica son números reales que se pueden utlizar para operaciones aritmétricas
rating_2 = 3.5 # Si es un número con decimales, no cambia que sea una variable numérica
rating_3 = 5 # Se le asigna el valor 5 a la variable
rating_4 = 3 #se le asigna el valor 3 a la variable

#Algunas de estas operaciones aritmétricas son la suma(+), la resta(-), la multiplicación(*), la división(/) y las exponenciales(^)
# Se pueden aplicar con números específicos (cualquiera de las operaciones)
rating_1 + 1 # Se suma 1 al rating_peli_1
rating_1 - 1 # Se resta 1 al rating_peli_1
rating_1 * 2 # Se multiplica por 2
rating_1 / 1 # se divide entre 1 
rating_1 ^ 4 # se eleva a la 4

#También se pueden hacer estas operaciones entre las mismas varaibles asignadas 
sum_rat1_rat2 = rating_1 + rating_2 # suma la primera varaible numérica con la segunda varaible numérica
mul_rat1_rat2 = rating_1 - rating_2 # resta la primera varaible numérica con la segunda varaible numérica
res_rat1_rat2 = rating_1 * rating_2 # multiplica la primera varaible numérica con la segunda varaible numérica
div_rat1_rat2 = rating_1 / rating_2 # Divide la primera varaible numérica con la segunda varaible numérica
exp_rat1_rat2 = rating_1 ^ rating_2 # Eleva (exponencial) la primera varaible numérica con la segunda varaible numérica

#Usando la funcion class()
class(rating_1) #como son valores numericos, la funcion class(aqui va la variable), va a decir que son varibales de tipo "numeric"
class(rating_2)
class(rating_3)
class(rating_4)

#Para las variables de tipo integer, en R, para forzar que un numero sea entero, se escribe la letra L al final
rating_5 = 4L #convierte el 4 en un entero
rating_6 = 4.5L #si comete este error, lo que va a ocurrir es que la variable se va a tomar como numeric
rating_7 = as.integer(5.5) # si usa la funcion de esta forma, el resultado que le da va a ser siempre un entero.
#En este caso como tiene decimales, siempre le va tirar el que esta antes de la coma.

class(rating_5) #variable tipo integer
class(rating_6) #como es un error, nos da que es una variable tipoc numeric
class(rating_7) #variable tipo integer

#En el caso de las variables tipo complex o numeros complejos

rating_comp = 1 + 4i # operacion basica con un numero complejo
rating_comp


#Para las variables de tipo logical, la operaciones pertenecientes a estas varaibles son <, >=, ==, !=, & , |

popular = TRUE # la varaible popular es verdadera
recomendada = FALSE # la varaible recomendada es falsa

#Al aplicarles una funcion logica, las variables se vuelven varaibles de tipo logical, lo podemos afirmar con la funcion class()

class(popular)
class(recomendada)


pelicula_recomendada_y_popular = recomendada & popular # aqui decimos que la variable cumple que es recomendada y popular.
pelicula_recomendada_y_popular # por logica, si una es falsa y usamos la funcion &, la respuesta va a ser que es falso
# el simbolo "&" significa "y"

pelicula_recomendada_o_popular = recomendada | popular # aqui decimos que la variable cumple que es recomendada o popular.
pelicula_recomendada_o_popular # por logica, si una es falsa y usamos la funcion |, la respuesta va a depender si hay alguna verdadera
# el simbolo "|" significa "o"

#Para < (menor que) y >= (mayor o igual que), se necesita trabajar con numeros

rating_1 < rating_2 # que la variable rating_1 es menor que la variable rating_2 (verdadero en este caso)
rating_1 >= rating_2 # que la variable rating_1 es mayor o igual que la variable rating_2 (falso en este caso)

# Y para el caso de == y !=, esto se puede usar tanto para numerics como para characters

rating_1 == rating_2 # que la variable rating_1 es exactamente igual a la variable rating_2 (falso en este caso)
rating_1 != rating_2 # que la variable rating_1 no es igual a la variable rating_2 (verdadero en este caso)


# Para las variables de tipo factor, sirve para crear factores definidos por niveles.

genero_pelicula <- factor("Drama", levels = c("Drama", "Action", "Crime")) # aqui asinamos el factor "Drama" que tiene 3 niveles, Drama, Action y Crime.
genero_pelicula # El factor tiene que ser un objeto contenido en los nivels, ya que si no esta, va a salir NA

#si no se escribe nada, los niveles no tienen orde, pero si se quiere, se puede usar "ordered=", para decirle a R que los niveles tienen un orden (empezando desde los menores en la izquierda)

levels(genero_pelicula) # para ver los niveles de la variable, en este caso serian los que pusimos en la funcion facotr()




#Ejercicio 2
#Cree y manipule diferentes estructuras de datos: vectores, matrices, listas, y dataframes.
#Para la manipulación deberá documentar cambios específicos que recibirán las
#estructuras de datos, ejemplo: se cambiará el valor del vector en la posición N del entero 5
#al entero 10, o bien la posición específica en la matriz o dataframe.


#Empezando con los vectores
vector_ratings = c(3,4.5,5,2,1) # creamos un vector de ratings con 5 ratings
vector_ratings #como hay un elemento con decimales en el veactor, los otros elementos que sean enteros salen con decimal .0, pero no afecta en nada

#tambien se pueden hacer vectores con elementos de tipo character
vector_genero = c("Drama","Romance","Action") #como con las variables de tipo de character, se tienen que poner entre comillas dobles o simples
vector_genero

#para la manipualcion de elementos en un vector, podemor usar [], por ejemplo

vector_ratings[3] = 4 # con el vector que tenemos, usamos los [] para seleccionar el elemento que queres manipular
#en este caso queremos seleccionar el tercer elemento del vector y cambiarlo por un valor diferente (de 5 lo cambiamos a 4)
vector_ratings # en el caso que seleccionemos la posicion de un vector que no tenemos, por ejemplo, [7], nos da como resultado NA

#Para los dataframes
#Para crear un dataframe, usamos la funcion data.frame()

data_frame_pelis = data.frame(dataset) #aplicando la funcion, creamos el dataframe con base en el dataset nuestro
data_frame_pelis

# En este caso, como el dataset ya estaba ordenado, no se notan diferencias, sin embargo, tambien se podria haber hecho de la siguiente forma.
#Empezamos creando las variables y datos que van a conformar nuestras columnas y filas
#Si nos fijamos en el dataframe que tenemos ahora, para las primeras filas (titulos), queremos que este el nombre o titulo de la pelicula, seguido del rating y luego el genero.
#Empezamos creando los vectores entonces:

title = c("Frozen","Terminator","Avengers") #creamos el vector titulo el cual contiene 3 peliculas
rating = c(2,3,5) # creamos el vector rating, igual con 3 ratings porque tiene que tener la misma cantidad tanto de ratings como de pleiculas y generos
genero = c("Animado","Accion","Accion") #creamos el vector genero

#Luego de crear nuestros vectores, hacemos nuestro dataframe con la funcion data.frame()

df_peli = data.frame(title,rating,genero) # se le puede agregar , "stringsAsFactors = FALSE", el cual evita que R convierta textos a factores automáticamente
df_peli

#Para manipular un data frame, existen funciones como summary(),str() , head()
head(df_peli) # Imprime las 5 primeras filas.
summary(df_peli) #Devuelve un resumen de los datos.
str(df_peli) # Muestra la estructura interna.

#Tambien funciona lo de cambiar elementos con los [] como en los vectores
df_peli[1, "rating"] <- 5 # Cambiamos el rating de "frozen" a 5
df_peli[1,] # O seleccionar una sola fila o culumna (en este caso fila) 
df_peli[,1] #selecciona la primera columna

df_peli$año <- c(1999, 1997, 2001) # Tambien podemos agregar una nueva columna

#Para el caso de las matrices, se usa la funcion matrix()

#digamos que creamos una matriz con el rating de las peliculas y el precio de los tiquetes
matriz_peli = matrix(c(4, 1200, 5, 1500, 3, 900), 
                       nrow = 3, ncol = 2, byrow = TRUE) #se usa un vector para crear la matriz, este vector tiene los elementos de la matriz como tal.
#nrow son el numero de filas y ncol son el numero de columnas, el producto de estos dos tiene que se igual a la cantidad de elementos en el vector.

#El byrow= T o F significa que se va llenando por filas (en el caso que ponga TRUE) y en el caso de poner FALSE, se llenaria por columnas (pasa lo mismo si no se pone nada)
matriz_peli

#Para nombrar filas y columnas

rownames(matriz_peli) = c("Terminator", "Frozen", "Avengers") #tienen que tener la misma cantidad que las filas
colnames(matriz_peli) = c("rating","Precio") #tienen que tener la misma cantidad que las columnas

matriz_peli #matriz actualizada

#Para el caso de las listas, se usa la funcion list()

lista_peli <- list(
  nombre = "The Matrix",
  rating = 5,
  generos = c("Action", "Sci-Fi") #tambien se pueden incluir vectores
) 
lista_peli 

#Para acceder a algun elemento que esta en la lista y usar los []

lista_peli[1] #adentro va el numero del elemento que se busca



#Ejercicio 3
#Utilice estructuras de control condicionales (if, else, else if) para manejar diferentes escenarios con datos numéricos y textuales generados aleatoriamente en el caso de los
#números y de forma manual para los datos textuales. Puede reutilizar estructuras de datos creadas anteriormente, pero aclare su reutilización en comentarios e imprima nuevamente la estructura de datos.


#Como nos pide usar datos generados de forma aleatoria, usaremos una semilla con la funcion set.seed() y la funcion sample() para elegir ciertos valores de la semiulla

set.seed(37) # Fijamos una semilla para que los resultados sean reproducibles
rating_simulado <- sample(1:5, 1)  # Genera un número aleatorio del 1 al 5
rating_simulado
#Aclaracion, esta estructura fue hecha con base en los ejemplos practicados en clases

if(rating_simulado >= 4){
  print("La pelicula es recomendada") #usando if, decimos que si la pelicula tiene un rating igual o mayor a 4, que imprima el mensaje "la pelicula es recomendada"
} else if (rating_simulado == 3){ #usando else if, decimos que si no se cumple la primera condicion, pero se cumple que la pelicula tiene un rating igual a 3, que imprima el mensaje "la pelicula es regular"
  print("La pelicula es regular")
} else{ # Y al usar else, si no se cumplen ninguna de las anteriores, que se imprima "La pelicula no es recomendada"
  print("La pelicula no es recomendada")
}

cat("Rating",rating_simulado, sep = ":") # la funcion cat es una alternativa de la funcion print()

#Para los datos textuales

genero = "comedy" #cremos una variable de tipo character

if (genero == "action") { #si la variable genero es igual a action
  "Pelicula llena de peleas" #imprime la oracion "Pelicula llena de peleas"
} else if (genero == "drama") { #si no es de action pero es de drama
  print("Una historia interesante") #imprime la oracion "Una historia interesante"
} else if (genero == "comedy") { #si la variable es "comedy"
  print("Da mucha risa") #entonces imprime la oracion "Da mucha risa"
} else { #Y si no es ninguna de esas
  print("Genero no conocido") #imprime la oracion "genero no conocido"
}

cat("Genero",genero, sep = ":") #Imprime el resultado con cat(), con separacion ":"

#Y para unir ambas 

if (genero == "comedy" & rating_simulado >= 4) { #si es de genero comedi y tiene un rating igual o mayor a 4
  cat("pelicula de comedia recomendado") #se imrpime la oracion "pelicula de comedia recomendado"
} else { #si no se cumple la primera condicion (en este caso son 2)
  cat("No cumple los requisitos para ser recomendada") #entonces imprime esto
}



#Ejercicio 4
#Implemente bucles FOR y WHILE para realizar cálculos repetitivos de orden estadístico y con manejo de estructuras de datos. Incluya estructuras de control condicionales dentro de las iterativas también.

#Priemro creamos las varaibles que vamos a usar
ratings= c(1,5,4,2,4.5,3) #ratings aleatorios

contador_ratings = 0 #un contador que inicie en 0

for (i in 1:length (ratings )) { # va recorriendo todas las posiciones del vector ratings uno por uno
  if (ratings[i] >= 4){ #si el numero en el vector ratings es mayor o igual 4
    contador_ratings = contador_ratings +1 #luego del if, se va actualizando el contador, sumando 1 a la posicion
  }
  print(contador_ratings)# imprimir el resultado, en total, hay 3 ratings mayores a 4, entonces el numero final del contador deberia de ser 3
}

#Para el caso de los bucles while
#Para los bucles tambien se pueden usar las funciones de next (salta el resto del código en la iteración actual y pasa a la siguiente iteración.) y break( detiene el bucle)

#pongamos de caso que quiero crear un bucle en el que se cuenten la cantidad de ratings de peliculas para que la suma de esta sea mayor que 20

suma_total = 0 #variable del acumulador
conteo = 0 #variable del contador de peliculas   
limite_pelis = 10 #hacemos una variable para luego usar break, digamos que se corte el bucle cuando llega a 10 ratings

while (suma_total < 20) { #mienstras que la suma total de ratings sea menor a 20, el bucle sigue
  nuevo_rating = sample(1:5, 1)  # Genera ratings aleatorios del 1 al 5
  if (nuevo_rating == 1 | nuevo_rating == 2){ #indica que si el rating aleatorio es igual a 1 o a 2, que se lo salte (no hace nada)
    next 
  }
  suma_total = suma_total + nuevo_rating # Y se le va sumando el rating aleatorio que se genera a la suma total
  conteo = conteo + 1 # le va sumando + 1 al contador
 if(conteo >= limite_pelis){ # si la cantidad de ratings de peliculas llega a 10, se detiene el bucle
  break
 }
}
print(suma_total)
print(conteo)



#Ejercicio 5
#Aplique las funciones de la familia apply (apply, lapply, sapply, tapply) sobre un conjunto de datos para simplificar operaciones complejas. Estos conjuntos deberán ser diferentes a
#los utilizados anteriormente y tener al menos 1000 elementos como mínimo.

#Primero definimos una matriz

matriz_ratings = as.matrix(dataset$Rating) #convertimos solamente la columna de rating en una matriz
#como estamos trabajando con matrices, ocupamos crear otra columna para que no sea solo un vector
matriz_ratings = cbind(matriz_ratings,matriz_ratings) #usamos la funcion cbind(para crear columnas), en este caso solamente repetimos la otra columna para poder tener columnas y filas
head(matriz_ratings) #revisamos la matriz para que no hayan problemas

colnames(matriz_ratings) = c("critico_1","critico_2") #se le pueden dar nombres a las columnas, auqnue tengan los mismos datos

#Empezando con la funcion apply

promedio_apply = apply(matriz_ratings, 1, mean) #se le calcula el promedio entre los 2 criticos, como se escribio 1, se le aplica la funcion por filas, si se escribia 2, seria por columnas
promedio_apply #Nota: en este caso, como las columnas son iguales, los promedios entre ambos van a dar el mismo numero

#siguiendo con la funcion lapply

#Para usar la funcion lapply, ocupamos crear una lista primero

lista_por_gen= split(dataset$Rating,dataset$Genre) #separamos los ratings por genero
lista_por_gen

lista_tapply = lapply(lista_por_gen, mean)  # sacamos los promedios de los ratings segun su genero ( devuelve una lista)
lista_tapply 
str(lista_tapply) #revisamos nuestra lista 

#En el caso de sapply

promedio_sapply = sapply(lista_por_gen,mean) #La unica diferencia es que le tira los resultados como un solo vector ( como una fila)
print(promedio_sapply)

#En el caso de tapply

promedio_tapply = tapply(dataset$Rating, dataset$Genre, mean) #tapply de aplica una funcion a un vector agrupado por un factor
promedio_tapply

#Al estar aplicando la misma funcion a los mismos datos, todas las variebles de la funccion apply dan lo mismo, solamente que algunas salen de forma diferente





#Ejercicio 6
#Escriba una función personalizada que realice una operación estadística específica (p.ej., calcular el rango intercuartílico) y aplíquela a un dataset del tipo de estructura que usted prefiera (lista, vector, etc.). La operación estadística debe ser de un nivel complejo, no
#cosas básicas como sacar un promedio, desviación estándar, etc.

#Creamos una funcion para calcular el rango intercuartil (cuartil 3 - cuartil 1)
calcular_RIQ = function(variable_numeric){ #usando la funcion quantile de R para calcular cuantiles
  if(is.numeric(variable_numeric)){ # si el vector es numerico, aplicar los siguientes pasos
    q1=as.numeric(quantile(variable_numeric,0.25, na.rm = T)) #calcular el cuartil 1
    q3=as.numeric(quantile(variable_numeric,0.75,na.rm = T)) #calcular el cuartil 3
    RIQ = q3-q1
  } else{ #en el caso que no sean numericos, devolver "NA"
    return(NA)
  }
  
}

RIQ = calcular_RIQ(dataset$Rating) #aplicar la funcion a los datos que quiere
RIQ

#Ejercicio 7
#Lea datos de un archivo .csv y escriba esos datos procesados en un archivo .txt, mostrando comprensión en el manejo de diferentes formatos de datos tanto de forma directa (con localización específica del folder donde estarán los archivos) así como la asignación de un 

head(dataset) #como nuestro dataset ya era un archivo csv, solamente lo revisamos

dataset$Title = tolower(dataset$Title) #como procesamiento de datos, cambiamos todos los nombres de los titulos de peliculas (en mayuscula) a nombres en minuscula
dataset$Title #Revisamos que los cambios se hayan cumplido

getwd() #Revisamos que directorio tenemos
dir.exists("C:/Users/justin/Documents/R") #Revisamos que este exista 
setwd("C:/Users/justin/Documents/R") #Fijamos el directorio de trabajo que necesitamos

write.table(dataset, "dataset_minuscula_pelis.txt", row.names = F, sep = ",") #Creamos un archivo llamado dataset_minuscula_pelis.txt con los datos procesados
pelis= read.table("C:/Users/justin/Documents/R/dataset_minuscula_pelis.txt", header = T, sep = ",") #Lee el archivo txt que se guardo y lo carga de nuevo como un dataframe
pelis #Revisamos como se ve el nuevo dataset con las minusculas



#Ejercicio 8
#Utiliza funciones de dplyr para filtrar, seleccionar, y transformar datos en un dataframe; use ggplot2 de tidyverse para visualizar los resultados de forma general.

#Primero descagamos los paquetes de R que necesitamos

install.packages("dplyr")
library(dplyr)
install.packages("tidyverse")
library(tidyverse)

#Para la parte de manipulacion de datos en un dataframe

pelis_recomendadas = dataset %>% #Del dataset, filtramos por rating, se filtran solo las filas que tengan un rating igual o mayor a 4
  filter(Rating >= 4)
pelis_recomendadas

pelis_recomendadas_2 = dataset %>% #Del dataset, se seleccionan solamente las columnas, de Title, Rating y Genre (como el dataset solamente tiene esas, no provoca ningun cambio)
  select(Title,Rating,Genre)
pelis_recomendadas_2

pelis_recomendadas_3 = pelis_recomendadas_2 %>% #Con mutate(), creamos una nueva columna llamada categoria, en donde, dependiendo del rating, se le da una categoria
  mutate(Category = case_when (Rating == 5 ~ "Muy recomendada",
                               Rating == 4 ~ "Recomendada",
                               Rating == 3 ~ "Regular",
                               Rating == 2  | 1 ~ "No recomendada")
         )
pelis_recomendadas_3


#Para la creacion de un grafico de las peliculas recomendadas con ggplot2 de tidyverse

grafico_1 = ggplot(pelis_recomendadas, aes(x = Genre))+ #Creamos un grafico con los datos de pelis_recomendadas y en el eje x ponemos los generos
  geom_bar(fill = "skyblue")+ # ponemos que el color de las barras sea de azul cielo
  labs(title = "Cantidad de Películas Recomendadas por Género", x = "Genero", y = "Cantidad peliculas")+ #con labs ponemos el nombre de los titulos, tanto com del grafico como del eje x & y
  theme_dark() #elegimos un tema para el grafico

grafico_1




#Ejercicio 9
#Emplee tidyr para pivotear y depivotear un dataframe, manejando datos "tidy".

#install.packages("tidyr")
#library (tidyr)
#Como tidyr es parte del paquete tidyverse, no hay que cargarlo

resumen_pelis = dataset%>% #Creamos un resumen del promedio de los ratings ordenados por el genero
  group_by(Genre) %>%
  summarise(Promedio_rating = mean(Rating))
resumen_pelis

#Ahora para pivotear, para hacer que cada genero sea una columna
#Como en este caso queremos cambiar la anchura por largo primero, vamos a empezar usando pivot_wider()

pelis_ancho = resumen_pelis %>% #Seleccionamos el nuevo dataset
  pivot_wider(names_from = Genre, #Escrbimos lo que queremos convertir en columnas
              values_from = Promedio_rating) #Escribimos lo que queremos que este adentro de las columnas

pelis_ancho


pelis_largo = pelis_ancho %>%
  pivot_longer(
    cols = c("Action", "Animation", "Crime", "Drama", "Fantasy", "Romance", "Sci-Fi"), #Quitamos las columnas para luego pasarla a la parte de filas
    names_to = "Genre", #va a ser la columna para los nombres
    values_to = "Promedio_rating" #va a ser la columna para los valores
  )

pelis_largo



#Ejercicio 10
#Manipula y calcula diferencias de tiempo utilizando lubridate, y demuestra cómo se pueden usar estas técnicas en análisis de series temporales.


install.packages("lubridate")
library(lubridate)


set.seed(98) #Fijamos una semilla para usar sample
años_aleatorios= sample(1980:2020, nrow(dataset), replace = T) #Con sample vamos creando años, meses y dias aleatorios, con la cantidad de filas que tiene el dataset y con reemplazo
meses_aleatorios= sample(1:12, nrow(dataset), replace = T)
dias_aleatorios= sample(1:30, nrow(dataset), replace = T)


#Creamos una nueva columna con las varaibles anteriores para tener una fecha de estreno aleatoria para cada pelicula

dataset = dataset %>% #usamos as.date para convertirlo en una fecha y pasteo para unirlo con los dias y meses
  mutate( fecha_estreno = as.Date(paste0(años_aleatorios,"-",meses_aleatorios,"-",dias_aleatorios)))

head(dataset) #Revisamos el nuevo dataset con la nueva columna

dataset = dataset %>% #calculamos cuantos años ha pasado desde que se estreno cada pelicula
  mutate(año_desde_estreno = as.integer(interval(dataset$fecha_estreno,today()) / years(1))) #Con mutate, creamos una nuevacolumna y usamos la funcion interval de lubridate para calcular al diferencia entre dos fechas
# En este caso calculamos la diferencia entre la fecha de estreno de la pelicula con la fecha actual y con years (1), hacemos que se trabaje solamente con años
# Se le agrega as.integer para que los años salgan como enteros


#podemos usar la funcion year() para seleccionar solamente los años, aunque no cambia mucho porque nuestros meses y dias son fijos
dataset = dataset %>%
  mutate(año_estreno = year(fecha_estreno)) #de igual forma con los meses y dias

dataset = dataset %>%
  mutate(mes_estreno = month(fecha_estreno)) 

dataset = dataset %>%
  mutate(dia_estreno = day(fecha_estreno)) 

head(dataset) #revisamos el dataset con las 3 columnas nuevas











