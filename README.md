# cholesky-py-mkl-parallel

Lightweight F2PY implementation of Cholesky solver that compiles with parallel MKL. The idea is to save everyone the hasse of recompiling SciPy linked to parallel MKL. :)

### Installation:

First, make sure to source your intel compiler environment

    source ~/intel/bin/compilervars.sh intel64

NOTE: Currently only tested with Intel® Parallel Studio XE 2017.

Then compile the library:

    make

The link line might be different for other than the Intel2017 compiler. If `make` works, the library should be properly linked to parallel MKL. Let me know if it doesn't work with your Intel compilers. 

### Usage:
You can control how many cores the library uses by exporting (e.g. for 4 cores):

    export MKL_NUM_THREADS=4

The code should now be ready to use:

    from cho_solver import cho_solver
    
    ...
    
    # Solve A x = y
    x = cho_solve(A, y)

###  The end:
Happy cholesky'ing!
