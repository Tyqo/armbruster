<article class="divider outer-border">
	<figure class="divider__aside figure">
		{INCLUDE:PATHTOWEBROOT.'templates/object_templates/image.tpl'}
	</figure>
	<article class="divider__article">
		{INCLUDE:PATHTOWEBROOT.'templates/object_templates/head1.tpl'}
		{IF({ISSET:head2:content} || {LAYOUTMODE})}
			{INCLUDE:PATHTOWEBROOT.'templates/object_templates/head2.tpl'}
		{ENDIF}
		{INCLUDE:PATHTOWEBROOT.'templates/object_templates/html.tpl'}
	</article>
</article>
