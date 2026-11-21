# Week 2: Failed SSH Login Parser (Bash)

A Bash script that reads a Linux auth log and pulls out every failed SSH login, showing the username that was tried and the IP address it came from.

## Usage

```bash
./failed_logins.sh auth.log
```

Example output:

```
Usernames and source ip for failed logins
admin 203.0.113.45
root 203.0.113.45
liam 192.168.10.15
```

## How it works

1. `grep` keeps only the lines containing `Failed password`, which filters out successful logins, cron jobs, and other noise.
2. `awk` splits each line into words and prints the username and IP by their position.

Failed login lines come in two formats:

```
Failed password for root from 203.0.113.45 port 40001 ssh2
Failed password for invalid user admin from 203.0.113.45 port 40000 ssh2
```

When the account doesn't exist on the server, the log adds `invalid user`, which shifts the username and IP two words to the right. The script checks word 9: if it's `invalid`, it prints words 11 and 13; otherwise it prints words 9 and 11.

## Sample data

`auth.log` is a sample log with 64 failed login attempts from 4 IPs, including a brute-force pattern from one address. It's generated test data, and the IPs are from ranges reserved for documentation, so it contains no real hosts or users.

## What I learned

- Filtering log lines with `grep` and pulling out fields with `awk`
- Handling lines with different formats using `if`/`else` in `awk`
- Passing a file into a script with `$1`
