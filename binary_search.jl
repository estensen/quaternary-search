function binarysearch(A, left, right, value)
	if right < left
		return -1
	else
		middle = div(right-left, 2) + left
		if A[middle] == value
			return middle
		elseif A[middle] > value
			return binarysearch(A, left, middle-1, value)
		else
			return binarysearch(A, middle+1, right, value)
		end
	end
	return -1
end

A = [1, 3, 4, 4, 6, 7, 9, 9, 9, 10]
value = 3

println(A)
println(binarysearch(A, 1, length(A), value))
