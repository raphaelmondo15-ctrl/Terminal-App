#! /bin/bash

#Define the task file
TASK_FILE="tasks.txt"

#Function to add task
add_task() {
if [[ -n "$1" ]]; then
  echo "$1" >> task.txt
  echo  "Task added: $2"
else
    echo "Error: task text is required"
fi    
}

#Function to list all tasks
List_tasks() {
    if [[ -f "$Task_File" ]]; then
        echo "Tasks:"
        cat -n "$TASK_FILE"
    eles
       echo "NO task available"
     fi    
}

#Main Logic
case $1 in
   add)
     add_task "$2"
     ;;
   list)
     List_tasks
     ;;
   del)
     if [[ $(wc -l < $TASK_FILE) -ge 2 && $2 -eq 2 ]]; then
      sed -i  '' '2d' "tasks.txt"
     else
        echo "File has only one line"
     fi
     ;;
    *)
      echo "Usage: $0 [add|list] [task text]"
      echo "add <task text>: add a new task"
      echo "list :list all tasks"
      ;;
   esac   