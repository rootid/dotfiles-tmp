
# List all the bookmark
function go_bk_list() {
  buku --colors oaaxm -p
}

# Find by tag
function go_bk_find() {
  buku -S $1 --colors oaaxm
}

# List all the tags
function go_bk_list_tags() {
  buku --stag
}

# Add bookmark url, tags title
# go_bk_add https://google.com "tag1, tag2" "title"
function go_bk_add() {
  buku -a $1 $2  --title $3
}

# Add todo
function go_bk_todo() {
  buku -a $1 $2  --title todo
}

# Add video
function go_bk_video() {
  buku -a $1 $2 --title video
}

# Add system_design
function go_bk_sys_design() {
  buku -a $1 $2 --title system_design
}

# Add algo
function go_bk_algo() {
  buku -a $1 $2 --title algo
}

# Add interview links
function go_bk_inv101() {
  buku -a $1 $2 --title interview_links
}

# Add paper
function go_bk_paper() {
  buku -a $1 $2 --title paper
}

# Add book
function go_bk_book() {
  buku -a $1 $2 --title book
}

# Add java
function go_bk_java() {
  buku -a $1 $2 --title java
}

# Add python
function go_bk_python() {
  buku -a $1 $2 --title python
}

# Add english
function go_bk_english() {
  buku -a $1 $2 --title english
}

# Add Behavioral
function go_bk_behavioral() {
  buku -a $1 $2 --title intv_behavioral
}

# Add paypal
function go_bk_pp() {
  buku -a $1 $2 --title pp_work
}

# Add video
function go_bk_pp_video() {
  buku -a $1 $2 --title pp_video
}

# Add video
function go_bk_pp_lms() {
  buku -a $1 $2 --title pp_lms
}

# Open bookmark
function go_bk_open() {
  buku -o $1
}

# Delete bookmark
function go_bk_del() {
  buku --delete $1
}

