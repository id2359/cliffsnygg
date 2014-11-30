NB. primitives
mul =: +/ . *			NB. Matrix multiplcation
M =: (4 4)&$ @ ]		NB. Reshape to a 4x4 matrix 


NB. 1st Representation:  ( of a vector in 3-space via)  4x4 matrices obeying the Clifford algebra 


e1 =: M  0 0 0 1    0 0 1 0    0 1 0 0     1 0 0 0 
e2 =: M  0 0 1 0    0 0 0 _1   1 0 0 0     0 _1 0 0
e3 =: M  1 0 0 0    0 1 0 0    0 0 _1 0    0 0 0 _1
I  =: = i. 4

NB. TODO Clifford Algebra Laws
NB. TODO 2nd Representation:  ( of a vector in 3-space via) 2x2 complex matrices obeying the Clifford algebra
