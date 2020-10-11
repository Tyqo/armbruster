<section class="article article--small-left {IF(!{LAYOUTMODE})}{TEXT:5}{ELSE}section-{UNIQUEID:new}{ENDIF}">
	<article class="article__wrapper">
		<h2 class="article__headline headline">{HEAD:1}</h2>

		<div class="article__text text">
			{HTML:1}
		</div>
	</article>
</section>

{IF({LAYOUTMODE})}
	{INCLUDE:PATHTOWEBROOT.'templates/components/triangle_select.tpl'}
{ENDIF}
