
# Add current work to cache
# go_bm_add_pp_now "key" "https://google.com"
function go_bm_add_pp_now() {
  boom todo-now $1 $2
}

# Add lunch time urls
# go_bm_add_todo_lunch "key" "https://google.com"
function go_bm_add_todo_lunch() {
  boom todo-lunch $1 $2
}

# Part of capture and review later
# go_bm_add_parking_lot "key" "https://google.com"
function go_bm_add_parking_lot() {
  boom todo $1 $2
}

