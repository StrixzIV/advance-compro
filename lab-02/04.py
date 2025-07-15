numbers = range(1, 6)
modified_numbers = [(n + 10 if n % 2 == 0 else n - 1) for n in numbers]
print(modified_numbers)