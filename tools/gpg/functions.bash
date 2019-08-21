
# List the GPG keys
function go_list_gpg_keys() {
  #gpg --list-secret-keys --with-colons | cut -d : -f 10 | sort -u | sed '/^$/d'
  gpg --list-secret-keys --keyid-format LONG
}

# Create the key
function go_list_gpg_keys() {
  gpg --gen-key
}

