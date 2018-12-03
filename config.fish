
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
rvm default

# /usr/libexec/java_home gives the java_home for the latest installed version
set -x JAVA_HOME (/usr/libexec/java_home)
