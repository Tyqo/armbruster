<div class="">
	<div class="head-{UNIQUEID} visualy-hidden">
		{TEXT:5}
	</div>

	<select class="select-{UNIQUEID}">
		<option value=""> -- Dreieck wählen -- </option>
		<option value="bottom-left--75">Links unten 75%</option>
		<option value="bottom-right--75">Rechts unten 75%</option>
		<option value="top-left--75">Links oben 75%</option>
		<option value="top-right--75">Rechts oben 75%</option>
		<option value="bottom-left--50">Links unten 50%</option>
		<option value="bottom-right--50">Rechts unten 50%</option>
		<option value="top-left--50">Links oben 50%</option>
		<option value="top-right--50">Rechts oben 50%</option>
		<option value="bottom-left--33">Links unten 33%</option>
		<option value="bottom-right--33">Rechts unten 33%</option>
		<option value="top-left--33">Links oben 33%</option>
		<option value="top-right--33">Rechts oben 33%</option>
		<option value="bottom-left--25">Links unten 25%</option>
		<option value="bottom-right--25">Rechts unten 25%</option>
		<option value="top-left--25">Links oben 25%</option>
		<option value="top-right--25">Rechts oben 25%</option>
	</select>
	
	<script type="text/javascript">
		var object{UNIQUEID} = {
			select: document.querySelector('.select-{UNIQUEID}'),
			head: document.querySelector('.head-{UNIQUEID}'),
			value: document.querySelector('.head-{UNIQUEID} .cmt-element-wrapper').innerHTML.trim(),
			section: document.querySelector('.section-{UNIQUEID}'),
		};
		
		console.log(object{UNIQUEID}.value);
		if (object{UNIQUEID}.value) {
			object{UNIQUEID}.select.value = object{UNIQUEID}.value;
			object{UNIQUEID}.section.classList.add(object{UNIQUEID}.value);
		}
		
		object{UNIQUEID}.select.onchange = function() {
			console.log(object{UNIQUEID}.select.value);
			object{UNIQUEID}.head.innerHTML = object{UNIQUEID}.select.value;
			
			if (object{UNIQUEID}.value) {
				object{UNIQUEID}.section.classList.remove(object{UNIQUEID}.value);
			}

			object{UNIQUEID}.value = object{UNIQUEID}.select.value;
			object{UNIQUEID}.section.classList.add(object{UNIQUEID}.value);
		}
	</script>
</div>