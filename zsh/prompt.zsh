autoload -Uz vcs_info
setopt PROMPT_SUBST

zstyle ':vcs_info:git:*' formats ' %F{green}(%b)%f'
zstyle ':vcs_info:git:*' actionformats ' %F{green}(%b|%a)%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr ' %F{red}*%f'
zstyle ':vcs_info:git:*' formats ' %F{green}(%b%u)%f'

precmd() { vcs_info }

# user project-dir (git-branch*) %
PROMPT='%F{yellow}%n%f %F{blue}%1~%f${vcs_info_msg_0_} %# '
