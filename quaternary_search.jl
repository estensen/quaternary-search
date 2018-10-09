function quaternarysearch(A, value, left, right)
	while right >= 1
		p1 = left + div((right - left), 4)
		p2 = left + div((right - left), 2)
		p3 = left + 3 * div((right - left), 4)
		if A[p1] == value
			return p1
		elseif A[p3] == value
			return p3
		elseif A[p2] > value
			return quaternarysearch(A, value, left, p1-1)
		elseif A[p1] > value
			return quaternarysearch(A, value, p1+1, p2-1)
		elseif A[p3] > value > A[p2]
			return quaternarysearch(A, value, p2+1, p3-1)
		else
			return quaternarysearch(A, value, p3+1, right)
		end
	end
	return -1
end

A = [1, 3, 4, 4, 6, 7, 9, 9, 9, 10]
value = 3

println(A)
println(quaternarysearch(A, value, 1, length(A)))
