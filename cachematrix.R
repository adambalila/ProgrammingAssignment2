## Creating a matrix which contains the functions:
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse matrix
## get the value of the inverse matrix


makeCacheMatrix <- function(x = matrix()) {	

    i <- NULL
	set <- function( matrix ) {
            X <<- matrix
            i <<- NULL
    }
    
    get <- function() {
    	X
    }

    setInverse <- function(inverse) {
        i <<- inverse
    }

    getInverse <- function() {
        i
    }

    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
	
}


## Calculating the inverse of the matrix created above
## Using cache if it is available 

cacheSolve <- function(x, ...) {
    
	i <- x$getinverse()
	
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
	
    y <- x$get()
	
    i <- solve(y, ...)
	
    x$setinverse(i)
	
    i	
}
