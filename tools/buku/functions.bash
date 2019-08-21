
# List all the bookmark
function go_bk_list() {
  buku --colors oaaxm -p
}

# List all the tags
function go_bk_tag() {
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

# Delete bookmark
function go_bk_del() {
  buku --delete $1
}

