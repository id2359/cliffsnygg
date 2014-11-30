require 'general/unittest'
load 'src/clifford.ijs'

eq =: 1&=@*/@,@([=]) NB. matrix equality

test_L1 =: 3 : 0
NB. eiei = I
assert (e1 mul e1) =  I
assert (e2 mul e2) =  I
assert (e3 mul e3) =  I
)

