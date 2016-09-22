


vagrant() {
  if [[ $1 == "ssh" ]]; 
  then
    if [[ -z "$2" ]] ; 
    then
      command vagrant ssh-config > vagrant-ssh-config && ssh -A -F vagrant-ssh-config $(cat vagrant-ssh-config  |cut -d" " -f2 | head -1 | xargs echo -n)
    else
      command vagrant ssh-config > vagrant-ssh-config && ssh -A -F vagrant-ssh-config "$2"
    fi

  else
    command vagrant "$@"
  fi
}
