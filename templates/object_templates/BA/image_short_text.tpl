<section class="sidebyside">
  <figure class="sidebyside__figure figure">
  {IF({LAYOUTMODE})}
    {IMAGE:1:media/layoutmode}
    <figcaption>
      <h3>Kurze Bildbeschreibung</h3>
      <p>{TEXT:2}</p>
    </figcaption>
  {ELSE}
    <picture class="sidebyside__picture picture">
      <img class="sidebyside__image image" src="{IMAGESRC:1}" alt="{TEXT:2:strip_tags}">
    </picture>
  {ENDIF}
  </figure>

  <article class="sidebyside__article">
		<!-- <div class="sidebyside__logo">
			{INCLUDE:PATHTOWEBROOT.'dist/img/icons/'}
		</div> -->
    <h2 class="sidebyside__headline headline">{HEAD:1}</h2>
    <p class="sidebyside__text text">{HTML:1}</p>
  </article>
</section>
