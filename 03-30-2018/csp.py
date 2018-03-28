from functools import reduce
n, k = map(lambda x: int(x), input().split())
numbers = list(map(lambda x: int(x), input().split()))
count = reduce((lambda x, y: x + y), map(lambda pair: 1 if ((pair[0] + pair[1]) % k == 0) else 0, [(numbers[i], numbers[j]) for j in range(1,n) for i in range(0, j) if i < j]))
print(count)
