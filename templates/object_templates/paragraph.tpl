{INCLUDE:PATHTOWEBROOT.'templates/object_templates/template-settings.tpl'}

{USERVAR:head}

{EVAL}
	$head = 1;
{ENDEVAL}

{USERVAR:head}

<article class="">
	{INCLUDE:PATHTOWEBROOT.'templates/object_templates/head1.tpl'}
	{INCLUDE:PATHTOWEBROOT.'templates/object_templates/head2.tpl'}
	{INCLUDE:PATHTOWEBROOT.'templates/object_templates/head3.tpl'}
	{INCLUDE:PATHTOWEBROOT.'templates/object_templates/text.tpl'}
	{INCLUDE:PATHTOWEBROOT.'templates/object_templates/html.tpl'}
	{INCLUDE:PATHTOWEBROOT.'templates/object_templates/text.tpl'}
</article>
