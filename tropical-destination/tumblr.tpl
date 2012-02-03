<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<meta name="text:Google Analytics ID" content=""/>
		{block:Description}
		<meta name="description" content="{MetaDescription}"/>
		{/block:Description}
		<meta name="text:Twitter Name" content=""/>
		<meta name="text:Facebook Profile URL" content=""/>
		<meta name="color:Color1" content="#00A0BB"/>
		<meta name="color:Color2" content="#F15D55"/>
        <meta name="color:Color3" content="#A6AA14"/>
        <meta name="color:Color4" content="#84614A"/>
		
		<title>{Title}{block:PostSummary} | {PostSummary}{/block:PostSummary}{block:SearchPage} | Search results for "{SearchQuery}"{/block:SearchPage}</title>
		
		<link rel="stylesheet" type="text/css" href="http://static.tumblr.com/p1lyquj/yv5lybogg/screen.css" />
		<link rel="stylesheet" type="text/css" href="http://static.tumblr.com/p1lyquj/aXRlybn4x/bebasneueregular.css" /> 
		
		<link rel="shortcut icon" href="{Favicon}" />
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		
		<style type="text/css">
			#footer { background-color: {color:Color1}; }
 			#header { background-color: {color:Color1}; }
 			#post a { color: {color:Color1};}
 			#description a { color: {color:Color2};}
 			.name { color: {color:Color2};}
 			.answertags { color: {color:Color2};}
 			.post-color { background-color: #F15D55; background: rgba(241, 93, 85, 0.8);}
 			blockquote { border-color: {color:Color2}; }
 			.tagshowing { color: {color:Color2};}
 			h3 a:hover {color: {color:Color2};}
             .post-type{ color: {color:Color3};}
             p img { padding : 0; margin-top: 10px;}
			{CustomCSS}
		</style>
		
	</head>
	<body>
	
	<div id="wrapper">
        <div id="header">
            <div id="header-bg">
               <div id="header-top">
                    <div id="header-icons">
                        <div class="btn-rss"><a href="{RSS}">RSS</a></div>
                        <div class="btn-archive"><a href="/archive">ARCHIVE</a></div>
                        {block:AskEnabled}<div class="btn-ask"><a href="/ask">ASK</a></div>{/block:AskEnabled}
                        {block:SubmissionsEnabled}<div class="btn-write"><a href="/submit">Submit a Post</a></div>{/block:SubmissionsEnabled}
                        {block:IfFacebookProfileURL}<div class="btn-fb"><a href="{text:Facebook Profile URL}" target="_blank">Facebook</a></div>{/block:IfFacebookProfileURL}
                        {block:IfTwitterName}<div class="btn-twitter"><a href="http://twitter.com/{text:Twitter Name}" target="_blank">Twitter</a></div>{/block:IfTwitterName}
                    </div>
                    <h1 class="bebasneueregular" title="{Title}"><a href="/">{Title}</a></h1>
               </div>
               
               <div id="header-end">
                    <div id="header-bot"></div>
               </div>
               
               <div class="clear"></div>
            </div>
        </div>
        <!-- /header -->
        
        <div id="container" class="clear">
        
        {block:HasPages}
        	<div id="navigation"><ul class="bebasneueregular">
	        {block:Pages}
				<li><a href="{URL}">{Label}</a></li>
			{/block:Pages}
			</ul></div>
        {/block:HasPages} 
        
        {block:Description}
            <div id="description"><h3>{Description}</h3></div>
        {/block:Description}
        
           <div id="contact-info">Maureen Graef <br />p: (603) 888 2220 <br />e: graefm@libertytravel.com</div>
        
        {block:TagPage}
			<div id="tagsdisplay"><h3 class="bebasneueregular">Posts Tagged: <span class="tagshowing">{Tag}</span></h3></div>
        {/block:TagPage}
        
        {block:Posts}
        
        <div id="post">
        	<div class="post-header">
        		<div class="post-color">
        			<div class="post-type">
        				{block:Title}<h2 class="bebasneueregular"><a href="{Permalink}">{Title}</a></h2>{/block:Title}
        				{block:Quote}<h2 class="bebasneueregular"><a href="{Permalink}">Quote</a></h2>{/block:Quote}
        				{block:Photo}<h2 class="bebasneueregular"><a href="{Permalink}">Photo</a></h2>{/block:Photo}
        				{block:Photoset}<h2 class="bebasneueregular"><a href="{Permalink}">Photo Set</a></h2>{/block:Photoset}
        				{block:Link}<h2 class="bebasneueregular"><a href="{Permalink}">Link</a></h2>{/block:Link}
        				{block:Video}<h2 class="bebasneueregular"><a href="{Permalink}">Video</a></h2>{/block:Video}
        				{block:Answer}<h2 class="bebasneueregular"><a href="{Permalink}">Answer</a></h2>{/block:Answer}
        				{block:Audio}<h2 class="bebasneueregular"><a href="{Permalink}">Audio</a></h2>{/block:Audio}
        			</div>
        			<div class="clear"></div>
        		</div>
        		<div class="post-spacer"></div>
        	</div>
        	<div class="clear"></div>
        	<div class="post-info bebasneueregular">
        		<div class="parts">{block:Date}{TimeAgo}{/block:Date}&nbsp;&nbsp;&nbsp;
        			{block:HasTags}|&nbsp;&nbsp;&nbsp;Tags:
	        			{block:Tags}
	        				<span class="tags"><a href="{TagURL}">{Tag}</a></span>
	        			{/block:Tags}
	        			&nbsp;
        			{/block:HasTags}
        		
        		{block:NoteCount}|&nbsp;&nbsp;&nbsp;Notes: <a href="{Permalink}#notes">{NoteCount}</a>{/block:NoteCount}</div>
        		<div class="clear"></div>
        	</div>
        	<div class="post-content">
        		{Video-500}
        		{block:AlbumArt}<div class="albumart"><img src="{AlbumArtURL}" alt="" width="207" height="207"/></div>{/block:AlbumArt}
				{AudioPlayerBlack}
				{Photoset-500}
				{block:Photo}{LinkOpenTag}<img src="{PhotoURL-500}" alt="{PhotoAlt}">{LinkCloseTag}{/block:Photo}
				<p>
					{block:Quote}
					<div id="quotes">
						<h3 class="bebasneueregular floatleft">"{Quote}"</h3>
						<div class="clear"></div>
						<div class="quote-name">- {Source}</div>
						<div class="clear"></div>
					</div>
					{/block:Quote}
					{block:Link}
					<h3 class="bebasneueregular floatleft"><a href="{URL}" {Target}>{Name}</a></h3><div class="clear"></div>
					{block:Description}{Description}{block:Description}
					{/block:Link}
					{block:Caption}{Caption}{block:Caption}
					{Body}
					{block:Chat}
					<ul>
					{block:Lines}
						<li class="chat">
							<div>
							{block:Label}<span class="name">{Label}</span>{/block:Label}
							<span class="message">{Line}</span>
							<div class="clear"></div>
							</div>
						</li>
					{/block:Lines}
					</ul>
					{/block:Chat}
					{block:Answer}
					<ul>
						<li class="chat">
							<div>
								<span class="answertags bebasneueregular">Question:</span>
								<span class="message bold">{Question} - {Asker}</span>
								<div class="clear"></div>
							</div>
						</li>
						<li class="chat">
							<div>
								<span class="answertags bebasneueregular">Answer:</span>
								<span class="message">{Answer}</span>
								<div class="clear"></div>
							</div>
						</li>
					</ul>
					{/block:Answer}
					
					{block:ContentSource}
					    <a href="{SourceURL}" target="_blank">
					        {lang:Source}:
					        {block:SourceLogo}
					            <img src="{BlackLogoURL}" width="{LogoWidth}"
					            height="{LogoHeight}" alt="{SourceTitle}" />
					        {/block:SourceLogo}
					        {block:NoSourceLogo}
					            {SourceLink}
					        {/block:NoSourceLogo}
					    </a>
					{/block:ContentSource}
					
					{block:PostNotes}<div id="notes">{PostNotes}</div>{/block:PostNotes}
					
					
					
				</p>
			</div>
			
        </div>
        
        {/block:Posts}
        
		</div><!--- End Container --->
		
    </div><!--- End Wrapper --->
    
	<div id="footer">
		<div id="footer-bg">
			<div id="footer-end">
				<div id="footer-top"></div>
			</div>
			<div id="footer-bot">
				{block:PreviousPage}<div class="btn-prev"><a href="{PreviousPage}">Previous</a></div>{/block:PreviousPage}
				{block:NextPage}<div class="btn-next"><a href="{NextPage}">Next</a></div>{/block:NextPage}
				{block:PermalinkPage}<div class="btn-prev"><a href="javascript:javascript:history.go(-1)">Back</a></div>{/block:PermalinkPage}
				{block:TagPage}<div class="btn-prev"><a href="javascript:javascript:history.go(-1)">Back</a></div>{/block:TagPage}
			</div>
		</div>
	</div>
	
	{block:IfGoogleAnalyticsID}
    
    <script type="text/javascript">
		var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
		document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
		</script>
		<script type="text/javascript">
		try {
		var pageTracker = _gat._getTracker("{text:Google Analytics ID}");
		pageTracker._trackPageview();
		} catch(err) {}
	</script>
	
	{/block:IfGoogleAnalyticsID}

</body>
</html>