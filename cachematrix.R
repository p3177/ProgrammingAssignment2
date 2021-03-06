## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function (matrix) {
  x <<- matrix
  i <<- NULL
  
}

get <- function() {
  x
}

setinv <- function(inverse) {
  i <<- inverse
}

getinv <- function() {
  i
}

list(set = set, get=get, setinv = setinv, getinv = getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  x1 <- x$getinv()
  
  if(!is.null(x1)) {
    message("getting cached data")
    return(x1)
  }
  data<-x$get()
  x1<-solve(data)
  x$setinv(x1)
  x1
}
