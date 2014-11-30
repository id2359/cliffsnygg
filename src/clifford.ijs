NB. primitive operations
eq =: 1&=@*/@,@([=])
mul =: +/ . *			NB. Matrix multiplcation
M =: (4 4)&$ @ ]		NB. Reshape to a 4x4 matrix
NB. constants
I  =: = i. 4
zero =: 0 * I

index =: 4 : 0
(y-1){x
)

first=: index&1
second=: index&2
third=: index&3


NB. 1st Representation:  ( of a vector in 3-space via)  4x4 matrices obeying the Clifford algebra 
e1 =: M  0 0 0 1    0 0 1 0    0 1 0 0     1 0 0 0 
e2 =: M  0 0 1 0    0 0 0 _1   1 0 0 0     0 _1 0 0
e3 =: M  1 0 0 0    0 1 0 0    0 0 _1 0    0 0 0 _1

vec =: 3 : 0
    NB. form the Clifford representation of the vector ae1 + be2 + ce3:
    'a b c'=. y
    (a * e1 ) + (b * e2) + (c * e3)
)

scalarprod =: 4 : 0
    NB. x and y are clifford vectors
    0.5 * ( (x mul y) + (y mul x) )
)

wedge =: 4 : 0
    0.5 * ( (x mul y) - (y mul x) )
)

NB. Some multivectors
e12 =: e1 mul e2
e21 =: e2 mul e1
e13 =: e1 mul e3
e31 =: e3 mul e1
e23 =: e2 mul e3
e32 =: e3 mul e2
e123 =: e1 mul e2 mul e3
e132 =: e1 mul e3 mul e2
e321 =: e3 mul e2 mul e1
e213 =: e2 mul e1 mul e3
e231 =: e2 mul e3 mul e1
e312 =: e3 mul e1 mul e2

NB. TODO 2nd Representation:  ( of a vector in 3-space via) 2x2 complex matrices obeying the Clifford algebra
 