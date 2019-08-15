#!/bin/bash

# Schedule with Time, Action and Place

# Today's agenda
function go_show_agenda() {
  gcalcli agenda
}

function go_show_agenda_2_wk() {
  gcalcli calw 2
}

function go_show_agenda_monthly() {
  gcalcli calm
}

# Daily work day
function _go_schedule_my_day() {
  day_dd_mm=$1
  echo "scheduling $day_dd_mm"

  time_="\"$day_dd_mm 3:30AM\""
  gcalcli add --title 'Do Yoga' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 4:00AM\""
  gcalcli add --title 'Do Kohm' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 4:15AM\""
  gcalcli add --title 'Whiteboard problem' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 4:15AM\""
  gcalcli add --title 'Whiteboard problem' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 5:00AM\""
  gcalcli add --title 'Do Run' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 5:45AM\""
  gcalcli add --title 'Do Shower' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 6:15AM\""
  gcalcli add --title 'Solve problem' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 11:15AM\""
  gcalcli add --title 'Do kohm' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 11:30AM\""
  gcalcli add --title 'Run newsboat systems' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 1:30PM\""
  gcalcli add --title 'Do kohm' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1
  time_="\"$day_dd_mm 3:30PM\""
  gcalcli add --title 'Do kohm' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1
  time_="\"$day_dd_mm 4:00PM\""
  gcalcli add --title 'Do code/design review' --where focus --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 6:30PM\""
  gcalcli add --title 'Do task planning' --where focus --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 8:30PM\""
  gcalcli add --title 'Do task planning' --where focus --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1

  time_="\"$day_dd_mm 9:15PM\""
  gcalcli add --title 'Do Meditation' --where focus --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1
}

function go_schedule_my_tom() {
  tom_dd_mm=`date -v +1d +"%m/%d"`
  schedule_my_workday $tom_dd_mm
}

# TODO - schedule morning
function _go_task_today_add() {
    today_dd_mm=`date +"%m/%d"`
    gcalcli quick 'Do design/code-review check others 4:00pm '$today_dd_mm
    gcalcli quick 'Learn java8 concept java8 book 4:30pm '$today_dd_mm
}

function _go_task_tom_add() {
  tom_dd_mm=`date -v +1d +"%m/%d"`
  gcalcli quick 'Wake up @Home 3:45AM '${tom_dd_mm}
  gcalcli quick 'Read+Refresh @Home 3:45AM '${tom_dd_mm}

  gcalcli quick 'Do Yoga @Home 4:00AM '${tom_dd_mm}
  gcalcli quick 'Do kohm @Home 4:20AM '${tom_dd_mm}

  gcalcli quick 'Do White board problem solve @HOME 4:30AM @H '${tom_dd_mm}
  gcalcli quick 'Do running @Gym 5:10AM '${tom_dd_mm}

  gcalcli quick 'Task out @Cafe 6:20AM  '${tom_dd_mm}
  gcalcli quick 'Solve 2 problems @Cafe @6:45AM '${tom_dd_mm}
}

#function go_main() {
#  task_tom_add
#  task_today_add
#  g_list
#}
function _go_task_nightly() {
    today_dd_mm=`date +"%m/%d"`
    gcalcli quick 'Do headspce 9:30pm '$today_dd_mm
}

