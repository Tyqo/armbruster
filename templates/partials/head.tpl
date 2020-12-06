<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>{IF({ISSET:PAGE_TITLE})}{CONSTANT:PAGE_TITLE}{ELSE}{PAGETITLE}{ENDIF} | {CONSTANT:WEBNAME}</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta name="author" content="HALMA GmbH &amp; Co. KG Agentur für Werbung" />
	<meta name="keywords" content="{PAGEVAR:cmt_meta_keywords:recursive}" />
	<meta name="description" content="{PAGEVAR:cmt_meta_description:recursive}" />

	<link rel="canonical" href="{CANONICAL}">
	<link rel="stylesheet" href="/dist/css/main.css">

	<!-- Favicons -->

	<link rel="shortcut icon" href="/dist/img/favicons/favicon.ico" />
	<link rel="icon" type="image/svg+xml" href="/dist/img/favicon.svg">
	<link rel="icon" sizes="48x48" href="/dist/img/favicons/favicon-48x48.ico">
	<link rel="icon" sizes="32x32" href="/dist/img/favicons/favicon-32x32.ico">
	<link rel="icon" sizes="16x16" href="/dist/img/favicons/favicon-16x16.ico">
	<link rel="apple-touch-icon" href="/dist/img/favicons/apple-touch-icon.png">

	<!-- Schema.org JSON+LD -->
	<script type="application/ld+json">
		{
			"@context": "http://schema.org/",
			"@type": "WebSite",
			"name": "{CONSTANT:WEBNAME}",
			"url": "{CANONICAL}"
		}
	</script>

	<!-- Schema.org JSON+LD -->
	<script type="application/ld+json">
		{
			"@context": "http://schema.org/",
			"@type": "Organization",
			"name": "{CONSTANT:WEBNAME}",
			"legalName": "Michael Walczuch",
			"url": "{CANONICAL}",
			"email": "mw@der-troubleshooter.de",
			"telephone": "+49 731 / 950 882 00",
			"address": {
				"@type": "PostalAddress",
				"addressLocality": "Blaustein",
				"postalCode": "89134",
				"streetAddress": "Erhard-​Grözinger-Straße 20"
			}
		}
	</script>


	<!-- Social Media: https://css-tricks.com/essential-meta-tags-social-media/ -->
	<meta property="og:type" content="website" />
	<meta property="og:title" content="{IF({ISSET:PAGE_TITLE})}{CONSTANT:PAGE_TITLE}{ELSE}{PAGETITLE}{ENDIF} | {CONSTANT:WEBNAME}">
	<meta property="og:description" content="{PAGEVAR:cmt_meta_description:recursive}">
	{IF("{PAGEVAR:cmt_meta_image:recursive}" != "")}
	<meta property="og:image" content="{CANONICAL}/media/{PAGEVAR:cmt_meta_image:recursive}">
	{ENDIF}
	<meta property="og:url" content="{CANONICAL}">

	<!-- Twitter -->
	<meta name="twitter:title" content="{IF({ISSET:PAGE_TITLE})}{CONSTANT:PAGE_TITLE}{ELSE}{PAGETITLE}{ENDIF} | {CONSTANT:WEBNAME}">
	<meta name="twitter:description" content="{PAGEVAR:cmt_meta_description:recursive}">
	{IF("{PAGEVAR:cmt_meta_image:recursive}" != "")}
	<meta name="twitter:image" content="/media/{PAGEVAR:cmt_meta_image:recursive}">
	{ENDIF}
	<meta name="twitter:card" content="summary_large_image">


  {LAYOUTMODE_STARTSCRIPT}
  {IF (!{LAYOUTMODE})}
    <!-- Add javascript libraries here -->
		<script src="/dist/js/main.js" charset="utf-8"></script>
    <script src="/dist/js/vendor/jquery.min.js" charset="utf-8"></script>
    <script src="/dist/js/vendor/slick.min.js" charset="utf-8"></script>
		<script src="/dist/js/vendor/Hyphenopoly_Loader.js"></script>
    <link rel="stylesheet" href="/dist/css/vendor/slick.css">

  {ENDIF}
</head>
