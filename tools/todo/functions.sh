#!/usr/bin/env zsh

TODO_HOME_DATA=~/dotfiles/data

function go_gtd_open() {
  vim `find ${TODO_HOME_DATA}/todo -name "*.txt"`
}

function go_gtd_open_leisure_task() {
  cat ${TODO_HOME_DATA}/leisure_tasks.txt
}
