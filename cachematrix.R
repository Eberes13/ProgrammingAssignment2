  ## This function get a matrix and by the methods "getInverse/setInverse" changes a matrix
  makeCacheMatrix <- function(x = matrix()) {
    ##Here I initialized a "teris" and set its value ti NULL
    teris <- NULL
    ##There I used a sample code from Coursera, and changed a "mean to inverse"
    set <- function(y){
      x <<- y
      teris <<- NULL
    }
    get <- function()x
    setInverse <- function(inverse) teris <<- inverse
    getInverse <- function() teris 
    list(set = set, get = get, 
         setInverse = setInverse, 
         getInverse = getInverse)
  }
  
  
  ## So, there we can cache solve a matrix
  ##this method get a matrix and get a cached data 
  
  cacheSolve <- function(x, ...) {
    
    teris <- x$getInverse()
    if(!is.null(teris)){
      message("collect cached data")
      return(teris)
    }
    ##There a similar code to Coursera, and after these operations I return a "teris" at the end.
    mat <- x$get()s
    teris <- solve(mat,...)
    ##Here the set Inverse
    x$setInverse(teris)
    teris
  }