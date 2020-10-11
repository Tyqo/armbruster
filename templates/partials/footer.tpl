<footer class="main-footer">
	<section class="footer outer-border">
		<div class="contact-info row">
			<div class="stack">
				<div class="stack__block">
					<p class="emphasis">Brennerei Armbruster</p>
					<p>in Ammerbuch - Pfäffingen</p>
				</div>

				<div class="stack__block">
					<p>Herrschaftsgarten 8</p>
					<p>72119 Ammerbuch - Pfäffingen</p>
				</div>
			</div>

			<div class="stack">
				<div class="stack__block">
					<a class="text" href="tel:+49070731448"><span class="icon">{INCLUDE:PATHTOWEBROOT.'dist/img/icons/phone.svg'}</span><span class="underline">07073&thinsp;14&thinsp;48</span></a><br>
					<a class="text" href="mailto:info@brennerei-klaus-armbruster.de"><span class="icon">{INCLUDE:PATHTOWEBROOT.'dist/img/icons/mail.svg'}</span><span class="underline">info@brennerei-klaus-armbruster.de</span></a>
				</div>

				<div class="stack__block">
					<a class="button button--alt" href="{PAGEURL:6}">Kontakt</a>
				</div>
			</div>
		</div>

		<nav class="additional-links" aria-label="Footer">
			<ul class="row">
				{LOOP NAVIGATION (9)}
				<li class="">
					<a class="emphasis" href="{NAVIGATION:link}">{NAVIGATION:title}</a>
				</li>
				{ENDLOOP NAVIGATION}
			</ul>
		</nav>
	</section>
</footer>
