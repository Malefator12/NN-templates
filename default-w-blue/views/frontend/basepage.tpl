<!doctype html> 
<head>
<!-- Start Thumbnail view edits
        <script type="text/javascript" src="{$serverroot}views/scripts/jquery.tooltipster.js"></script>
        <script>
                $(document).ready(function() {
                $('.tooltip').tooltipster({
                });
                });
        </script>

<link href="{$smarty.const.WWW_TOP}/views/styles/imagerow.css" rel="stylesheet" type="text/css" />
End Thumbnail view edits -->

	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=9" />
	<meta name="keywords" content="{$page->meta_keywords}{if $page->meta_keywords != "" && $site->metakeywords != ""},{/if}{$site->metakeywords}" />
	<meta name="description" content="{$page->meta_description}{if $page->meta_description != "" && $site->metadescription != ""} - {/if}{$site->metadescription}" />	
	<meta name="application-name" content="newznab-{$site->version}" />
	<title>{$page->meta_title}{if $page->meta_title != "" && $site->metatitle != ""} - {/if}{$site->metatitle}</title>
{if $loggedin=="true"}	<link rel="alternate" type="application/rss+xml" title="{$site->title} Full Rss Feed" href="{$smarty.const.WWW_TOP}/rss?t=0&amp;dl=1&amp;i={$userdata.ID}&amp;r={$userdata.rsstoken}" />{/if}

	<link href="{$smarty.const.WWW_TOP}/templates/default-w-blue/styles/style.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="{$smarty.const.WWW_TOP}/templates/default-w-blue/styles/jquery.qtip.css" rel="stylesheet" type="text/css" media="screen" />
{if $site->google_adsense_acc != ''}	<link href="http://www.google.com/cse/api/branding.css" rel="stylesheet" type="text/css" media="screen" />
{/if}
	<link rel="shortcut icon" type="image/ico" href="{$smarty.const.WWW_TOP}/templates/default-w-blue/images/favicon.ico"/>
	<link rel="search" type="application/opensearchdescription+xml" href="{$smarty.const.WWW_TOP}/opensearch" title="{$site->title|escape}" />
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="{$smarty.const.WWW_TOP}/templates/default-w-blue/scripts/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="{$smarty.const.WWW_TOP}/templates/default-w-blue/scripts/jquery.qtip2.js"></script>
	<script type="text/javascript" src="{$smarty.const.WWW_TOP}/templates/default-w-blue/scripts/utils.js"></script>
	<script type="text/javascript" src="{$smarty.const.WWW_TOP}/templates/default-w-blue/scripts/sorttable.js"></script>

	<script type="text/javascript">
	/* <![CDATA[ */	
		var WWW_TOP = "{$smarty.const.WWW_TOP}";
		var SERVERROOT = "{$serverroot}";
		var UID = "{if $loggedin=="true"}{$userdata.ID}{else}{/if}";
		var RSSTOKEN = "{if $loggedin=="true"}{$userdata.rsstoken}{else}{/if}";
	/* ]]> */		
	</script>
	{$page->head}
</head>
<body {$page->body}>

	{strip}
	<div id="statusbar">
		{if $loggedin=="true"}
			Welcome back <a href="{$smarty.const.WWW_TOP}/profile">{$userdata.username}</a>. <a href="{$smarty.const.WWW_TOP}/logout">Logout</a>
		{else}
			<a href="{$smarty.const.WWW_TOP}/login">Login</a> or <a href="{$smarty.const.WWW_TOP}/register">Register</a>
		{/if}
	</div>
	{/strip}

	<div id="logo">
		<a class="logolink" title="{$site->title} Logo" href="{$smarty.const.WWW_TOP}{$site->home_link}"><img class="logoimg" alt="{$site->title} Logo" src="{$smarty.const.WWW_TOP}/templates/default-w-blue/images/clearlogo.png" /></a>

		{if $site->menuposition==2}<ul>{$main_menu}</ul>{/if}

		<h1><a href="{$smarty.const.WWW_TOP}{$site->home_link}">{$site->title}</a></h1>
		<p><em>{$site->strapline}</em></p>

		{$site->adheader}		
		
	</div>
	<hr />
	
	<div id="header">
		<div id="menu"> 

			{if $loggedin=="true"}
				{$header_menu}
			{/if}
						
		</div> 
	</div>
	
	<div id="page">

		<div id="content">
			{$page->content}
		</div>

		{if $site->menuposition==1}
		<div id="sidebar">
			<ul>		
			
			{$main_menu}
			
			{$article_menu}
	
			{$useful_menu}
			
			{$recentposts_menu}
			
			{if $site->google_adsense_acc != '' && $site->google_adsense_search != ''}
			{literal}
				<li>
				<h2>Search for {/literal}{$site->term_plural}{literal}</h2> 
				<div style="padding-left:20px;">
					<div class="cse-branding-bottom" style="background-color:#FFFFFF;color:#000000">
					  <div class="cse-branding-form">
					    <form action="http://www.google.co.uk/cse" id="cse-search-box" target="_blank">
					      <div>
					        <input type="hidden" name="cx" value="partner-{/literal}{$site->google_adsense_acc}{literal}:{/literal}{$site->google_adsense_search}{literal}" />
					        <input type="hidden" name="ie" value="UTF-8" />
					        <input type="text" name="q" size="10" />
					        <input type="submit" name="sa" value="Search" />
					      </div>
					    </form>
					  </div>
					  <div class="cse-branding-logo">
					    <img src="http://www.google.com/images/poweredby_transparent/poweredby_FFFFFF.gif" alt="Google" />
					  </div>
					  <div class="cse-branding-text">
					    Custom Search
					  </div>
					</div>
				</div>
				</li>		
			{/literal}
			{/if}
			
			<li>
				<a title="Sickbeard - The ultimate usenet PVR" href="http://www.sickbeard.com/"><img class="menupic" alt="Sickbeard - The ultimate usenet PVR" src="{$smarty.const.WWW_TOP}/templates/default-w-blue/images/sickbeard.png" /></a>
			</li>
			<li>
				<a title="Sabznbd - A great usenet binary downloader" href="http://www.sabnzbd.org/"><img class="menupic" alt="Sabznbd - A great usenet binary downloader" src="{$smarty.const.WWW_TOP}/templates/default-w-blue/images/sabnzbd.png" /></a>
			</li>
			</ul>
		</div>
		{/if}
	
		<div style="clear: both;text-align:right;">
			<a class="w3validator" href="http://validator.w3.org/check?uri=referer">
			<img src="{$smarty.const.WWW_TOP}/templates/default-w-blue/images/valid-xhtml10.png" alt="Valid XHTML 1.0 Transitional" height="31" width="88" />
			</a> 
		</div>
		
	</div>

	<div class="footer">
	<p>
		{$site->footer}
		<br /><br /><br /><a title="newznab - A usenet indexing web application with community features." href="http://www.newznab.com/">newznab</a> all rights reserved {$smarty.now|date_format:"%Y"}. <br/> <a title="Chat about newznab" href="http://www.newznab.com/chat.html">newznab chat</a> <br/><a href="{$smarty.const.WWW_TOP}/terms-and-conditions">{$site->title} terms and conditions</a>
	</p>
	</div>
	{if $site->google_analytics_acc != ''}
	{literal}
	<script type="text/javascript">
	/* <![CDATA[ */	
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', '{/literal}{$site->google_analytics_acc}{literal}']);
	  _gaq.push(['_trackPageview']);
	  _gaq.push(['_trackPageLoadTime']);

	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	/* ]]> */	
	</script>

	{/literal}
	{/if}

{if $loggedin=="true"}
<input type="hidden" name="UID" value="{$userdata.ID}" />
<input type="hidden" name="RSSTOKEN" value="{$userdata.rsstoken}" />
{/if}
	
</body>
</html>
