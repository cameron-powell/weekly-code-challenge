n,k = map(int,input().split())
prices = list(map(int,input().split()))
difference = int(input()) - int((sum(prices) - prices[k])/2)
print("Bon Appetit" if difference==0 else difference)
