## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix return list of functions. it will store a matrix and a cache value of inverse of the matrix
## setMat     set the value of a matrix
## getMat      get the value of a matrix
## cacheInverse   get the cahced value (inverse of the matrix)
## getInverse     get the cahced value (inverse of the matrix)

makeCacheMatrix <- function(x = matrix()) {

    ## create a matrix object x 
        
        ## define the cache Che
        Che <- NULL
        setmat <- function(new_v) {
                x <<- new_v 
                
                Che <<- NULL 
        ##  Assign the input matix x to new_v then flush the cashe
        }
        getMat <- function() {
        
                 x
        }## return the stored matrix
        setinverse <- function(inv) { 
        
                Che <<- inv
                }## set cache Che to inv matrix x
        
        getinverse <- function() { 
                 Che
        } ## return the cached inverse of x
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 inverse <- y$getInverse()
        ## if a cached value exists return it Checking if there is a cashe value 
        ## if true then return
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        ## get to the matrix inverse and store in the cache
       
        data <- y$getMatrix()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        
        ## return  inverse
        inverse
        ## Return a matrix that is the inverse of 'x'
}
