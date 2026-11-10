# Week 1: Count and filter lines

Reads a log file, prints the total number of lines, prints the lines containing "Error", and counts them. Written in Bash first, then Python.

## Run it

```
bash check.sh
python3 check.py
```

Both should print 10 total lines, the six error lines, and a count of 6 for the sample `test.log`.

## What I learned

- `>` overwrites a file. I emptied my test log by redirecting output into it. `<` only reads, and `>>` appends.
- `grep` is case-sensitive. `grep -i error` matches error, Error, and ERROR.
- In Python, `count = 0` has to come before the loop so the variable exists and doesn't reset on each pass.
- Variable names have to match: `open(...) as file` means the next line uses `file.readlines()`.
