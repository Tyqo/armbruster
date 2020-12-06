<header class="main-header">
  <nav class="center-nav outer-border" aria-label="Main">
		<a href="/" class="link logo">
			<span class="header-icon" aria-hidden="true">
				{INCLUDE:PATHTOWEBROOT.'dist/img/logo.svg'}
			</span>
			<span class="visualy-hidden">
				{PAGETITLE:2}
			</span>
		</a>
    <ul class="center-nav__list">
      {LOOP NAVIGATION (1)}
      <li class="center-nav__item">
        <a class="center-nav__link" {IF("{NAVIGATION:id}" == "{PAGEID}")}aria-current="location"{ENDIF} href="{NAVIGATION:link}">
					{NAVIGATION:title}
				</a>
      </li>
      {ENDLOOP NAVIGATION}
    </ul>
  </nav>
	{INCLUDE:PATHTOWEBROOT.'templates/partials/mobile_nav.tpl'}
</header>
