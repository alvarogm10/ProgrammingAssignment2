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
		setmean = setmean,
		getmean = getmean)
}


## cacheSolve retrieves the value of the inverse 
##if it was calculated before with makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
