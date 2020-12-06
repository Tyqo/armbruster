{IF ({LAYOUTMODE})}
	{IMAGE:1:media/layoutmode}
	<dl class="">
		<dt>Kurze Bildbeschreibung</dt>
		<dd>{HEAD:1}</dd>
	</dl>
{ELSE}
	<figure class="figure figure--big">
		<img class="image" src="{IMAGESRC:1}" alt="{HEAD:1}">
	</figure>
{ENDIF}
