<section class="assortment brand">
	<div class="outer-border">
		<h1 class="headline">Obstbrände</h1>
		<ul class="grid">
			{LOOP VAR(brand)}
			<li class="grid__item">
				<figure class="grid__head">
					<img class="image" src="/{VAR:imagePath}{VAR:assortment_image}" alt="">
				</figure>
				<div class="grid__body">
					<h2 class="teaser">{VAR:assortment_name}</h2>
					<p>{VAR:assortment_subline}</p>
					<p>{VAR:assortment_info}</p>
				</div>
				{IF ({ISSET:assortment_cta})}
				<aside class="assortment__cta">
					<div>{VAR:assortment_cta}</div>
				</aside>
				{ENDIF}
			</li>
			{ENDLOOP VAR}
		</ul>
	</div>
</section>
<section class="assortment likor">
	<div class="outer-border">
		<h1 class="headline">Liköre und Geiste</h1>
		<ul class="grid">
			{LOOP VAR(likor)}
			<li class="grid__item">
				<figure class="grid__head">
					<img class="image" src="/{VAR:imagePath}{VAR:assortment_image}" alt="">
				</figure>
				<div class="grid__body">
					<h2 class="teaser">{VAR:assortment_name}</h2>
					<p>{VAR:assortment_subline}</p>
					<p>{VAR:assortment_info}</p>
				</div>
				{IF ({ISSET:assortment_cta})}
				<aside class="assortment__cta">
					<div>{VAR:assortment_cta}</div>
				</aside>
				{ENDIF}
			</li>
			{ENDLOOP VAR}
		</ul>
	</div>
</section>
