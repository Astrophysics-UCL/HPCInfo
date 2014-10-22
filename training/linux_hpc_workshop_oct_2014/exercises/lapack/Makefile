FC=gfortran
FFLAGS=-g
LDFALGS=-L/usr/lib
LIBS=-llapack

lapack_link:lapack_link.o
	$(FC) $(LDFALGS) -o lapack_link lapack_link.o $(LIBS)
lapack_link.o:lapack_link.f95
	$(FC) $(FFLAGS) -c lapack_link.f95

clean:
	rm lapack_link *.o

