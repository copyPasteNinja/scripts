#!/bin/bash

## Case Syntax
# case $variable in
#     pattern1)
#         # commands for pattern1
#         ;;
#     pattern2)
#         # commands for pattern2
#         ;;
#     *)
#         # default case
#         ;;
# esac

cat << HEREDOC
Select an option:
1) Show date
2) List files
3) Show user
4) Exit
HEREDOC
read -p "Enter your choice: " choice
case $choice in
    1) date ;;
    2) ls ;;
    3) echo $USER ;;
    4) echo "Bye 👋" ;;
    *) echo "Invalid input. Please enter a valid choice like 1, 2 etc." ;;
esac

