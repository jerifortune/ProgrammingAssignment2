##Assignment: Caching the Inverse of a Matrix

## Function to create a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
 
}
get<-function() x
setmatrix<-function(solve) j<<- solve
getmatrix<-function() j
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

## Function that computes the inverse. If the inverse has already been calculated ## (and the matrix has not changed),then the cachesolve should retrieve the inverse ## from the cach.

cacheSolve <- function(x=matrix(), ...) {
    j<-x$getmatrix()
    if(!is.null(j)){
      message("getting cached data")
      return(j)
    }
    matrix<-x$get()
    j<-solve(matrix, ...)
    x$setmatrix(j)
    j
}