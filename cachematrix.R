## Below are two functions that create a matrix and calculate its inverse.
## The inverse is then cached to that future computations of the same matrix
## aren't necessary, and the inverse can easily be retrieved.

## The following function creates a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL 
    set <- function(y){ 
        x <<- y 
        inverse <<- NULL 
    }
    get <- function()x 
    setinverse <- function(solve) inverse <<- solve 
    getinverse <- function() inverse 
    list(set = set, get = get, 
         setinverse = setinverse,
         getinverse = getinverse)
}


## The following function computes the inverse of the matrix calucated in makeCacheMatrix;
## if already calculted, the function below will retrieve the inverse from the cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
