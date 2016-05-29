## This function creates inverse of cache matrix
## functions do

## Function template to create cache matrix

makeCacheMatrix <- function(x = matrix()) {


  invr <- NULL
  
  set <- function(argY){
    
     x <<- argY
     invr <<- NULL
  }
  
  get <- function() x
  
  setInverse <- function(inverse){
     invr <<- inverse
  }
  getInverse <- function() invr
  
  list(get=get,set=set,getInverse=getInverse,setInverse=setInverse)

}


## function to create the inverse of matix from cahce

cacheSolve <- function(x, ...) {
        
        mydata <- mtFunc$getInverse()
	    
	    if (!is.null(mydata)) {
	       print("Getting the inverse matrix previously cached")
	       mydata
	    } 
	    
	    data <- mtFunc$get()
	    mydata <- solve(data,...)
	    ## Return a matrix that is the inverse of 'x'
            mtFunc$setInverse(mydata)
}
