# af-magic.zsh-theme
#
# Author: Andy Fleming
# URL: http://andyfleming.com/
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme
#
# Created on:		June 19, 2012
# Last modified on:	June 20, 2012



if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT_DEFAULT_END=❯
PROMPT_ROOT_END=❯❯❯

# primary prompt
# $FG[237]------------------------------------------------------------%{$reset_color%}
PROMPT='\
$FG[021]%3~\
$FG[160]%(!.#.$FG[170] ❯$FG[165]❯$FG[160]❯)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %d%{$ %{$reset_color%}'
RPS1='${return_code}'
#$(git_prompt_info)\

# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'

# right prompt
#RPROMPT='$my_gray%d%{$reset_color%}%'
RPROMPT='$(git_prompt_info)'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[035](branch:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[236] ±%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[035])%{$reset_color%}"