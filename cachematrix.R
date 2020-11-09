## These functions should inverse the matrix using cash

## makeCacheMatrix creates a "matrix" object with cash opportunity

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<- fuction (y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<- function(matrix) m<<-mean
  getmatrix<-function() m
  list(set=set, get=get, 
       setmatrix= setmatrix, getmatrix=getmatrix)

}


## cacheSolve function calculates the inversion of special matrix,
##in case if it was calculated the function take the inversion from 
## cash
cacheSolve <- function(x, ...) {
       m<-x$getmatrix()
       if(!is.null(m)){
         message("getting cached data")
         return(m)
       }
       data<-x$get()
       m<solve(matrix, ...)
       x$setmatrix(m)
       m
}
