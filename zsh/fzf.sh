
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 50% --reverse --border'
export FZF_TMUX="1"
export FZF_TMUX_OPTS="-p 60%"
export FZF_CTRL_T_OPTS="\
    --preview 'bat  --color=always --theme="Nord" --style=plain --line-range :100 {}' \
    --preview-window=border-sharp,right:60%"


######################################################
fvim() {
  local file
  file=$(
         rg --files --hidden --follow --glob "!**/.git/*" | fzf-tmux -p 60% \
             --preview 'bat  --color=always --theme="Nord" --style=header,grid {}' --preview-window=right:60%
     )
  vi "$file"
}

######################################################
. ~/z/z.sh
fzf-z-search() {
    local res=$(
        z | sort -rn | cut -c 12- | fzf-tmux -p 60% \
             --preview 'bat  --color=always --theme="Nord" --style=header,grid {}' --preview-window=right:60%
    )
    if [ -n "$res" ]; then
        BUFFER+="cd $res"
        zle accept-line
    else
        return 1
    fi
}

zle -N fzf-z-search
bindkey '^e' fzf-z-search

