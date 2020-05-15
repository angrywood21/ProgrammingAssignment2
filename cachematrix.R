## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    
    ## Set the matrix
    set <- function( matrix ) {
        m <<- matrix
        i <<- NULL
    }
    
    ## Get the matrix
    get <- function() {
        m
    }
    
    ## Set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }
    
    ## Get the inverse of the matrix
    getInverse <- function() {
        i
    }
    
    ## Return a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of i
    m <- x$getInverse()
    
    ## Return if it's already set
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    
    ## Get the matrix from object
    data <- x$get()
    
    ## Calculate the inverse of the matrix
    m <- solve(data) %*% data
    
    ## Set the inverse to object
    x$setInverse(m)
    
    ## Return the matrix
    m
        ## Return a matrix that is the inverse of 'x'
}
