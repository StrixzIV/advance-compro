children = [ 
    {"name": "Alice", "age": 2, "height": 95},
    {"name": "Bob", "age": 4, "height": 105},
    {"name": "Charlie", "age": 3, "height": 110},
    {"name": "David", "age": 5, "height": 102},
    {"name": "Eve", "age": 6, "height": 99}
]

criteria = lambda data: data['age'] > 3 and data['height'] > 100
eligible_children = [e for e in children if criteria(e)]

print(f'Eligible children for the fun park: {eligible_children}')
