if [[ $OSTYPE == darwin* ]]
then
  # power
  alias shutdown='sudo shutdown -hP now'
  alias reboot='sudo reboot now'
  alias sleep='shutdown -s now'
elif [[ $OSTYPE == linux-gnu ]]
then
   # power
   alias shutdown='sudo shutdown -P now'
   alias reboot='sudo shutdown -r now'
   alias halt='sudo halt -P'
fi
