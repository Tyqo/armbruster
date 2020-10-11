<!doctype html>
<html lang="{PAGELANG}">

	{INCLUDE:PATHTOWEBROOT.'templates/partials/head.tpl'}

	<body>
		{INCLUDE:PATHTOWEBROOT.'templates/partials/header.tpl'}
		<main class="main-content">
			{LOOP CONTENT(1)}{ENDLOOP CONTENT}
		</main>
		{INCLUDE:PATHTOWEBROOT.'templates/partials/footer.tpl'}
		{LAYOUTMODE_ENDSCRIPT}
	</body>
</html>
