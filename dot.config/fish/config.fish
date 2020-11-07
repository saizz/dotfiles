starship init fish | source
eval (direnv hook fish)
eval (goenv init - | source)
source $HOME/opt/google-cloud-sdk/path.fish.inc

#if status is-interactive
#and not set -q TMUX
#  exec tmux
#end

function attach_tmux_session_if_needed
    set ID (tmux list-sessions)
    if test -z "$ID"
        tmux new-session
        return
    end

    set new_session "Create New Session" 
    set ID (echo $ID\n$new_session | fzf | cut -d: -f1)
    if test "$ID" = "$new_session"
        tmux new-session
    else if test -n "$ID"
        tmux attach-session -t "$ID"
    end
end

if test -z $TMUX && status --is-login
    attach_tmux_session_if_needed
end
