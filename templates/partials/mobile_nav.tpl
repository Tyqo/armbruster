<nav class="mobile-nav" role="Mobile-nav">
	<input class="mobile-nav__toggle visualy-hidden" aria-label="Burger Menü ein- und ausblenden" id="mobile-nav-toggle" type="checkbox" name="mobile-nav-toggle" value="">
  <div class="mobile-nav__wrapper">
		<label class="mobile-nav__icon icon" aria-hidden="true" for="mobile-nav-toggle">
			{INCLUDE:PATHTOWEBROOT.'dist/img/icons/close.svg'}
		</label>
		<div class="mobile-nav__body">	
  	<a href="/" class="mobile-nav__logo">
			<span class="icon" aria-hidden="true">
				{INCLUDE:PATHTOWEBROOT.'dist/img/icons/icon_text.svg'}
			<span class="visualy-hidden">
				{PAGETITLE:2}
			</span>
		</a>
		<ul class="mobile-nav__list">
	    {LOOP NAVIGATION (1)}
	    <li class="mobile-nav__item">
	      <a class="mobile-nav__link" {IF("{NAVIGATION:id}" == "{PAGEID}")}aria-current="location"{ENDIF} href="{NAVIGATION:link}">
					{NAVIGATION:title}
				</a>
	    </li>
	    {ENDLOOP NAVIGATION}
	  </ul>
	</div>
	</div>
</nav>
