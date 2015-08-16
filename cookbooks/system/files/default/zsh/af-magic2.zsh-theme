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

# primary prompt
# PROMPT='$FG[237]------------------------------------------------------------%{$reset_color%}
PROMPT='$FG[032]%~\
$(git_prompt_info) \
$FG[105]%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'


# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[033]'

# right prompt
RPROMPT='$my_gray%t%{$reset_color%}%'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%} | $my_orange"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[034]*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
