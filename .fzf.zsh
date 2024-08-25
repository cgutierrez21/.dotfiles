eval "$(fzf --zsh)"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# --- setup fzf theme ---
fg="#ffffff"
bg="#1A0021"
bg_highlight="#002938"
purple="#9600EA"
blue="#165AFF"
cyan="#01E2F1"

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"

export FZF_PREVIEW='
    if [[ $(file --mime-type {}) =~ image.* ]]; then
        kitty +kitten icat {}
    else
        bat --style=numbers --color=always {}
    fi
'

