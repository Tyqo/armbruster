<div class="menu-toggle">
	<button id="js-nav-toggle" aria-expanded="false" aria-label="Menu toggle" class="icon" type="button" name="button">
		{INCLUDE:PATHTOWEBROOT.'dist/img/icons/burger_close.svg'}
	</button>
</div>

<div class="mobile-nav">
	<nav  class="mobile-nav__wrapper" role="Mobile-nav">

		<ul class="mobile-nav__list">
			{LOOP NAVIGATION (1)}
			<li class="mobile-nav__item">
				<a class="mobile-nav__link" {IF("{NAVIGATION:id}" == "{PAGEID}")}aria-current="location"{ENDIF} href="{NAVIGATION:link}">
					{NAVIGATION:title}
				</a>
			</li>
			{ENDLOOP NAVIGATION}
		</ul>

	  	<!-- <a href="/" class="mobile-nav__logo">
				<span class="icon" aria-hidden="true">
					{INCLUDE:PATHTOWEBROOT.'dist/img/icons/icon_text.svg'}
				<span class="visualy-hidden">
					{PAGETITLE:2}
				</span>
			</a> -->

	</nav>
</div>
