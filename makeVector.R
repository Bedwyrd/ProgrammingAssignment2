## makeVector is the original function that I use as a template for makeCacheMatrix
makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y 
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

## makeCacheMatrix is the function used for caching inverse matrixes
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  #set function sets the values of x and m in a different environment
  set <- function(y) {
    x <<- y 
    m <<- NULL
  }
  get <- function() x
  #setinverse is a function called m
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  #following functions are listed to be used
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}