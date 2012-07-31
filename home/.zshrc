export PATH=/usr/bin:/bin:/usr/sbin:/usr/local/bin:/sbin:/usr/X11/bin
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm # Load RVM into a shell session *as a function*
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

plugins=(git rails3 brew bundler ruby compleat rvm)

export EDITOR='mvim'

alias ..='cd ..'
alias migrate="bundle exec rake db:migrate db:test:prepare"
alias cr="cd ~/work/crowdly_root/Crowdly && rvm use 1.9.3-p125@crowdly"
alias ko="cd ~/work/crowdly_root/kong"
alias acr="cd ~/work/crowdly_root/AppCrowdly"
alias cov="cd ~/work/covocative"

alias co='checkout'
alias bo='rr && bundle open'
alias rq='ruby script/resque_daemon start'

alias rr='rvm reload'
alias tk='tmux kill-session'

alias bes='bundle exec rpsec'
alias beg='bundle exec guard'
alias bake='bundle exec rake'
alias be='bundle exec'
alias mr='mvim && rails s'

alias spg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'

alias tail='tail -n 500 log/test.log'

# Initialize colors.
autoload -U colors
colors
set background=dark

#Allow for functions in the prompt.
setopt PROMPT_SUBST

# Autoload zsh functions.
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)

# Enable auto-execution of functions.
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions

# Append git functions needed for prompt.
preexec_functions+='preexec_update_git_vars'
precmd_functions+='precmd_update_git_vars'
chpwd_functions+='chpwd_update_git_vars'

# Set the prompt.
PROMPT=$'%{${fg[cyan]}%}%G%~%G$(prompt_git_info)%{${fg[default]}%} '


