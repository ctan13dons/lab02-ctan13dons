.global quadratic_s

# quadratic_s calculates the quadratic equation where
#    a0 = x
#    a1 = a
#    a2 = b
#    a3 = c

quadratic_s:
	# Calculate ax^2
	mul t0, a1, a0
	mul t0, t0, a0

	# Calculate bx
	mul t1, a2, a0

	# Calculate full equation (ax^2 + bx + c)
	add t0, t0, t1
	add t0, t0, a3

	# Move the result to return reg
	mv a0, t0

    ret
