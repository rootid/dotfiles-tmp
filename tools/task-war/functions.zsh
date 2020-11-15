# TODO: Add fallback/fault-tolerant logic
# List all tasks
function go_task_list() {
  task list
}

# List daily completed tasks
function go_task_status() {
  task dailystatus
}

# go_task_add "Mt. Rainier National Park" "next_task.hiking"
function go_task_add() {
  task add $1 project:$2
}

# go_task_annotate <task_id>
function go_task_annotate() {
  read -p "Annotation: " ANNOTATION
  task $1 annotate $ANNOTATION
}

function go_task_show() {
  task $1
}

function go_task_edit() {
  task $1 edit
}

function go_task_delete() {
  task $1 delete
}

function go_task_list_by_project() {
  task project:$1 list
}

# Search w/ project can be extended to desc, due
function go_task_list_starts_with() {
  task project.left:$1
}

function go_task_list_ends_with() {
  task project.right:$1
}

function go_task_list_contains() {
  task project.right:$1
}

function go_task_count_by_project() {
  task project.has:$1
}

function go_task_make_high() {
  task $1 modify priority:H
}

# go_task_sch <id> <day-offset>
function go_task_sch() {
  task $1 modify due:+$2d
}

# Add personal project
function go_task_add_personal() {
  task add $1 project:personal.next-app.todo
}

# Start task id
function go_task_start() {
  task $1 start
}

# go_task_done <task_id> <summary>
function go_task_done() {
  task $1 done $2
}

# Display daily burndown report
function go_task_show() {
  task burndown
}

# Display daily burndown report
function go_task_show_monthly() {
  task burndown_monthly
}

# Use of 4 quadrant system for context
# task context define do +do
# task context define delegate +delegate
# task context define decide   +decide
# task context define delete   +delete
# task context define none     +none
# task context define next     +next
# task context define company  +company

#@ACT, @DO, @DEL, @DEF, @NXT, @CUR, @MYB
# 6 point review model (Reach auto pilot mode)
# 1. Purpose (Why?)
# 2. Vision
# 3. Goals
# 4. Area of focus + accountability
# 5. Current project
# 6. Current action

# Workflow
# 1. taskwarrior - Provides many-many mapping between task and projects, single source of truth for daily tasks
# 2. Morganization
# 3. list only project - task rc.list.all.projects=0 _project
