export NVM_NODEJS_ORG_MIRROR=https://npmmirror.com/mirrors/node/

export NVM_IOJS_ORG_MIRROR=https://npmmirror.com/mirrors/iojs/

# export PATH="$PATH:新路径1:新路径2:..."
# 只要确保每行末尾的 \ 之后没有空格或其他字符，整个命令就会被正确解析为一个单独的命令。
export PATH="$PATH:/usr/local/bin:\
/usr/bin:\
/bin:\
/usr/sbin:\
/sbin:\
$HOME/bin:\
/usr/local/mongodb/bin:\
/usr/local/Homebrew/bin:\
/Applications/Google Chrome.app/Contents/MacOS:\
/Applications/Visual Studio Code.app/Contents/Resources/app/bin:\
/Applications/SASE.app/Contents/Services"

export ZSH=~/.oh-my-zsh

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles

source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


plugins=(
   git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

ZSH_THEME="robbyrussell"


source ~/.oh-my-zsh

export ZSH="~/.oh-my-zsh"

alias python=python3
alias pip='pip3'
alias cls='clear'
alias chrome="open -a 'Google Chrome'"
alias pipre='pip install -r requirements.txt'
# alias chrome=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --kiosk

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # 这会加载 NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # 这会加载 NVM Bash 自动补全

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



export MY_PING_PATH=/Applications/SASE.app/Contents/Services
export PATH=${MY_PING_PATH}:$PATH


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Key bindings for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# Use fzf for history search
bindkey '^R' fzf-history-search

fzf-history-search() {
  local selected_command
  selected_command=$(fc -rl 1 | fzf +s --tac | sed 's/ *[0-9]* *//')
  if [[ -n "$selected_command" ]]; then
    BUFFER=$selected_command
    zle accept-line
  fi
  zle -R
}

zle -N fzf-history-search
