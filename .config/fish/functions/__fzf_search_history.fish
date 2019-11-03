function __fzf_search_history --description "Search command history using fzf."
    history merge
    history --null |
        fzf --read0 --tiebreak=index --height 40% --query=(commandline) |
        perl -pe 'chomp if eof' |
        read -lz result
    and commandline --replace $result
    commandline --function repaint
end