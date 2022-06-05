source ~/.zshrc

eval "$(rbenv init -)"
# added by Anaconda3 2019.07 installer

# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false ${HOME}/anaconda3/bin/conda shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "${HOME}/anaconda3/etc/profile.d/conda.sh" ]; then
        . "${HOME}/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="${HOME}/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

export PATH="$HOME/.cargo/bin:$PATH"

# Created by `pipx` on 2021-12-11 04:40:14
export PATH="$PATH:/Users/vmat/Library/Python/3.9/bin"

# Created by `pipx` on 2021-12-11 04:40:26
export PATH="$PATH:/Users/vmat/dotfiles/config/.local/bin"

# >>> coursier install directory >>>
export PATH="$PATH:/Users/vmat/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<
