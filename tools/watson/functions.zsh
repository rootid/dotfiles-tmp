# go_log_start sleep +health
# go_log_start sleep +health
function go_log_stat() {
  watson start $1 $2
}

function go_log_health() {
  watson start slee,kohm,run,yoga +health
}

function go_log_stop() {
  watson stop
}

function go_log_report() {
  watson report
}

# system-design
function go_log_next_leap_sys_design() {
  watson start system-design +next-leap
}

function go_log_next_leap_problem_solve() {
  watson start problem-solve +next-leap
}

function go_log_next_leap_oop_solve() {
  watson start oop +next-leap
}

# paper, book
function go_log_next_leap_read() {
  watson start $1 +next-leap
}

# prime, youtube, news
function go_log_non_prod() {
  watson start $1 +non-productive
}

#
function go_log_work() {
  watson start $1 +work
}

