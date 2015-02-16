## makeCacheMatrix creates a set of functions. When its initialized
## the matrix that is given as a parameter is stored outside the function.
## some functions contain the option to get or set the inverted value. 

makeCacheMatrix <- function(x = matrix()) {
  # inverse is empty initially, original matrix is stored
  imat <<-  NULL
  omat <<- x
  # the set function stores the original matrix in the global variable 'omat'
  # the global variable 'imat' (inverse matrix) is empty
  set <- function(x) {
    omat <<- x
    imat <<- NULL
  }
  # get the original matrix 'omat'
  get <- function() omat
  # set the inverse to the global variable 'imat'
  setinverse <- function(inverse) imat <<- inverse
  # get the value of the global variable 'imat'
  getinverse <- function() imat
  #define functions
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function checks wether the inverted value is already calculated.
## if its not available it wil be calculated and stored outsite the function. 
## if its available the cached value will be used. 

cacheSolve <- function(x) {
  ## Return a matrix that is the inverse of 'x'
    
  # check if a value is available in cache
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached inverted matrix")
    return(m)
  }
  # when its not in cache get the data, calculate inverse and store the value
  # also return the value
  data <- x$get()
  if(!is.null(data)) {
    message("using cached matrix to calculate inversion")
    m <- solve(data)
  } else {
    m <- x
  }
  x$setinverse(m)
  x$getinverse()
}

# TO RUN SEE BELOW;
# initialize basic matrix
#testm <- matrix(1:10,nrow=2, ncol=2)
# initialize special matrix
#z <- makeCacheMatrix(testm)
# test cachematrix
#cacheSolve(z)
