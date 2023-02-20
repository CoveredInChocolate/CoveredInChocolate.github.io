# Python script for generating LaTeX matrices
import sys

mat = """
\\mathcal{R}_1
\\vdots
\\mathcal{R}_n
"""

# Generate the multiplication version?
CALC = 0
TRANSPOSE = 0

# Example2
# mat = """
# 1 -5 1
# 3 -7 5
# """

# mat = """
# 1 -4 5 0 7
# 0 1 -3 0 6
# 0 0 1 0 2
# 0 0 0 1 -5
# """

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    ERROR = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'


def TrimWhite(ss):
    ss = ss.split("\n")
    # Removing leading and trailing whitespaces
    ss = ss[1:len(ss)-1]
    # Trimming rows
    for k in range(len(ss)):
        #print(k)
        # print(ss[k])
        ss[k] = ss[k].split(" ")
    return ss


def FindDim(ss):
    numrows = len(ss)
    numcols = len(ss[0])
    # Check that all rows have the same dimensions
    for rw in ss:
        tmprow = len(rw)
        if tmprow != numcols:
            print(f"{bcolors.ERROR}ERROR: col mismatch!{bcolors.ENDC}")
            sys.exit()
    # # Print dimensions
    #print(numrows, "-", numcols)
    return numrows, numcols

def MatrixToLaTex(ss):
    mat = TrimWhite(ss)
    numrow, numcols = FindDim(mat)

    # Create align string based on number of columns
    if CALC == 0 and TRANSPOSE == 0:
        a = ['r' for i in range(numcols)]
        align = ''.join(a)
    elif TRANSPOSE == 1:
        a = ['r' for i in range(numrow)]
        align = ''.join(a)
    else:
        a = ['rc' for i in range(numcols)]
        align = ''.join(a)
        align = align[:-1] # Remove last 'c'

    #print(mat)
    if CALC == 0 and TRANSPOSE == 0:
        print("\\begin{bmatrix*}", end='')
        print(f"[{align}]")
        for i in range(numrow):
            for j in range(numcols):
                if j < numcols - 1:
                    print(mat[i][j], end = " & ")
                elif i == numrow - 1:
                    print(mat[i][j], end = "")
                else:
                    print(mat[i][j], end = " \\\\ ")
            print("")
        print("\\end{bmatrix*}")
    elif TRANSPOSE == 1:
        print("\\begin{bmatrix*}", end='')
        print(f"[{align}]")
        for j in range(numcols):
            for i in range(numrow):
                if i < numrow - 1:
                    print(mat[i][j], end = " & ")
                elif j == numcols - 1:
                    print(mat[i][j], end = " \\\\ ")
                else:
                    print(mat[i][j], end = " \\\\ ")
            print("")
        print("\\end{bmatrix*}")
    else:
        print("\\begin{bmatrix*}", end='')
        print(f"[{align}]")
        for i in range(numrow):
            for j in range(numcols):
                if j < numcols - 1:
                    print(f"({mat[i][j]})()", end = " &+& ")
                elif i == numrow - 1:
                    print(f"({mat[i][j]})()", end = "")
                else:
                    print(f"({mat[i][j]})()", end = " \\\\ ")
            print("")
        print("\\end{bmatrix*}")


MatrixToLaTex(mat)


