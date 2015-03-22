## The goal of these two functions is to first create a matrix that can cache its
## inverse. Then solve the matrix by calculating the inverse. If the inverse has
## already been calculated, the function will return the inverse from the cache.
## The functions are set up this way to avoid any costly computations that go with
## solving for the inverse of a matrix.

## makeCacheMatrix creates a matrix that will cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## cacheSolve will solve for the inverse of a matrix. If the inverse has already been solved
## and the matrix hasn't changed, then the function will retrieve the inverse from the cache.x

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
