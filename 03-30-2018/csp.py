from functools import reduce
n, k = map(lambda x: int(x), input().split())
numbers = list(map(lambda x: int(x), input().split()))
print(reduce((lambda x, y: x + y), map(lambda val: 1 if (val % k == 0) else 0, [numbers[i]+numbers[j] for j in range(1,n) for i in range(0, j) if i < j])))
