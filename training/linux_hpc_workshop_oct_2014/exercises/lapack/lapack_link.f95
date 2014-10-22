program lapack_abc

  integer, parameter :: ndim=10
  double precision :: x(ndim)
  double precision :: y(ndim)
  double precision :: alpha=1
  integer :: i

  do i=1,ndim
      x(i) = 1
      y(i) = 2
  enddo

  call daxpy(ndim, alpha, x, 0, y, 0)


  print*, "c=a+b using lapack"
end program lapack_abc

