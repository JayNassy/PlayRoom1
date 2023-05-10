fizz_num = int(input("Enter a number to trigger 'fizz': "))
buzz_num = int(input("Enter a number to trigger 'buzz': "))
for i in range(1, 101):
    if i % fizz_num == 0 and i % buzz_num == 0:
        print("fizzbuzz")
    elif i % fizz_num == 0:
        print("fizz")
    elif i % buzz_num == 0:
        print("buzz")
    else:
        print(i)
