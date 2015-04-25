cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getinverse()
        if(!is.null(inverse)) { message("getting cached data")
                                return(inverse)
        }
        matrix.data <- x$get()
        inverse <- solve(matrix.data,...)
        x$setinverse(inverse)
        inverse
}