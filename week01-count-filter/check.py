# Reads log.txt, counts the total lines, and counts the lines with "error".

total_lines = 0
error_count = 0

with open("log.txt") as file:
    
    for line in file:
        total_lines += 1

        if "error" in line:
            error_count += 1

print(f"Total lines: {total_lines}")
print(f"Total lines with an error: {error_count}")
