FC=gfortran
FFLAGS=-g
LDFALGS=-L/usr/lib
LIBS=-llapack

lapack:lapack.o
	$(FC) $(LDFALGS) -o lapack $(LIBS)
lapack.o:lapack.f95
	$(FC) $(FFLAGS) -c lapack.f95
