#!/bin/sh
# config, for if certain features are availble.

if mutt -v | grep -q patched; then
	echo set sidebar_delim = ' '
	echo unset sidebar_shortpath
fi

if mutt -v | grep features/xtitles; then
	set xterm_set_titles
	set xterm_title="mutt %f (%n/%m)"
fi
