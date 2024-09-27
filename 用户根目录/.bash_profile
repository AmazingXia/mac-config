export NVM_NODEJS_ORG_MIRROR=https://npmmirror.com/mirrors/node/

export NVM_IOJS_ORG_MIRROR=https://npmmirror.com/mirrors/iojs/

export PATH="$PATH:`yarn global bin`"

export PATH="$PATH:`npm bin -g`"


export PATH="/usr/bin/python:$PATH"

alias python=python3
alias pip='pip3'
alias cls='clear'
alias chrome="open -a 'Google Chrome'"




export PATH="/usr/bin/pip3:$PATH"


export PATH="/Applications/Google\\ Chrome.app/Contents/MacOS:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin/:$PATH"


alias chrome=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --kiosk

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # 这会加载 NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # 这会加载 NVM Bash 自动补全

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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


