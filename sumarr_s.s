.global sumarr_s

# a[] - a0
# len - a1
# sum - t0
# i   - t1

sumarr_s:
    # Init sum to zero
    li t0, 0

    # Load the addy of the array t1 = arr
    mv t1, a0

    # Load the len t2 = len
    mv t2, a1

loop_start:
	lw t3, 0(t1)
	add t0, t0, t3
	addi t1, t1, 4
	addi t2, t2, -1
	bnez t2, loop_start

mv a0, t0
    ret
