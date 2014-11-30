load 'src/clifford.ijs'

test_square_of_element_is_identity =: 3 : 0
    assert (e1 mul e1) =  I
	assert (e2 mul e2) =  I
	assert (e3 mul e3) =  I
)

test_anticommutation =: 3 : 0
    assert (e1 mul e2) = _1 * (e2 mul e1)
)

