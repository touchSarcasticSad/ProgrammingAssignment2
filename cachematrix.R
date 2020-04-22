## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix creates a list containing a function to
## 1. set matrix
## 2. get matrix
## 3. set inverted matrix
## 4. get inverted matrix
makeCacheMatrix <- function(x = matrix()) {
    invertedMatrix <- NULL
    set <- function(y) {
        x <<- y
        invertedMatrix <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) invertedMatrix <<- inverse
    getinverse <- function() invertedMatrix
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inverse <- x$getinverse() # Check if the inverse exists in cache
    if(!is.null(inv)) { # Cache exists return from that
        message("getting cached data.")
        return(inverse)
    }
    data <- x$get() # Get the og matrix
    inverse <- solve(data) # Find inverse
    x$setinverse(inverse) # Cache the inverse matrix
    inverse # Return the inverse matrix
}
