# Starting in the top left corner in a 20 by 20 grid, how many routes are there to the bottom right corner?

grid = [[int(n) for n in range(2, 22)] for m in range(2, 22)]
grid[1][0] = 3
for x in range(20):
  grid[x][0] = x + 2


for i in range(1, 20):
  for j in range(1, 20):
    grid[i][j] = grid[i][j - 1] + grid[i - 1][j]


print grid[19][19]