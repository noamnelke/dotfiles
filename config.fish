test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# /usr/libexec/java_home gives the java_home for the latest installed version
#set -x JAVA_HOME (/usr/libexec/java_home)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/noamnelke/code/google-cloud-sdk/path.fish.inc' ]; . '/Users/noamnelke/code/google-cloud-sdk/path.fish.inc'; end

# autojump
  [ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

# fish_command_timer
set fish_command_timer_enabled 0
set fish_command_timer_color brblack

