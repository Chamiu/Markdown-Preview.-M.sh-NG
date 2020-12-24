#!/bin/bash
#%%%{CotEditorXInput=AllText}%%%
#%%%{CotEditorXOutput=None}%%%

INPUT=$(/opt/HomeBrew/bin/cmark)
HTML="<html><style>body { font-family: -apple-system; }</style><body>$INPUT</body></html>"
OUTPUT=$(echo "$HTML" | base64 | cat <(echo -n "data:text/html;charset=UTF-8;base64,") -)
osascript -e "tell application \"Safari\" to open location \""$OUTPUT"\""
