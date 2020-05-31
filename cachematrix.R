## Put comments here that give an overall description of what your
## functions do


## This function creates a special "matrix" object that can cache its inverse by - setting the value of matrix,
## getting the value of matrix, setting and getting value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x    
    setmatrix <- function(matrix) m <<- matrix
    getmatrix <- function() m
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)

}


## Function for computing inverse of the matrix returned by the above makeCacheMatrix function.


cacheSolve <- function(x, ...) {
        m <- x$getmatrix()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setmatrix(m)
    m   
        
}
