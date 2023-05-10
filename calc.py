def add(x, y):
    return x + y

def subtract(x, y):
    return x - y

def multiply(x, y):
    return x * y

def divide(x, y):
    if y == 0:
        raise ValueError("Cannot divide by zero")
    return x / y

x = 10
y = 5
c = 15
my_int = 42

if x > y:
    print ("x is greater than y")
elif y > x:
    print("y is greater than x")
else:
    print("x and y are equal")

if x > y and x > c:
    print("x is the greatest")
elif y > x and y > c:
    print("y is the greatest")
elif c > x and c > y:
    print("c is the greatest")
else:
    print("x, y, and c are equal")

print(f"{x} + {y} = {add(x, y)}")
print(f"{x} - {y} = {subtract(x, y)}")
print(f"{x} * {y} = {multiply(x, y)}")
print(f"{x} / {y} = {divide(x, y)}")
print(f"my_int = {my_int}")
