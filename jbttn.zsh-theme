# Adapted from https://github.com/blinks zsh theme

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo " %{%F{33}%}±%{%f%k%b%}"
  else
    echo ''
  fi
}

precmd() {
  print -rP "%{%f%k%b%}
╭─%{%F{240}%B[%b%F{254}%~%F{240}%B]%}%{%B%F{240}%}$(git_prompt_info)%E%{%f%k%b%}"
}

ZSH_THEME_GIT_PROMPT_PREFIX="[%{%B%F{33}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%k%b%B%F{240}%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{%F{160}%}:(%{%f%k%b%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{%F{64}%}:)%{%f%k%b%}"

PROMPT='╰─%{%F{240}%B%}[%{%b%F{160}%}%#$(_prompt_char)%{%B%F{240}%}]%{%F{64}%}(ಠ_ಠ)>%{%f%k%b%} '

RPROMPT='!%{%B%F{64}%}%!%{%f%k%b%}'
