{EVAL}
	$image++;
	$text++;
{ENDEVAL}

<div class="object-element">
	{IF ({LAYOUTMODE})}
		{IMAGE:{USERVAR:image}:media/layoutmode}
		<dl class="">
			<dt>Kurze Bildbeschreibung</dt>
			<dd>{TEXT:{USERVAR:text}}</dd>
		</dl>
	{ELSE}
		<figure class="figure">
			<img class="image" src="{IMAGESRC:{USERVAR:image}}" alt="{TEXT:{USERVAR:text}}">
		</figure>
	{ENDIF}
</div>
