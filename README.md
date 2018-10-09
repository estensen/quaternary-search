# quaternary-search

Quaternary search is like binary search, but divides the array into four parts instead of two. After evenly dividing the array, the three divisors are compared to the input value. If it matches the index is returned. If not the algorithm is recursively called on the subarray that contains the value.

## Time Complexity

Quaternary can seem faster than binary search, but is not because you do more comparisons per step.

Worst case counting comparisons binary search:

```
T(n) = T(n/2) + 2, T(1) = 1
```

Worst case counting comparisons for quaternary search:
```
T(n) = T(n/4) + 5, T(1) = 1
```

Time complexity for binary search:
```
2log_2(n) + O(1) = 2log(n) / log(2)
```

Time complexity for quaternary search:
```
5log_4(n) + O(1) = 5log(n) / log(4) = 5log(n) / 2 log(2)
```

Since n > 1 and 5/2 > 2 quaternary search does more comparisons in worst case
