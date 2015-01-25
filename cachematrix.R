## Below are functions that create a matrix and calculate its inverse,
## which is cached for future retrivals, thus avoiding recomputations. 

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

## The following function computes the inverse of the matrix calucated in makeCacheMatrix.
## If already calculted, the function will retrieve the inverse from the cache. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)){
      message("getting cache data")
      return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...) 
  x$setinverse(inverse)
  inverse
}
