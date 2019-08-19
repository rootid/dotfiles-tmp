
# List all the bookmark
function go_bk_list() {
  buku --colors oaaxm -p
}

# Add bookmark url, tags title
# go_bk_add https://google.com "tag1, tag2" "title"
function go_bk_add() {
  buku -a $1 $2  --title $3
}

