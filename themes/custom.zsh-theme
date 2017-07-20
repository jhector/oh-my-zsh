function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo %%; fi
}

PROMPT='%(!.%{$fg[red]%}.%{$fg[cyan]%}%n)%{$reset_color%} %{$fg_bold[blue]%}%(!.%1~.%1~)%{$reset_color%} $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "
