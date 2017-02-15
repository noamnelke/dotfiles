prompt_context() {
  echo -n "%{$reset_color$fg[green]%}[%n%{$fg_bold[green]%}@%{$reset_color$fg[green]%}%m]"
}

prompt_time() {
  echo -n "%{$fg_bold[black]%}[%D %*]%{$reset_color%}"
}

prompt_dir() {
  echo -n "%{$fg[cyan]%}%~"
}

function virtualenv_prompt_info(){
  local virtualenv_path="$VIRTUAL_ENV"
  if [[ -n $virtualenv_path ]]; then
    local virtualenv_name=`basename $virtualenv_path`
    echo -n " %{$reset_color$fg[green]%}[$virtualenv_name]"
  fi
}
export VIRTUAL_ENV_DISABLE_PROMPT=1

prompt_git() {
  echo -n "$(git_prompt_info)"
}

# Status:
# - am I root
# - are there background jobs?
prompt_status() {
  local symbols
  symbols=()
  [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}⚡"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{white}%}⚙"

  [[ -n "$symbols" ]] && echo -n " $symbols"
}

prompt_arrow() {
  [[ $RETVAL -ne 0 ]] && echo "%{$fg_bold[red]%} $ "
  [[ $RETVAL -eq 0 ]] && echo "%{$fg_bold[yellow]%} $ "
}

build_prompt() {
  RETVAL=$?
  prompt_dir
  prompt_git
  prompt_status
  prompt_arrow
}

build_rprompt() {
#  prompt_context
  virtualenv_prompt_info
  prompt_time
}

PROMPT='$(build_prompt)'
RPROMPT='$(build_rprompt)'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
