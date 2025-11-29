# Terminal To-Do List Application
This is a simple command-line **Task Manager Application (to do list)** written in Bash.\
It allows you to **add**, **list**, and **delete** tasks stored in text file
`tasks.txt`.
## Usage
### 1. Add a task
``` bash
./tasks.sh add "Your task description"
```

### 2. List all tasks

``` bash
./tasks.sh list
```

### 3. Delete a task

``` bash
./tasks.sh del task_number
```

## Example Session
``` bash
$ ./tasks.sh add "Do my HomeWork"
Task added: 1. Do my HomeWork

$ ./tasks.sh add "Do all my assignments on time"
Task added: 2. Do all my assignments on time

$ ./tasks.sh list
     1  . Do my HomeWork
     2  . Do all my assignments on time

$ ./tasks.sh del 2
Deleted task number 2
```
## Requirements to run the app
- Bash shell\
- Linux or macOs