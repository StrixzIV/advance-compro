grades = [55, 70, 65, 40, 90, 85, 50, 77]
passed_with_bonus = [e * 1.05 for e in grades if e >= 60]

print(f'Grades after filtering and applying bonus: {passed_with_bonus}')
