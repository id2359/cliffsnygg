load 'src/clifford.ijs'

eq =: 1&=@*/@,@([=])
zero =: 0 * I

test_square_of_element_is_identity =: 3 : 0
    assert (e1 mul e1) eq  I
	assert (e2 mul e2) eq  I
	assert (e3 mul e3) eq  I
)

test_anticommutation =: 3 : 0
    assert (e1 mul e2) eq _1 * (e2 mul e1)
    assert (e2 mul e3) eq _1 * (e3 mul e2)
  	assert (e3 mul e1) eq _1 * (e1 mul e3)
)

test_scalarproduct =: 3 : 0
    a =. 1 2 3
    b =. 10 20 30
    assert ((a mul b) * I) eq ((vec a) scalarprod (vec b))
)

test_wedge_product =: 3 : 0
    a =. vec 1 2 3
	b =. vec 10 20 20
    assert ( a wedge b ) eq _1 * ( b wedge a)
	assert ( a wedge a ) eq zero
)

