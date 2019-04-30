set PATH /home/daniel/.nvm/versions/node/v10.15.3/bin $PATH
set PATH /usr/share/nvm/init-nvm.sh $PATH

function t
    if test -z $TMUX
        if not tmux attach
             command tmux new-session \; new-window "tmux set-option -ga terminal-overrides \",$TERM:Tc\"; tmux detach"
             command tmux attach
        end
    end
end

if status is-interactive
and not set -q TMUX
    exec tmux
end

function postman
    /opt/Postman/Postman
end

function we
    cd ~/Uni/uebungen
end
