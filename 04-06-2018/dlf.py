import sys

n,k = map(int,input().split())
prices = list(map(int,input().split()))
cost = int(input())

fair = int((sum(prices) - prices[k])/2)
difference = cost - fair
print("Bon Appetit" if difference==0 else difference)
