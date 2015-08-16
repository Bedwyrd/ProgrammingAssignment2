## cachemean is the original function that I use as a template for cacheInvMatrix
cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}

## cacheInvMatrix is the function used for caching inverse matrixes
cacheInvMatrix <- function(x, ...) {
  m <- x$getinverse()
  #Get cached value for the matrix's inverse, if it exists.
  if(!is.null(m)) {
    message("getting cached data")
    #return cached value as output and leave this function
    return(m)
  }
  #If value is not cached then calculate it and return the value
  data <- x$get()
  #solve command calculates the inverse of the given matrix 'data'
  m <- solve(data, ...)
  x$setinverse(m)
  m
}