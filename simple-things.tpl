<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="Description" content="{MetaDescription}" />
	<title>{block:SearchPage}{lang:Search results for SearchQuery} - {/block:SearchPage}{block:PostTitle}{PostTitle} - {/block:PostTitle}{Title}</title>
	
	<link rel="shortcut icon" href="{Favicon}" />
	<link rel="apple-touch-icon" href="{PortraitURL-128}"/>
	<link rel="alternate" type="application/rss+xml" href="{RSS}" />
    
	<!-- Default Colors -->
	<meta name="color:Background" content="#eee" />
	<meta name="color:Main Text" content="#555" />
	<meta name="color:Sidebar Text" content="#555" />
	<meta name="color:Link" content="#860000" />
	<meta name="color:Sidebar Link" content="#860000" />
	<meta name="color:Navigation Link" content="#555" />

	<!-- Options -->
	<meta name="if:Show Tags" content="1" />
	<meta name="if:Show Archive Link" content="1" />
	<meta name="if:Show Home Link in Navigation" content="1" />
	<meta name="if:Show RSS Link in Navigation" content="1" />
	<meta name="if:Remove White Shadow on Sidebar Text" content="0" />
	<meta name="if:Show Album Artwork on Audio Posts" content="1" />
	<meta name="if:Force Uppercase" content="1" />
	<meta name="if:Show date flag on new dates only" content="0" />
	<meta name="if:Show People I Follow" content="0" />
	<meta name="if:Show Posts I Like" content="0" />
	<meta name="if:Enable Endless Scrolling" content="0" />

	<meta name="text:Random Post Label" content="" />
	<meta name="text:Disqus Shortname" content="" />
        <meta name="text:Google Analytics UA" content="" />
    
	<style type="text/css">
	/* Simple Things v1.3 - A Tumblr theme by Dan Hauk http://www.dan-hauk.com */

	html,body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td {margin:0; padding:0;} table {border-collapse:collapse; border-spacing:0;} fieldset,img {border:0;} address,caption,cite,code,dfn,em,strong,th,var {font-style:normal; font-weight:normal;} ol,ul {list-style:none;} caption,th {text-align:left;} h1,h2,h3,h4,h5,h6 {font-size:100%;} q:before,q:after {content:'';} abbr,acronym {border:0;} a img {border: 0;}
		
	* {outline:none; -moz-outline:none;}
	
	strong { font-style:inherit; font-weight: bold; }
	em { font-style: italic; }
	
	.clear {clear:both; height:1px; margin-bottom:-1px;}
	
	/* Here we go */
	body {
		background: {color:Background};
		color: {color:Main Text};
		font-family: Helvetica, Arial, sans-serif;
		font-size: 12px;
		text-align: center;
		}
	
	#wrap {
		background: url(http://static.tumblr.com/2wjmz5y/G4Klap7xg/simplethings-header-bg.png) repeat-x top left;
                {block:IfEnableEndlessScrolling}
                padding-bottom: 40px;
                {/block:IfEnableEndlessScrolling}
		}
	
	#container {
		margin: 0 auto;
		text-align: left;
		width: 800px;
		}
	
	a { color: {color:Link}; text-decoration: none; }
	a:hover { color: #000; text-decoration: underline; }
	
	/***** Header *****/
	#title {
		color: #ddd;
		float: left;
		font-size: 30px;
		font-weight: bold;
		letter-spacing: -.1em;
		line-height: 61px;
		margin-bottom: 10px;
		text-shadow: -1px -1px #000;
		{block:IfForceUppercase}text-transform: uppercase;{/block:IfForceUppercase}
		}
	
	#title a {
		color: #ddd;
		text-decoration: none;
		}
	
	#header-search-bar {
		background: url(http://static.tumblr.com/2wjmz5y/pgElav31l/simplethings-search-full.png) no-repeat top left;
		float: right;
		height: 30px;
		margin-top: 15px;
		width: 279px;
		}
	
	#search-input {
		background: 0;
		border: 0;
		color: #666;
		font-family: Helvetica, Arial, sans-serif;
		font-size: 12px;
		margin: 8px 0 0 27px;
		width: 180px;
		}
	
	#search-submit {
		background: 0;
		border: 0;
		cursor: pointer;
		font-size: 1px;
		height: 27px;
		text-indent: -9999em;
		width: 68px;
		}
	
	#header-rss {
		background: #915909 url(http://static.tumblr.com/2wjmz5y/5YSlapiet/simplethings-rss-btn.png) repeat-x top left;
		border: 1px solid #000;
		border-radius: 5px;
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		-moz-box-shadow: 0 1px #5a636b;
		-webkit-box-shadow: 0 1px #5a636b;
		color: #4a2e06;
		display: block;
		font-weight: bold;
		float: right;
		height: 26px;
		line-height: 28px;
		margin: 15px 0 0 10px;
		padding: 0 10px;
		text-shadow: 1px 1px #c0965b;
		}
	
	#header-rss:hover { text-decoration: none; }
	
	#header-rss span {
		background: url(http://static.tumblr.com/2wjmz5y/4Qylapilt/simplethings-rss-icon.png) no-repeat left center;
		display: block;
		padding-left: 15px;
		}
	
	/***** Posts *****/
	#left-column {
		float: left;
		margin: 40px 30px 0 0;
		width: 520px;
		}
	
	#left-column h2 {
		font-size: 20px;
		text-shadow: 1px 1px #fff;
		{block:IfForceUppercase}text-transform: uppercase;{/block:IfForceUppercase}
		}
	
	.newpost { height: 40px; }
	
	#left-column .date {
		background: url(http://static.tumblr.com/2wjmz5y/gtnlap7xz/simplethings-date-flag.png) no-repeat right center;
		color: #fff;
		float: left;
		height: 40px;
		margin: 20px 0 0 -75px;
		width: 75px;
		}
	
	.date .month,
	.date .day {
		display: block;
		text-align: center;
		text-transform: uppercase;
		width: 75px;
		}
	
	.date .month { font-size: 10px; margin: 0; padding: 5px 0 0; }
	.date .day { font-size: 24px; line-height: .8em; margin: 0; }
	
	.month a,
	.day a { color: #fff; display: block; }
	.month a:hover,
	.day a:hover { text-decoration: none;}
	
	#left-column .post {
		background: #fff;
		border: 1px solid #ccc;
		border-radius: 5px;
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		float: left;
		padding-top: 20px;
		width: 520px;
		}
	
	.post h3 {
		font-size: 18px;
		padding: 0 10px 15px;
		{block:IfForceUppercase}text-transform: uppercase;{/block:IfForceUppercase}
		}

        .post h1, .post h2 {
                font-size:18px;
                padding:0 10px 15px;
                }

        .post h2 {font-size:16px}
	
	.post p {
                line-height: 1.5em;
                padding: 0 10px 15px;
                text-align:left;
                }
	
	.post img { max-width: 500px; }
	
	.post ol {
		list-style: decimal;
		margin: 0 40px 15px;
		}
	
	.post ol li { padding: 3px 0; }

	.post ul { list-style: disc; margin: 0 40px 15px; }
	
	.post ul li { padding: 3px 0; }
	
	.post blockquote {
		border-left: 3px solid #ddd;
		font-style: italic;
		margin: 0 10px 20px;
		padding-left: 10px;
		}
	
	.postmeta {
		background: #dee9f4;
		color: #365c7f;
		min-height: 25px;
		overflow: hidden;
		text-shadow: 1px 1px #fff;
		}
	
	.postmeta a { color: #365c7f; }
	
	.postmeta p { padding: 5px 0; }
	
	.postmeta .posttime,
	.postmeta .reblogged {
		float: left;
		margin-left: 10px;
		padding-left: 16px;
		}
	
	.postmeta .posttime { background: url(http://static.tumblr.com/2wjmz5y/zFwlauprl/simplethings-clock.png) no-repeat left center; padding-left: 18px; }
	.postmeta .reblogged { background: url(http://static.tumblr.com/2wjmz5y/Jdhlapek1/simplethings-reblogged.png) no-repeat left center; }
	
	.postmeta .tags {
		background: url(http://static.tumblr.com/2wjmz5y/RXDlap7z8/simplethings-tags.png) no-repeat 0 7px;
		clear: left;
		float: left;
		margin: -5px 10px 0;
		padding-left: 16px;
		}
	
	.postmeta .notes {
		float: right;
		margin-right: 10px;
        margin-left:10px;
		}

	.postmeta .disqus-count {
		float: right;
		margin-right: 10px;
		}
	
	.postmeta .hiddentime { display: none !important; }
	
	/***** Post - Photo *****/
	.post-photo img {
		border: 0 solid #ddd;
		margin: 0 10px 10px;
		max-width: 500px;
		}

	.post-photo { text-align:center }
	
	.html_photoset { margin: 0 auto; text-align: center; }
	
	/***** Post - Quote *****/
	.post-quote .quote {
		background: url(http://static.tumblr.com/2wjmz5y/g5Wlap9ew/simplethings-quote.png) no-repeat top left;
		font-size: 18px;
		margin: 0 10px;
		padding-left: 45px;
		}
	
	.post-quote .source { font-style: italic; }
	
	/***** Post - Chat *****/
	.post-chat h3 { margin-bottom: 0; }
	
	ul.chat { margin: 0 10px 10px; }
	
	ul.chat li { list-style:none; padding-bottom: 10px; }
	
	ul.chat li span {
		color: #777;
		font-size: 11px;
		padding-right: 15px;
		text-transform: uppercase;
		}
	
	/***** Post - Audio *****/
	.album-art {
		float: left;
		margin: 0 10px 15px 10px;
		}
	
	.audio_player { margin: 0 0 10px 10px; }

	/***** Post - Video *****/
	.video-container { margin: 0 10px 20px; text-align: center; }
	
	/***** Post - Answer *****/
	.question-top {
		background: #2d3d4b url(http://static.tumblr.com/2wjmz5y/uwNlav1w0/simplethings-question-top-blue.png) no-repeat top left;
		height: 6px;
		margin: 0 10px;
		padding: 0;
		width: 460px;
		}
	
	.question {
		background: #2d3d4b url(http://static.tumblr.com/2wjmz5y/KWnlav1va/simplethings-question-bg-blue.png) repeat-y top left;
		margin: 0 10px;
		width: 460px;
		}
	
	.question p {
		color: #fff;
		font-size: 14px;
		padding: 15px 10px;
		}
	
	.question-bottom {
		background: url(http://static.tumblr.com/2wjmz5y/axllav1vo/simplethings-question-bottom-blue.png) no-repeat top left;
		clear: both;
		margin: 0 10px;
		width: 460px
		}
	
	.question-bottom .asker-info { padding: 16px 0; }
	
	.asker-avatar {
		float: left;
		margin: 0 10px 15px 9px;
		}
	
	.asker-info .asker {
		float: left;
		font-weight: bold;
		margin-top: 5px;
		}
	
	.answer {
		border-top: 1px solid #ddd;
		clear: both;
		margin: 0 10px;
		padding: 15px 0 0;
		}
	
	.answer p { padding: 0 0 15px; }
	
	/***** Pagination *****/
	.tumblrAutoPager_page_separator,
	.tumblrAutoPager_page_info {display:none}

	#pagination {
		clear: both;
		overflow: hidden;
		}
	
	#pagination a {
		background: #cdcdcd url(http://static.tumblr.com/2wjmz5y/wJqlav1uo/simplethings-page-btn.png) repeat-x 0 0;
		border: 1px solid #aaa;
		border-radius: 5px;
		-moz-border-radius: 5px;
		-webkit-border-radius: 5px;
		-moz-box-shadow: 0 1px #fff;
		-webkit-box-shadow: 0 1px #fff;
		color: #666;
		display: block;
		height: 24px;
		line-height: 25px;
		margin-bottom: 50px;
		padding: 0 10px;
		text-shadow: 1px 1px #f1f1f1;
		}
	
	#pagination a:hover {
		background-position: 0 -25px;
		text-decoration: none;
		}
	
	#pagination .next-page { float: right; }
	#pagination .prev-page { float: left; }
	
	#pagination .next-page span {
		background: url(http://static.tumblr.com/2wjmz5y/OjFlapfu8/simplethings-arrow-next.png) no-repeat right center;
		padding-right: 20px;
		}
	
	#pagination .prev-page span {
		background: url(http://static.tumblr.com/2wjmz5y/uxnlapfzu/simplethings-arrow-prev.png) no-repeat left center;
		padding-left: 22px;
		}
	
	/***** Permalink *****/
	#share-links {
                border-bottom: 1px solid #ccc;
                height: 25px;
                margin: -30px 0 30px;
                padding-bottom: 10px;
                }

        #share-twitter, #share-facebook, #share-google {
                float: left;
                }

	.disqus-credit { text-align: right; margin: 5px 0 40px; }
	
	#permalink-notes { margin-bottom: 40px; }
	
	#permalink-notes .notes { border-bottom: 1px solid #fff; border-top: 1px solid #ddd; }
	
	#permalink-notes .notes li {
		border-bottom: 1px solid #ddd;
		border-top: 1px solid #fff;
		padding: 9px 0 10px;
		text-shadow: 1px 1px #fff;
		}
	
	.notes li .avatar { margin-bottom: -3px; }
	.notes li blockquote {
		border-left: 3px solid #ccc;
		font-style: italic;
		margin: 5px 0 0 20px;
		padding-left: 5px;
		}
	.notes li blockquote a { color: #777; }
	
	/***** Sidebar *****/
	#right-column {
		color: {color:Sidebar Text};
		float: left;
		margin-top: 40px;
		{block:IfNotRemoveWhiteShadowOnSidebarText}text-shadow: 1px 1px #fff;{/block:IfNotRemoveWhiteShadowOnSidebarText}
		width: 250px;
		}

	#right-column a { color: {color:Sidebar Link}; }
	
	.sidebar-box {
		border-bottom: 1px solid #ccc;
		border-top: 1px solid #fff;
		padding: 20px 0;
		}

	.sidebar-box h3 {
		font-size: 16px;
		letter-spacing: -.05em;
		{block:IfForceUppercase}text-transform: uppercase;{/block:IfForceUppercase}
		}
	
	.last-sidebar { border-bottom: 0; }
	
	#right-column #about-box { border-top: 0 !important; padding-top: 0 !important; }
	
	#avatar {
		background: url(http://static.tumblr.com/2wjmz5y/Zbqlapgb4/simplethings-user-pic.png) no-repeat top left;
		float: left;
		margin: 0 5px 10px -5px;
		padding: 8px;
		}
		
	.about-title {
		float: left;
		font-size: 14px;
		overflow: hidden;
		{block:IfForceUppercase}text-transform: uppercase;{/block:IfForceUppercase}
		width: 180px;
		}
	
	.about-title span {
		display: block;
		font-size: 18px;
		margin-top: 5px;
		}
	
	.blog-description {
		clear: both;
		line-height: 1.4em;
		}
	
	#sidebar-nav li a {
		border: 1px solid transparent;
		color: {color:Navigation Link};
		display: block;
		font-size: 16px;
		font-weight: bold;
		letter-spacing: -.05em;
		padding: 5px;
		{block:IfForceUppercase}text-transform: uppercase;{/block:IfForceUppercase}
		}
	
	#sidebar-nav li a:hover {
		background: url(http://static.tumblr.com/2wjmz5y/AJPljqxqj/sidebar-link-hover.png);
		background: rgba(0,0,0,.07);
		border-color: rgba(0,0,0,.14);
		text-decoration: none;
		}

	/***** Following *****/
	ul.people-following { margin-top: 10px; }
	ul.people-following li {
		float: left;
		margin: 0 5px 5px 0;
		}

	/***** Likes *****/
	ul#likes li .post_info_top {
		background: url(http://static.tumblr.com/2wjmz5y/AJPljqxqj/sidebar-link-hover.png);
		background: rgba(0,0,0,.07);
		border: 1px solid rgba(0,0,0,.14);
		display: block !important;
		font-size: 10px;
		margin: 20px 0 5px;
		padding: 5px;
		}

	ul#likes img {max-width:250px !important;}
	
	/***** Footer *****/
	#footer {
		background: #aaa url(http://static.tumblr.com/2wjmz5y/rwOlauzif/simplethings-footer-bg.png) repeat-x top left;
		border-top: 1px solid #aaa;
		margin-top: 40px;
		min-height: 35px;
		text-align: center;
                {block:IfEnableEndlessScrolling}
                margin-top: 0;
                position: fixed;
                bottom: 0;
                left: 0;
                width: 100%;
                z-index: 1000;
                {/block:IfEnableEndlessScrolling}
		}
	
	#footer-inner {
		clear: both;
		color: #666;
		margin: 0 auto;
		padding: 12px;
		text-shadow: 1px 1px #d0d0d0;
		width: 800px;
		}
	
	#footer-inner a { color: #0f3455; }
	</style>
	
	<style type="text/css">{CustomCSS}</style>

	{block:IfEnableEndlessScrolling}
	<script type="text/javascript" src="http://static.tumblr.com/2wjmz5y/gsglh8a0h/tumblr-endless-scroll.js"></script>
	{/block:IfEnableEndlessScrolling}

</head>
<body>

<div id="wrap">
	<div id="container">
		<h1 id="title"><a href="/">{Title}</a></h1>
		
		<a href="{RSS}" id="header-rss"><span>RSS</span></a>
		
		<form action="/search" method="get" id="header-search-bar">
			<input type="text" name="q" value="{SearchQuery}" id="search-input" />
			<input type="submit" value="Search" id="search-submit" />
		</form>
		
		<div class="clear"></div>
		
		<!-- Begin Posts -->
		<div id="left-column">

		{block:TagPage}
			<h2>Posts tagged with <span>"{Tag}"</span></h2>
		{/block:TagPage}

		{block:SearchPage}
			<h2>{SearchResultCount} Results for <span>"{SearchQuery}"</span></h2>
		{/block:SearchPage}

		<div class="autopagerize_page_element">
		{block:Posts}
			
			{block:IfShowDateFlagOnNewDatesOnly}
			{block:NewDayDate}
			<div class="date">
				<span class="month"><a href="{Permalink}">{ShortMonth}</a></span>
				<span class="day"><a href="{Permalink}">{DayOfMonth}</a></span>
			</div> <!-- .date -->
			{/block:NewDayDate}
			{block:IfShowDateFlagOnNewDatesOnly}

			{block:IfNotShowDateFlagOnNewDatesOnly}
			{block:Date}
			<div class="date">
				<span class="month"><a href="{Permalink}">{ShortMonth}</a></span>
				<span class="day"><a href="{Permalink}">{DayOfMonth}</a></span>
			</div> <!-- .date -->
			{/block:Date}
			{/block:IfNotShowDateFlagOnNewDatesOnly}

			{block:Text}
			<div class="post post-text">
				{block:Title}<h3><a href="{Permalink}">{Title}</a></h3>{/block:Title}
				{Body}
			{/block:Text}

			{block:Photo}
			<div class="post post-photo">
				{LinkOpenTag}<img src="{PhotoURL-500}" alt="{PhotoAlt}" />{LinkCloseTag}
				{block:Caption}{Caption}{/block:Caption}
			{/block:Photo}
		
			{block:Quote}
			<div class="post post-quote">
				<p class="quote">{Quote}</p>
				<p class="source">{block:Source}- {Source}{/block:Source}</p>
			{/block:Quote}
		
			{block:Link}
			<div class="post post-link">
				<h3><a href="{URL}" {Target}>{Name}</a></h3>
				{block:Description}
				{Description}
				{/block:Description}
			{/block:Link}
		
			{block:Chat}
			<div class="post post-chat">
				{block:Title}<h3><a href="{Permalink}">{Title}</a></h3>{/block:Title}
				<ul class="chat">
					{block:Lines}
					<li>{block:Label}<span>{Label}</span> {/block:Label}{Line}</li>
					{/block:Lines}
				</ul>
			{/block:Chat}
		
			{block:Audio}
			<div class="post post-audio">
				{block:IfShowAlbumArtworkOnAudioPosts}{block:AlbumArt}<img src="{AlbumArtURL}" alt="{Album}" width="75" class="album-art" />{/block:AlbumArt}{/block:IfShowAlbumArtworkOnAudioPosts}
				<div class="audio-player">{AudioPlayerGrey}</div>
				<p class="track-info">{block:TrackName}<strong>{TrackName}</strong><br />{/block:TrackName}{block:Artist}{Artist}{/block:Artist}</p>
				{block:Caption}{Caption}{/block:Caption}
			{/block:Audio}
		
			{block:Video}
			<div class="post post-video">
				<div class="video-container">{Video-500}</div>
				{block:Caption}{Caption}{/block:Caption}
			{/block:Video}
			
			{block:Answer}
			<div class="post post-answer">
				<div class="question-top"></div>
				<div class="question">
					<p>{Question}</p>
				</div>
				<div class="question-bottom">
					<p class="asker-info"><img src="{AskerPortraitURL-24}" alt="" class="asker-avatar" /> {Asker}</p>
				</div>
				
				<div class="answer">
					{Answer}
				</div>
			{/block:Answer}
				
				<div class="postmeta">
					{block:NotReblog}
					<p class="posttime"><a href="{Permalink}">Posted {TimeAgo}</a></p>
					{/block:NotReblog}
					{block:Reblog}
					<p class="reblogged"><a href="{Permalink}">Reblogged {TimeAgo}</a> from <a href="{ReblogParentURL}">{ReblogParentName}</a></p>
					{/block:Reblog}

					{block:IfDisqusShortname}
					<p class="disqus-count" style="padding-left:5px;"><a href="{Permalink}#disqus_thread" class="view-comments dsq-comment-count">Comments</a>
					{/block:IfDisqusShortname}

					{block:NoteCount}
					<p class="notes"><a href="{Permalink}#permalink-notes">{NoteCountWithLabel}</a></p>
					{/block:NoteCount}

					{block:IfShowTags}
					{block:HasTags}<p class="tags">{block:Tags}<a href="{TagURL}">{Tag}</a>, {/block:Tags}</p>{/block:HasTags}
					{/block:IfShowTags}
                    
                    <div align="right" style="padding:5px;">
                    
                    <script>function twt_click(urll,titlee) {window.open('http://twitter.com/intent/tweet?url='+encodeURIComponent(urll)+'&text='+encodeURIComponent(titlee)+' via @kulekci&related=scanf.info','sharer','toolbar=0,status=0,width=626,height=436');return false;}</script>
                    
                    
                                            <a href="http://twitter.com/intent/tweet?url={Permalink}&text={Title} via @kulekci&related=scanf.info" target="_blank" onclick="return twt_click('{Permalink}','{Title}')" ><img src="http://kulekci.net/wp-content/uploads/social_networking_iconpack/twitter_16.png" alt="Twitter"></a>
                    
                    
                    <script>function fbs_click(urll,titlee) {window.open('http://www.facebook.com/sharer.php?u='+encodeURIComponent(urll)+'&t='+encodeURIComponent(titlee),'sharer','toolbar=0,status=0,width=626,height=436');return false;}</script>
                    
                    
                                            <a rel="nofollow" href="http://www.facebook.com/share.php?u={Permalink}" onclick="return fbs_click('{Permalink}','{Title}')" target="_blank"><img src="http://kulekci.net/wp-content/uploads/social_networking_iconpack/facebook_16.png" alt="Facebook"></a>
                    
                    
                    
                    <script>function ggp_click(urll,titlee) {window.open('http://www.google.com/buzz/post?message=I%20like%20this... '+encodeURIComponent(titlee)+'&url='+encodeURIComponent(urll),'sharer','toolbar=0,status=0,width=626,height=436');return false;}</script>
                    
                    
                                            <a href="http://www.google.com/buzz/post?message=I%20like%20this... {Permalink}&url={Permalink}" target="_blank" onclick="return ggp_click('{Permalink}','{Title}')" ><img src="http://kulekci.net/wp-content/uploads/social_networking_iconpack/google_plus_16.png" alt="Google"></a>
                                            
                                           <a href="http://www.reddit.com/submit?url={Permalink}&title=Scanf.info {ShortMonth} {DayOfMonth} {Year} - {12Hour}:{Minutes} {AmPm}" target="_blank"><img src="http://kulekci.net/wp-content/uploads/social_networking_iconpack/reddit_16.png" alt="Reddit"></a>
                                           <a href="http://digg.com/submit?phase=2&url={Permalink}&title=Scanf.info {ShortMonth} {DayOfMonth} {Year} - {12Hour}:{Minutes} {AmPm}" target="_blank"><img src="http://kulekci.net/wp-content/uploads/social_networking_iconpack/digg_16.png" alt="Digg"></a>
                    </div>
                    
                    
				</div> <!-- .postmeta -->
			</div> <!-- .post -->
			<div class="clear newpost"></div>

		{/block:Posts}
		</div> <!-- .auto_pagerize_element -->
			
			{block:Permalink}
			<div id="share-links">
                            <div id="share-twitter">
				<a href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
                            </div>

                            <div id="share-facebook">
				<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) {return;}
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#appId=154593144627539&xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

                                <div class="fb-like" data-send="true" data-layout="button_count" data-width="150" data-show-faces="false"></div>
                            </div>

                            <div id="share-google">
                                <g:plusone size="medium"></g:plusone>
                            </div>
			</div>
				{block:IfDisqusShortname}
				<div id="disqus_thread">
					<script type="text/javascript" src="http://disqus.com/forums/{text:Disqus Shortname}/embed.js"></script>
					<noscript><a href="http://{text:Disqus Shortname}.disqus.com/?url=ref">{lang:View the discussion thread}</a></noscript>
				</div>
				<div class="disqus-credit">
					{lang:Blog comments powered by Disqus 2}
				</div>
				{/block:IfDisqusShortname}

				{block:PostNotes}
				<div id="permalink-notes">
					{PostNotes}
				</div> <!-- .permalink-notes -->
				{/block:PostNotes}
			{/block:Permalink}
		
		{block:Pagination}
			<div id="pagination">
				{block:PreviousPage}<a href="{PreviousPage}" class="prev-page">&larr; Prev Page</a>{/block:PreviousPage}
				{block:NextPage}<a href="{NextPage}" class="next-page">Next Page &rarr;</a>{/block:NextPage}
			</div> <!-- #pagination -->
		{/block:Pagination}
		</div> <!-- #left-column -->
		
		<!-- Sidebar -->
		<div id="right-column">
			<div class="sidebar-box" id="about-box">
				<img src="{PortraitURL-48}" alt="{Title}" id="avatar" />
				<p class="about-title"><span>{lang:About}</span> {Title}</p>
				<div class="blog-description">
					{Description}
				</div> <!-- .blog-description -->
			</div> <!-- .sidebar-box -->
			
			<div class="sidebar-box">
				<ul id="sidebar-nav">
					{block:IfShowHomeLinkInNavigation}<li><a href="/">Home</a></li>{/block:IfShowHomeLinkInNavigation}
					{block:HasPages}{block:Pages}<li><a href="{URL}">{Label}</a></li>{/block:Pages}{/block:HasPages}
					{block:AskEnabled}<li><a href="/ask">{AskLabel}</a></li>{/block:AskEnabled}
					{block:SubmissionsEnabled}<li><a href="/submit">{SubmitLabel}</a></li>{/block:SubmissionsEnabled}
					{block:IfRandomPostLabel}<li><a href="/random">{text:Random Post label}</a></li>{/block:IfRandomPostLabel}
					{block:IfShowArchiveLink}<li><a href="/archive">Archive</a></li>{/block:IfShowArchiveLink}
					{block:IfShowRSSLinkInNavigation}<li><a href="{RSS}">RSS Feed</a></li>{/block:IfShowRSSLinkInNavigation}
				</ul>
			</div> <!-- .sidebar-box -->

			{block:IfShowPostsILike}
			{block:Likes}
			<div class="sidebar-box" id="likes">
				<h3>Posts I Like</h3>
				{Likes limit="5" width="250"}
			</div>
			{/block:Likes}
			{/block:IfShowPostsILike}

			{block:IfShowPeopleIFollow}
			<div class="sidebar-box" id="following">
				<h3>People I Follow</h3>
				{block:Following}
				<ul class="people-following">
					{block:Followed}<li><a href="{FollowedURL}" title="{FollowedTitle}"><img src="{FollowedPortraitURL-30}" alt="{FollowedTitle}" /></a></li>{/block:Followed}
				</ul>
				{/block:Following}
				<div class="clear"></div>
			</div>
			{/block:IfShowPeopleIFollow}
			
			<div class="sidebar-box last-sidebar"></div>
		</div> <!-- #right-column -->
		
		<div class="clear"></div>
	</div> <!-- #container -->
	
	<div id="footer">
    <a href="http://mixpanel.com/f/partner"><img src="http://mixpanel.com/site_media/images/partner/badge_blue.png" alt="Real Time Web Analytics" /></a>
		<div id="footer-inner">
			<p>Copyright &copy; {CopyrightYears} <a href="/">{Title}</a>. Powered by <a href="http://www.tumblr.com">Tumblr</a>.
			<a href="http://simplethingstheme.tumblr.com/">Simple Things</a> theme by <a href="http://www.dan-hauk.com">Dan Hauk</a>. </p>
		</div> <!-- #footer-inner -->
	</div> <!-- #footer -->
</div> <!-- #wrap -->

    {block:IfDisqusShortname}
        <script type="text/javascript">
            //<![CDATA[
            (function() {
                var links = document.getElementsByTagName('a');
                var query = '?';
                for(var i = 0; i < links.length; i++) {
                    if(links[i].href.indexOf('#disqus_thread') >= 0) {
                        query += 'url' + i + '=' + encodeURIComponent(links[i].href) + '&';
                    }
                }
                document.write('<script charset="utf-8" type="text/javascript" src="http://disqus.com/forums/{text:Disqus Shortname}/get_num_replies.js' + query + '"></' + 'script>');
            })();
            //]]>
        </script>
    {/block:IfDisqusShortname}

<!-- +1 button -->
<script type="text/javascript">
  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/plusone.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>

<!-- start Mixpanel --><script type="text/javascript">(function(d,c){var a,b,g,e;a=d.createElement("script");a.type="text/javascript";a.async=!0;a.src=("https:"===d.location.protocol?"https:":"http:")+'//api.mixpanel.com/site_media/js/api/mixpanel.2.js';b=d.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b);c._i=[];c.init=function(a,d,f){var b=c;"undefined"!==typeof f?b=c[f]=[]:f="mixpanel";g="disable track track_pageview track_links track_forms register register_once unregister identify name_tag set_config".split(" ");
for(e=0;e<g.length;e++)(function(a){b[a]=function(){b.push([a].concat(Array.prototype.slice.call(arguments,0)))}})(g[e]);c._i.push([a,d,f])};window.mixpanel=c})(document,[]);
mixpanel.init("5cdd3f9ea5f3784984b79e4379616965");
    mixpanel.track("{block:SearchPage}{lang:Search results for SearchQuery} - {/block:SearchPage}{block:PostTitle}{PostTitle} - {/block:PostTitle}{Title}");
</script><!-- end Mixpanel -->

{block:IfGoogleAnalyticsUA}
<!-- GOOGLE ANALYTICS TRACKER CODE -->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', '{text:Google Analytics UA}']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
{/block:IfGoogleAnalyticsUA}

</body>
</html>