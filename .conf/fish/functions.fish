function peco_select_z_recentd
  z -l | peco | awk '{ print $2 }' | read recentd
  cd $recentd
end