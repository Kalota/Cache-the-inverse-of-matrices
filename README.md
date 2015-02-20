# Cache-the-inverse-of-matrices
### This programming assignment consists in writing an R
function that is able to cache the inverse of a matrix, which is a potentially 
time-consuming computation.If the contents of a vector are not changing, 
it may make sense to cache the value of the inverse matrices so that when we need 
it again, it can be looked up in the cache rather than recomputed. 
There are written two functions: 

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
 "matrix" returned by `makeCacheMatrix` above. If the inverse has
 already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache. 

Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then
`solve(X)` returns its inverse. 

For this assignment, assume that the matrix supplied is always 
invertible.

