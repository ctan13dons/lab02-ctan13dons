.global add4_s

add4_s:
	# Args
	# a - a0, b - a1, c - a2, d - a3

    add t0, a0, a1
    add t0, t0, a2
    add t0, t0, a3

	# Move result to the return reg
    mv a0, t0 
    
    ret
