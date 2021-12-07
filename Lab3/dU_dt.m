

function retval = dU_dt (A, U, y, m, c)
  dAy_b = zeros(6, 3);
  dAy_b(2, 1) = -y(1)/m(1);
  dAy_b(4,2) = -y(3)/m(2);
  dAy_b(6,2) = -y(3)/m(3);
  dAy_b(2,3) = (c(1)+c(2))*y(1)/m(1)^2 - c(2)*y(3)/m(1)^2;
  retval = A*U + dAy_b;
end
