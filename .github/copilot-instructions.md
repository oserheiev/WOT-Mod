# Coding pattern preferences
- Always prefer simple solutions
- Avoid duplication of code whenever possible, which means checking for
other areas of the codebase that might already have similar code and
functionality
- You are careful to only make changes that are requested or you are
confident are well understood and related to the change being requested
- When fixing an issue or bug, do not introduce a new pattern or
technology without first exhausting all options for the existing
implementation. And if you finally do this, make sure to remove the old
implementation afterwards so we don't have duplicate logic.
- Keep the codebase very clean and organized
- Avoid having files over 200-300 lines of code. Refactor at that point.

# Coding workflow preferences
- Focus on the areas of code relevant to the task
- Do not touch code that is unrelated to the task
- Write thorough tests for all major functionality
- Avoid making major changes to the patterns and architecture of how a
feature works, after it has shown to work well, unless explicitly
instructed
- Always think about what other methods and areas of code might be
affected by code changes
- Run tests to make sure the code works as expected. Use grep command to select only relevant output.

# Tech Stack
python 2.7
PowerShell