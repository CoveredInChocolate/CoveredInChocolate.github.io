
# Test script

a = ['1', '-2', '3']
b = [] # Empty, growing list - okay since we are working with small lists

# goal:
# ['1', '-', '2', '3']

for q in range(len(a)):
    # We do not split the firt and last elements
    if q in [0, len(a)]:
        b.append(a[q])
    elif '-' in a[q]:
        # Assuming we always get -N for some number N
        # i.e. no spaces, and no characters etc.
        splitString = a[q].split("-")
        b.append('-')
        b.append(splitString[1])
    else:
        b.append(a[q])

print(b)