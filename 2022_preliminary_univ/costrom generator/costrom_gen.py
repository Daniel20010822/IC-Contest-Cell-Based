import itertools as it
import random
# One could change your file name at line 7 -> "fname".
# One should also change the file name in tb.sv at line 5 to test your own costrom.

def writeFile(mincost, matchcount, cost):
    fname = 'my_costrom'
    with open(fname, 'w') as costrom:
        costrom.write("pattern 1\n")
        costrom.write(f"min_cost {mincost}\n")
        costrom.write(f"match_count {matchcount}\n")
        for w in cost:
            for j in w:
                costrom.write(f"{j:>3}")
            costrom.write('\n')
        costrom.write('\n')

def writePerm(minperm):
    with open('job_serial.txt', 'w') as js:
        js.write("Min cost at job serial : (in order from W0 to W7)\n")
        for perm in minperm:
            js.write(str(perm) + '\n')

def getAnswer(cost):
    perms = list(it.permutations([i for i in range(8)]))
    mincost = sum(cost[w][j] for w,j in zip(list(range(8)), perms[0]))
    matchcount = 0
    minperm = []

    for perm in perms:
        curcost = sum(cost[w][j] for w,j in zip(list(range(8)), perm))
        if curcost < mincost:
            mincost = curcost
            matchcount = 1
            minperm.clear()
            minperm.append(perm)
        elif curcost == mincost:
            matchcount += 1
            minperm.append(perm)

    return mincost, matchcount, minperm

def main():
    ## Generate costrom randomly
    cost = [[random.randint(1,99) for _ in range(8)] for _ in range(8)]

    ## Generate costrom manually
    # cost = [[54, 59, 59, 59, 32, 40, 62, 40],
    #         [54, 32, 32, 79, 32, 38, 32, 62],
    #         [54, 54, 30, 38, 32, 38, 59, 54],
    #         [30, 59, 32, 32, 62, 40, 45, 79],
    #         [32, 32, 38, 32, 62, 38, 62, 32],
    #         [79, 45, 32, 62, 32, 32, 32, 59],
    #         [32, 38, 32, 59, 54, 30, 30, 45],
    #         [30, 79, 32, 32, 62, 30, 45, 32]]
    mincost, matchcount, minperm = getAnswer(cost)
    writeFile(mincost, matchcount, cost)
    writePerm(minperm)

if __name__ == '__main__':
    main()