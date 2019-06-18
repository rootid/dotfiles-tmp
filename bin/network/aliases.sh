if [[ $OSTYPE == darwin* ]]
then
  # power
  alias shutdown='sudo shutdown -hP now'
  alias reboot='sudo reboot now'
  alias sleep='shutdown -s now'
  # misc
  alias unlock_files='chflags -R nouchg *'

  # IP addresses
  alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
  alias localip="ipconfig getifaddr en0"
  alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
  # Show active network interfaces
  alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

  # Flush Directory Service cache
  alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

elif [[ $OSTYPE == linux-gnu ]]
then
   # power
   alias shutdown='sudo shutdown -P now'
   alias reboot='sudo shutdown -r now'
   alias halt='sudo halt -P'
fi
