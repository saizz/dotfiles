function fzf_select_z_recentd
  z -l | fzf | awk '{ print $2 }' | read recentd
  cd $recentd
end

function fish_prompt
    powerline-shell --shell bare $status
end
