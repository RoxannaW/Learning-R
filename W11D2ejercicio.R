#####################
# Ejercicio funcion #
#####################

# Una vez lo termines, subelo a tu github desde R y mandanos el link

### EJERCICIO 

# Crea una funcion llamada mi_cancion que genere la letra de la pegadiza cancion del enlace:
# https://www.letras.com/pinkfong/baby-shark/

# Encontraras respuesta a algunas de tus preguntas: 
# https://www.gastonsanchez.com/r4strings/formatting.html


mi_cancion <- function(){
  part_doo <- "doo doo doo doo doo doo"
  baby <- "Baby shark!"
  mommy <- "Mommy shark!"
  daddy <- "Daddy shark!"
  grandpa <- "Grandpa shark!"
  grandma <- "Grandma shark!"
  part_hunt <- "Let's go hunt!"
  part_run <- "Run away!"
  part_safe <- "Safe at last!"
  part_end <- "It’s the end!"
  
  for (i in 1:4) {
    cat("Baby shark, ", part_doo, sep="", "\n")
    if (i == 4) {
      cat(baby, "\n", "\n")
    }
    
  }
  
  for (i in 1:4) {
    cat("Mommy shark, ", part_doo, sep="", "\n")
    if (i == 4) {
      cat(mommy, "\n", "\n")
    }
  }
  
  for (i in 1:4) {
    cat("Daddy shark, ", part_doo, sep="", "\n")
    if (i == 4) {
      cat(daddy, "\n", "\n")
    }
  }
  
  for (i in 1:4) {
    cat("Grandma shark, ", part_doo, sep="", "\n")
    if (i == 4) {
      cat(grandma, "\n", "\n")
    }
  }
  
  for (i in 1:4) {
    cat("Grandpa shark, ", part_doo, sep="", "\n")
    if (i == 4) {
      cat(grandpa, "\n", "\n")
    }
  }
  
  for (i in 1:4) {
    cat("Let's go hunt, ", part_doo, sep="", "\n")
    if (i == 4) {
      cat(part_hunt, "\n", "\n")
    }
  }
  
  for (i in 1:4) {
    cat("Run away, ", part_doo, sep="", "\n")
    if (i == 4) {
      cat(part_hunt, "\n", "\n")
    }
  }
  
  for (i in 1:4) {
    cat("safe at last, ", part_doo, sep="", "\n")
    if (i == 4) {
      cat(part_safe, "\n", "\n")
    }
  }
  
  for (i in 1:4) {
    cat("It's the end, ", part_doo, sep="", "\n")
    if (i == 4) {
      cat(part_end, "\n")
    }
  }

  
}

mi_cancion()






### BONUS
# Crea una funcion llamada otra_cancion que genere la letra de esta otra cancion:
# https://es.wikipedia.org/wiki/99_Bottles_of_Beer
 
otra_cancion <- function() {
  n_bottles <- 99L
  
  while (n_bottles != 0) {
    
    cat(n_bottles, "bottles of beer on the wall, ", n_bottles,  "bottles of beer.
  Take one down, pass around you, ", (n_bottles - 1),  "bottles of beer on the wall ...", "\n")
    
    n_bottles <- n_bottles - 1
    
  }
  
  cat("No more beer bottles on the wall, no more beer bottles. 
Go to the store and buy some more, 99 bottles of beer on the wall ...")
  
  
}

otra_cancion()