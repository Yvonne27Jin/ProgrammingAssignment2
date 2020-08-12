## Put comments here that give an overall description of what your functions do

# This is a pair of functions that cache the inverse of a matrix.


## Write a short comment describing this function
# This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  # set the value of the matrix
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  # get the value of the matrix
  get <- function()x
  # set the value of the inverse
  setInverse <- function(inverse) m <<- inverse
  # get the value of the inverse
  getInverse <- function() m 
  
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function
#  This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  # return the inverse if already calculated
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  # otherwise calculate the inverse
  my_matrix <- x$get()
  m <- solve(my_matrix,...) #Computing the inverse
  x$setInverse(m)
  m
}


