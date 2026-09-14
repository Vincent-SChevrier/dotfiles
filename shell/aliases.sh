# ~/dotfiles/shell/aliases.sh
alias ..='cd ..'
alias ...='cd ../..'
alias la='ls -a'
alias ll='ls -alF'
alias gs='git status --short'
alias gl='git log --oneline --decorate -10'

mkcd() {
	if [ "$#" -ne 1 ]; then
		printf 'Usage: mkcd NOM_DOSSIER\n' >&2
		return 2
	fi
	mkdir -p -- "$1" && cd -- "$1"
}
