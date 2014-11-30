NB. primitives
mul =: +/ . *			NB. Matrix multiplcation
M =: (4 4)&$ @ ]		NB. Reshape to a 4x4 matrix 

NB. 1st Representation:  ( of a vector in 3-space via)  4x4 matrices obeying the Clifford algebra 
e1 =: M  0 0 0 1    0 0 1 0    0 1 0 0     1 0 0 0 
e2 =: M  0 0 1 0    0 0 0 _1   1 0 0 0     0 _1 0 0
e3 =: M  1 0 0 0    0 1 0 0    0 0 _1 0    0 0 0 _1
I  =: = i. 4

vec =: 3 : 0
    NB. form the Clifford representation of the vector ae1 + be2 + ce3:
    'a b c'=. y
    (a * e1 ) + (b * e2) + (c * e3)
)


NB. TODO 2nd Representation:  ( of a vector in 3-space via) 2x2 complex matrices obeying the Clifford algebra
 