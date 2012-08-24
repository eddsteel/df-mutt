#!/bin/sh
# config, for if certain features are availble.

if mutt -v | grep -q patched; then
	echo 'set sidebar_delim = " "'
	echo 'unset sidebar_shortpath'
fi

if mutt -v | grep -q 'features/xtitles'; then
	echo 'set xterm_set_titles'
	echo 'set xterm_title="mutt %f (%n/%m)"'
fi

if test -d ~/.gnupg; then
	echo 'source "~/.mutt/pgp"'
fi

case `uname` in
	"Darwin")
		echo 'set mailcap_path = ~/.mutt/mailcap.osx'
		echo 'set query_command="goobook query \"%s\""'
		echo 'bind editor <Tab> complete-query'
		echo 'set beep_new'
		;;
	*)
		echo 'set mailcap_path = ~/.mutt/mailcap'
		;;
esac
