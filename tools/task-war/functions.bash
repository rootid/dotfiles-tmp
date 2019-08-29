
# List all tasks
function go_task_list() {
  task list
}

# List daily completed tasks
function go_task_status() {
  task dailystatus
}

# go_task_add "Mt. Rainier National Park project:next_task.hiking"
function go_task_add() {
  task add $1
}
# Start task id
function go_task_start() {
  task $1 start
}

# go_task_done <task_id>
function go_task_done() {
  task $1 done
}

# Display daily burndown report
function go_task_show() {
  task burndown
}

# Display daily burndown report
function go_task_show_monthly() {
  task burndown_monthly
}

