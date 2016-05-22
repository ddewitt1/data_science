## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Assume matrix can have an inverse
## 1. Set the matrix
## 2. get the matrix
## 3. Set the inverse
## 4. get the inverse
## This list is used as the input to cacheSolve()

makeCacheMatrix <- function(x = matrix()) {

  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function () x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  list (set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)){
    message("cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve (data, ...)
  x$setinv(inv)
  return(inv)
  
}
