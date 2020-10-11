<figure class="divider__aside figure">
	{IF({LAYOUTMODE})}
		{IMAGE:1:media/Layoutmode}
	{ELSE}
		<img class="divider__image image" src="{IF({ISSET:image1:CONTENT})}{IMAGESRC:1}{ELSE}/dist/img/noimage.svg{ENDIF}" alt="">
	{ENDIF}
</figure>
<article class="divider__article">
	<h1 class="divider__headline headline">{HEAD:1}</h1>
	{IF({ISSET:head2:content} || {LAYOUTMODE})}
	<p class="divider__teaser teaser">
		{HEAD:2}
	</p>
	{ENDIF}
	<div class="divider__text copy-text">
		{HTML:1}
	</div>
</article>
