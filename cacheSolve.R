cacheSolve <- function(x, ...) {
    ## The 2nd function below, cacheSolve calculates the Inverse of 
  ## the special "matrix" created with the 1st function.
    # It first checks to see if the Inverse has already been calculated
    # If so, it gets the inverse from the cache and skips the computation
    # Otherwise, it calculates the Inverse of the matrix and 
    # sets the value of the Inverse in the cache via the setInverse function.
  
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
