
function list_space() {
  du -sk * | sort -g | awk '{ numBytes = $1 * 1024; numUnits = split("B K M G T P", unit); num = numBytes; iUnit = 0; while(num >= 1024 && iUnit + 1 < numUnits) { num = num / 1024; iUnit++; } $1 = sprintf( ((num == 0) ? "%6d%s " : "%6.1f%s "), num, unit[iUnit + 1]); print $0; }'
}

### commands {
alias lr='ls -ltr'
alias vi='vim -u NONE'
### }


##### APPS {
alias vlc=/Applications/VLC.app/Contents/MacOS/VLC

#install boom - gem install boom
alias bm=$HOME/.rbenv/shims/boom
alias bmc="$HOME/.rbenv/shims/boom copy"
alias bmo="$HOME/.rbenv/shims/boom open"
alias bma="$HOME/.rbenv/shims/boom add"

### }

##### JAVA {
alias mci="mvn clean install"
alias mdt="mvn dependency:tree"
alias mda="mvn dependency:analyze"
alias mdx="mvn -X dependency:tree -Dverbose"
function mdi() {
  mvn dependency:tree -Dverbose -Dincludes=$1
}
### }


##### tskwrr {
alias tcal='task calendar'
### }

# vim: ai ts=2 sw=2 et sts=2 ft=sh fdm=marker
