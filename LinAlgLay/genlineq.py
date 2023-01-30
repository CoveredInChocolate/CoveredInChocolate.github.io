
# Python script for generating LaTeX Equqation Systems
import sys

# First and last objects are tied to operators
# Other operators are separate objects in the equation
eq = """
1 + 3 = f
c + d = g
"""

# Ex:
# eq = """
# 1 - 2 = -2
# 1 + 5 = 7
# """

# # Does not support 0s very well
# eq = """
# 1 0 0 - 3 = 8
# 2 + 2 + 9 = 7
# 0 0 1 + 5 = -2
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
        ss[k] = ss[k].split()
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
    a = ['c' for i in range(numcols)]
    # First and last columns are right aligned
    a[0] = 'r'
    a[-1] = 'r'
    align = ''.join(a)

    print("\\begin{array}{", end='')
    print(align, end='}\n')
    for i in range(numrow):
        index = 1 # index value for x_i
        for j in range(numcols):
            # If 0, we don't write it, unless it's the last element
            if mat[i][j] == '0' and j < numcols - 1:
                # Empty cell
                mat[i][j] = ''
                index = index + 1
            elif mat[i][j] == '+' or mat[i][j] == '-' or mat[i][j] == '=':
                # Operation (+/-/=)
                print(f"{mat[i][j]}", end = " & ")
                #index = index + 1
            elif mat[i][j] == '1' and j < numcols - 1:
                # Operators
                print(f"x_{index}", end = " & ")
                index = index + 1
            elif j < numcols - 1:
                print(f"{mat[i][j]}x_{index}", end = " & ")
                index = index + 1
            elif i == numrow - 1:
                # Solution (b)
                print(mat[i][j], end = "")
            else:
                print(mat[i][j], end = " \\\\ ")
        print("")
    print("\\end{array}")


MatrixToLaTex(eq)

# Example output
"""
1 - 2 = -1
-1 + 3 = 3

\begin{tabular}{ r c c c r }
 x_1 & - & 2x_2 & = & -1\\ 
 -x_1 & + & 3x_2 & = & 3  
\end{tabular}
"""
