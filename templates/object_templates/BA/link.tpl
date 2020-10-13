{EVAL}
	$text++;
{ENDEVAL}

<a class="button" href="{IF({LAYOUTMODE})}#{ELSE}{PAGEURL:3}{ENDIF}">{TEXT:{USERVAR:text}}</a>
