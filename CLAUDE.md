# Python Web Applications

## When tech stack instructions are not clear

- Use latest version of Python 3
- Use pytest for unit testing
- Use Artillery.io for load & performance testing
- Use FastAPI with async methods for API servers
- Use docker & docker compose to sandbox runtime environments for applications
- Use SQLite3 for local setup
- Use Redis for queue-ing and RQ for background workers design

## For new projects, you must

- setup python linters
- setup python formatters
- setup git repository to track your changes

# Guidelines

Always make bite sized commits with succint meaningful messages summarizing the changes.
Follow the format where the first line is a short title describing the intent, followed by an empty line and then a short summary of changes.
Never include list of changed files in the commit message.
Always keep python imports at the top of the file, never inline within function/method calls.

