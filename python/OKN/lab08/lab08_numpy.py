import numpy as np

# =============================================

print(f"\n№ 1\n")

hours = np.arange(0, 22, 3)
print("hours:", hours)
print("shape:", hours.shape)
print("ndim:", hours.ndim)
print("size:", hours.size)
print("dtype:", hours.dtype)

line = np.linspace(0, 1, 5)
print("line:", line)

zeros = np.zeros(6, dtype=int)
print("zeros:", zeros)

unknown_table = np.array([[-1, -1, -1],
                        [-1, -1, -1]])
print("table (-1):\n", unknown_table)

identity = np.eye(3)
print("identity:\n", identity)

# =============================================

print(f"\n№ 2\n")

print("hours:", hours)

print("третий:", hours[2])
print("последний:", hours[-1])
print("2–5:", hours[2:6])
print("каждый второй:", hours[::2])
print("обратный порядок:", hours[::-1])

# =============================================

print(f"\n№ 3\n")

temperatures = np.array([
    [12, 14, 13, 15],
    [11, 13, 16, 17],
    [10, 12, 15, 18],
])

print("shape:", temperatures.shape)
print("ndim:", temperatures.ndim)
print("size:", temperatures.size)
print("temps[1, 2]:", temperatures[1, 2])
print("первая строка:", temperatures[0])
print("последний столбец:", temperatures[:, -1])
print("[:2, 1:]:\n", temperatures[:2, 1:])
print("[0:2, 1:3]:\n", temperatures[0:2, 1:3])

# =============================================

print(f"\n№ 4\n")

matrix = np.arange(1, 26).reshape(5, 5)
print("matrix:\n", matrix)

first_three = matrix[:3]
print("\n[:3]:\n", first_three, "\nshape:", first_three.shape)

last_two = matrix[-2:]
print("\n[-2:]:\n", last_two, "\nshape:", last_two.shape)

first_two_cols = matrix[:, :2]
print("\n[:, :2]:\n", first_two_cols, "\nshape:", first_two_cols.shape)

fragment = matrix[1:4, 2:5]
print("\n[1:4, 2:5]:\n", fragment, "\nshape:", fragment.shape)

corner = matrix[-2:, -2:]
print("\n[-2:, -2:]:\n", corner, "\nshape:", corner.shape)

# ==============================================================

print(f"\n№ 5\n")

changed_hours = hours.copy()
changed_hours[2:5] = 99
changed_hours[::2] = -1

print("changed_hours:", changed_hours)
print("hours:", hours)

small_matrix = np.arange(1, 10).reshape(3, 3)
small_matrix[0, :] = -1
small_matrix[1:, 1:] = 9
print("small_matrix:\n", small_matrix)

changed_matrix = matrix.copy()
changed_matrix[1, :] = 0
changed_matrix[:, -1] = -1
changed_matrix[1:4, 1:4] = 100

print("\nmatrix:\n", matrix)
print("\nchanged_matrix:\n", changed_matrix)

# ========================================

print(f"\n№ 6\n")

numbers = np.arange(12)
table = numbers.reshape(3, 4)
transposed = table.T

print("numbers:", numbers, "| shape:", numbers.shape)
print("table:\n", table, "| shape:", table.shape)
print("transposed:\n", transposed, "| shape:", transposed.shape)
