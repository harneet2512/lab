#FIRST FUNCTION MAKE CACHE MATRIX :This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(z= matrix()) {
  t<- NULL
  set <- function(u){
    z<<-u
    t<<- NULL
  }
  get <- function()z
  setInverse <- function(inverse)t<<- inverse
  getInverse <- function()t 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

#SECOND FUNCTION CACHE SOLVE :This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(z, ...) {

  t<-z$getInverse()
  if(!is.null(t)){
    message("getting cached data")
    return(t)
  }
  mat <- z$get()
  t<- solve(mat,...)
  z$setInverse(t)
  t
}
