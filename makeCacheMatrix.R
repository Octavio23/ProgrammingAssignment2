makeCacheMatrix <- function(x = numeric()) {
    ## Matrix inversion is usually a costly computation
    ## there may be some benefit to caching the inverse of a matrix 
    ## rather than compute it repeatedly 
    ##
    ## The following functions make a special matrix object
    ## which caches its inverse.
    ##
    ##
    ## The 1st function, makeCacheMatrix creates a special " Matrix " 
    ##  containing a function to
    # set the value of the Matrix
    # get the value of the Matrix
    # set the value of the Inverse
    # get the value of the Inverse
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}
