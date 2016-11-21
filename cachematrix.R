## Put comments here that give an overall description of what your
## functions do

##This is a part of Coursera : R Programming 
##Programming Assignment 2: Lexical Scoping by Ashwin Gajendra : a5hwink

## Write a short comment describing this function

## The below function creates a matrix object that will cache its inverse.
makeCacheMatrix <- function(x = matrix()) {

  # the variable cache holds the cached value or NULL if nothing is cached
  # initially nothing is cached so set it to NULL
  cache <- NULL
  
  # We initially store a matrix
  setMatrix <- function(newValue) {
    x <<- newValue
    # since the matrix is assigned a new value, we flush the cache
    cache <<- NULL
  }
  
  # This function returns the stored matrix
  getMatrix <- function() {
    x
  }
  
  # THis function will cache the given argument 
  cacheInverse <- function(solve) {
    cache <<- solve
  }
  
  # To get the cached value
  getInverse <- function() {
    cache
  }
  
  # return a list. Each named element of the list is a function
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)

}


## Write a short comment describing this function
##This function will create the inverse of the matrix obtained from the 
##makeCacheMatrix function above.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  # get the cached value
  inverse <- y$getInverse()
  
  # if a cached value exists return it
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  
  # otherwise get the matrix, caclulate the inverse and store it in
  # the cache
  data <- y$getMatrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
  
  # return the inverse
  inverse
}
