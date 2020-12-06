{EVAL}
	$text++;
{ENDEVAL}

<div class="object-element">
	{IF ({LAYOUTMODE})}
		{IMAGE:1:media/layoutmode}
		<dl class="">
			<dt>Kurze Bildbeschreibung</dt>
			<dd>{TEXT:{USERVAR:text}}</dd>
		</dl>
	{ELSE}
		<figure class="figure">
			<img class="image" src="{IMAGESRC:1}" alt="{TEXT:{USERVAR:text}}">
		</figure>
	{ENDIF}
</div>
