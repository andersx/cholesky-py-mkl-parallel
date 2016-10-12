all: intel-openmp-mkl

intel-openmp-mkl:
	f2py -c -m fcho_solve fcho_solve.f90 --fcompiler=intelem --f90flags='-qopenmp -O3 -I${MKLROOT}/include' -liomp5  -L${MKLROOT}/lib/intel64 -lmkl_intel_lp64 -lmkl_core -lmkl_intel_thread -lpthread -lm -ldl -lmkl_avx2 -lmkl_def

clean:
	rm *.so *.pyc
