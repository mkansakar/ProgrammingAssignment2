# I beg you a pardon on this one. What I did here was just replaced the numeric() by matrix() and mean by solve :) in the code base below
# https://class.coursera.org/rprog-032/human_grading/view/courses/975106/assessments/3/submissions
# I seriously wanted to know hwo this code works. I tested it with a square matrix and it works file though.
makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        get<-function() x
		# below is a superassignment of inverse of matrix.
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        list(set=set, 
             get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}

cacheSolve <- function(x=matrix(), ...) {
        m<-x$getmatrix()
		#this checks if the inverse matrix "m" is already exist in global environment (if i understood it correctly)
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix<-x$get()
		#of course ?solve output with "..." operators.
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
}
