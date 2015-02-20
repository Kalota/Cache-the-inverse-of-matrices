## This R function is able to cache the inverse of a matrix 
## which is a potentially time-consuming computation. When it is 
## needed again, it can be looked up in the cache rather than recomputed.

## This function is able to cache the inverse of a matrix.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- inverse inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get, 
                setinverse = setinverse, 
                getinverse = getinverse)
}


## This function gives the inverse of a matrix, but first it looks up in the
## makeCacheMatrix for it. If there is a result, this result is only taken
## and returned with the message `getting cached data`. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}
