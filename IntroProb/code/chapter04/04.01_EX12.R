# 04.01 - Exercise 12 - Achieving 0.5

### Initial tree
c = 0.001
n = 1 - c

cPos = 0.99
cNeg = 0.01

nPos = 0.05
nNeg = 0.95

P_pos_g_c = round(c*cPos,3)
P_neg_g_c = round(c*cNeg,3)

P_pos_g_n = round(n*nPos,3)
P_neg_g_n = round(n*nNeg,3)

P_pos_g_c
P_neg_g_c
P_pos_g_n
P_neg_g_n

### Initial reverse tree
posRate = P_pos_g_c + P_pos_g_n
negRate = 1 - posRate

### Reverse tree
P_pos_g_c/posRate



### Adjusted tree
c = 0.048
n = 1 - c

cPos = 0.99
cNeg = 0.01

nPos = 0.05
nNeg = 0.95

P_pos_g_c = round(c*cPos,3)
P_neg_g_c = round(c*cNeg,3)

P_pos_g_n = round(n*nPos,3)
P_neg_g_n = round(n*nNeg,3)

P_pos_g_c
P_neg_g_c
P_pos_g_n
P_neg_g_n

### Initial reverse tree
posRate = P_pos_g_c + P_pos_g_n
negRate = 1 - posRate

### Reverse tree
P_pos_g_c/posRate
