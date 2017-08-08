# autoload -U promptinit; promptinit
# prompt pure
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# The following has been nicked from 
# http://joshsymonds.com/blog/2014/06/12/shell-awesomeness-with-prezto/

# Add homebrew to the completion path
fpath=("/usr/local/bin/" $fpath)

# 'cd dir' -> 'dir' 
setopt AUTO_CD

# 10 second wait if you do something that will delete everything.
setopt RM_STAR_WAIT

# only fools wouldn't do this ;-)
export EDITOR="nvim"

# Who doesn't want home and end to work?
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line

# Incremental search is elite!
bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward

# Search based on what you typed in already
bindkey -M vicmd "//" history-beginning-search-backward
bindkey -M vicmd "??" history-beginning-search-forward

bindkey "\eOP" run-help

# oh wow!  This is killer...  try it!
bindkey -M vicmd "q" push-line

# it's like, space AND completion.  Gnarlbot.
bindkey -M viins ' ' magic-space

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
