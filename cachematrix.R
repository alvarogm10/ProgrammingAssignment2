## This are cache functions in order to minimize calculation times
## makeCacheMatrix and cacheSolve

## makeCacheMatrix creates a matrix and save its inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinvr <- function(invr) m <<- invr
	getinvr <- function() m
	list(set = set, get = get, 
		setinvr = setinvr,
		getinvr = getinvr)
}


## cacheSolve retrieves the value of the inverse 
##if it was calculated before with makeCacheMatrix

cacheSolve <- function(x, ...) {
	m <- x$getinvr()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data)
	x$setinvr(m)
	m        
}
