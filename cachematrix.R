     ## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function is to invert the matrix
makeCacheMatrix <- function(x = matrix()) {
    i<<-NULL
    set<-function(y){
      x<<-y
      i<<-NULL
    }
    get<-function()x
    setinvertmatrix <- function(invertmatrix) i <<- invertmatrix
    getinvertmatrix <- function() i
    list(set = set, get = get,
         setinvertmatrix = setinvertmatrix,
         getinvertmatrix = getinvertmatrix)
}


## Write a short comment describing this function

cacheMatrix <- function(x, ...){
  i<-x$getinvertmatrix()
  if (!is.null(i)){
    message("Getting cached data")
    return(i)
  }
  data <- x$get()
  i<- solve(data,...)
  x$setinvertmatrix(i)
  i
  
}
        ## Return a matrix that is the inverse of 'x'

