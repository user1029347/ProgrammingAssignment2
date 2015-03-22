## The goal of these two functions is to first create a matrix that can cache its
## inverse. Then solve the matrix by calculating the inverse. If the inverse has
## already been calculated, the function will return the inverse from the cache.
## The functions are set up this way to avoid any costly computations that go with
## solving for the inverse of a matrix.

## makeCacheMatrix creates a matrix that will cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {

}


## cacheSolve will solve for the inverse of a matrix, but check to see if the inverse
## has been calculated, and if so, will retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
