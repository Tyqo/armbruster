<section class="start-slider">
  <ul id="js-start-slider">
  	{LOOP VAR(images)}
  	<li class="start-slide">
  		<figure class="start-slide">
        <img class="start-slide__image" src="{VAR:galleryPath}{VAR:gallery_image_internal_filename}" alt="{VAR:gallery_image_title}">
  		</figure>
  	</li>
  	{ENDLOOP VAR}
  </ul>
</section>
