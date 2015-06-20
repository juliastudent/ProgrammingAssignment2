## juliastudent prog assign 2!!

##makeCacheMatrix will store the matrix and provide functions
#to get the value, set the value, and get the inverse using solve.
##Then cacheSolve looks to see if there's already a value
##if not it will set the inverse
##if so, it will simple return it, instead of performing the calc again

##this will hold the cache and allow functions to access of set it

makeCacheMatrix <- function(x = matrix()) {
      m<-NULL
      set <- function (y){
            x<<- y
            m<<-NULL
      }
      get <- function() x
      doinverse <- function(solve) {
            m <<-solve
      }
      getinverse <- function() {
            m
      }
      list(set = set, get = get, 
           doinverse = doinverse,
           getinverse = getinverse)
}


##cacheSolve will first see if a cached inverse can be leveraged
##if not it will set the inverse and put it in cache
##if so it will use that value and not bother with recaslculating

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      
      m <- x$getinverse()
      
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data)
      x$getinverse()
      m
      
      
}
