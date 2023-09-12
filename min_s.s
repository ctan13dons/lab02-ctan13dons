.global min_s

# min_s returns the smaller of a0 and a1 
# a - a0
# b - a1

min_s:
	# If a is larger, jump to the return
	# If b is larger, move b to the return register then return
    bge a0, a1, end
    mv a1, a0
    
end:
    ret
