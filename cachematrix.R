## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This in a function which returns the functions used to manipulate a matrix
makeCacheMatrix <- function(x = matrix()) {
        invM <- NULL
        set <- function(y) {
          x <<- y
          invM <<-NULL
        }
        get <- function() x
        setinverseM <- function (inverse) invM <<-inverse
        getinverseM <- function() invM
        list(set=set, get=get, setinvserveM=setinverseM, getinverseM=getinverseM)
}

## Write a short comment describing this function

## This is a function which calculates the inverse of a given matrix 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    invM <-x$getinverseM()
    if (!is.null(invM)) {
       message ("getting cached data.")
       return (invM)
    }
    data <-x$get()
    invM <-solve (data)
    x$setinverseM (invM)
    invM
}
