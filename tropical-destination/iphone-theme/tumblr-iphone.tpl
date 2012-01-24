<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>{Title}</title>
    <meta name="viewport" content="width=640"/>
    <link rel="shortcut icon" href="{Favicon}" />
    <link rel="apple-touch-icon-precomposed" href="{PortraitURL-128}"/>
    {block:Description}<meta name="description" content="{MetaDescription}" />{/block:Description}
    <style type="text/css">
        html {
            width: 640px;
            margin: auto;
            position: relative;
        }

        body {
            width: 640px;
            margin: 0 auto;
            padding: 0;
            background: url(http://static.tumblr.com/p1lyquj/ahQlybn2u/body-bg.png) repeat scroll left top transparent;
            color: #4F4F4F;
            font-family: Arial,Verdana,Tahoma,Helvetica,sans-serif;
            font-size: 14px;
        }

        .clear {
            clear: both;
        }

        iframe#tumblr_controls {
            position: absolute;
            top: 51px !important;
            right: 40px !important;
        }

        a {
            text-decoration: none;
            color: inherit;
            word-wrap: break-word;
        }
        
        .gray_bubble {
            text-shadow: 0px 2px 5px rgba(0,0,0,.75);
            -webkit-font-smoothing: antialiased;
             background: #00A0BB url(http://static.tumblr.com/p1lyquj/Y1Slybn4c/palms.png) bottom left no-repeat;
            -webkit-box-shadow: inset 0 3px 5px #292a2b,
                                0 2px 0 rgba(255,255,255,0.14);
            margin: 20px 20px 0 20px;

        }
        
        header {
            padding: 31px 27px 24px 28px;
        }
        
            header a.title {
                max-width: 317px;
                color: #fff;
                font-size: 52px;
                font-weight: bold;
                word-wrap: break-word;
                letter-spacing: -1px;
                line-height: 54px;
                margin: 0 0 5px 0;
                display: inline-block;
                float: left;
            }
            
            header .info {
                max-height: 70px;
                color: #d8d8d8;
                font-size: 26px;
                line-height: 35px;
                overflow: hidden;
                position: relative;
            }
            
                header .info.showing {
                    height: auto;
                    max-height: 9999px;
                    overflow: visible;
                }
            
                header .info .body span.description_words {
                    margin: 22px 0 0 0;
                }

                    header .info .body span.description_words:empty {
                        margin: 0px;
                    }
            
                header .info .body .show {
                    width: 120px;
                    height: 30px;
                    text-align: right;
                    background: #38393b;
                    padding: 0 0 5px 0;
                    position: absolute;
                    right: 0;
                    bottom: 0;
                }    

                    header .info.showing .body .show {
                        width: 24px;
                        right: -10px;
                        bottom: -16px;
                    }
            
                    header .info .body .show a {
                        font-weight: bold;
                    }
                    
                    header .info .body .show .gradient {
                        width: 100px;
                        height: 36px;
                        background: url('http://static.tumblr.com/thpaaos/42wlbflin/gradient.png');
                        display: block;
                        position: absolute;
                        top: 0;
                        left: -100px;
                    }
                    
                        header .info.showing .body .show .gradient {
                            display: none;
                        }

        .bubble {
            display: block;
            width: 608px;
            margin: 20px auto 0 auto;
            overflow: hidden;
        }
            
            .permalink + #posts .bubble {
                margin-top: 10px;
            }

            .bubble .top {
                width: 608px;
                height: 34px;
                margin: 0 auto;
            }
            
            .bubble .content {
                width: 528px;
                line-height: 34px;
                margin: 0 auto;
                padding: 2px 40px;
            }
            
                .bubble.description .content {
                    padding: 0 40px 0 40px;
                }

            .bubble .content.bleed {
                width: 600px;
                padding: 0 4px;
            }
                
                .bubble .content img.photo {
                    display: block;
                    border: 4px solid #fff;
                    width: 520px;
                    height: auto;
                }
                
                .bubble .content .copy {
                    font-size: 26px;
                    color: #333536;
                }
                    
                    .bubble .content .copy a {
                        text-decoration: underline;
                    }
                    
                    .bubble .content h2 {
                        color: #ffffff;
                        font-size: 36px;
                        line-height: 40px;
                        margin: 0;
                        padding: 0;
                        background-color: rgba(241, 93, 85, 0.8);
                    }
                    
                    .bubble .content .copy p {
                        margin: 20px 0;
                    }
                    
                    .bubble .content .copy code {
                        word-wrap: break-word;
                    }

                    .audio_player {
                        margin: 0 0 30px 0;
                    }

                        .audio_player a.play {
                            color: #333536;
                            min-height: 76px; /* 126 - 25 - 25 for padding */
                            font-size: 26px;
                            line-height: 38px;
                            text-decoration: none;
                            background: #e4e7ea url('http://static.tumblr.com/thpaaos/BVZl8fpzl/mobile_dashboard_play_pause_sprite.png') 35px center no-repeat;
                            -webkit-border-radius: 16px;
                            -moz-border-radius: 16px;
                            border-radius: 16px;
                            border-top: 2px solid #c6cdd4;
                            border-bottom: 2px solid #fff;
                            padding: 25px 35px 25px 93px;
                            display: block;
                            -webkit-tap-highlight-color: rgba(0,0,0,0.0);
                        }

                            .audio_player a.play.is_playing {
                                background: #e9ecef url('http://static.tumblr.com/thpaaos/BVZl8fpzl/mobile_dashboard_play_pause_sprite.png') -636px center no-repeat;
                                -webkit-box-shadow: inset 0 0 20px #d9dfe3;
                            }

                            .audio_player.with_cover_art a.play {
                                width: 245px;
                                display: inline-block;
                                float: left;
                            }
                            
                                .audio_player a.play strong.listen {
                                    margin: 18px 0 0 0;
                                    display: inline-block;
                                }

                        .audio_player img.cover {
                            width: 130px;
                            -webkit-border-radius: 10px;
                            -webkit-box-shadow: 0px 1px 5px #4f4f4f;
                            margin: 0 20px 0 0;
                            float: left;
                            display: block;
                        }

                    .bubble .content .copy.text_post p:first-child {
                        margin-top: 0;
                    }
                    
                    .bubble .content .copy p:last-child {
                        margin-bottom: 0;
                    }
                    
                    .bubble .content .copy blockquote {
                        margin: 20px 0px 20px 20px;
                        padding-left: 30px;
                        border-left: solid 6px #F15D55;
                    }
                    
                    .bubble .content .copy img {
                        max-width: 100%;
                    }
                    
                    .bubble .content .video {
                        width: 520px;
                        font-size: 26px;
                        color: #333536;
                    }

                        .bubble .content .video * {
                            width: 520px !important;
                            border: 4px solid #fff;
                            margin: 0 auto;
                        }
                        
                        .bubble .content .video a {
                            margin: 0 auto;
                        }
                        
                            .bubble .content .video a img {
                                width: 100%;
                                height: auto;
                            }
                            
                            .bubble .content .video a div {
                                border: none;
                            }
                        
                        .bubble .content .video * {
                            width: auto;
                            min-height: auto;
                            padding: 0px;
                            margin: 0;
                        }
                        
                        .bubble .content .html_photoset {
                            width: 520px;
                            text-align: center;
                            border: none;
                        }
                                                
                            .bubble .content .html_photoset p {
                                margin: 30px 0;
                            }
                            
                            .bubble .content .html_photoset p:first-child {
                                margin-top: 0;
                            }
                            
                                .bubble .content .html_photoset p img.photoset_photo {
                                    width: 520px;
                                    margin: 0 auto;
                                    border: 4px solid #fff;
                                }
                                
                                .bubble .content .html_photoset p.photoset_caption {
                                    margin-top: 20px;
                                }
                    
                    .bubble .content .link {
                        display: block;
                        font-size: 32px;
                        line-height: 36px;
                        font-weight: bold;
                        color: #49729a;
                    }
                    
                        .bubble .content .link span {
                            font-family: 'Lucida Grande', sans-serif;
                            vertical-align: -1px;
                        }
                    
                    .bubble .content .quote {
                        font-size: 32px;
                        line-height: 36px;
                        font-weight: bold;
                        color: #535456;
                    }
                    
                        .bubble .content .quote_source *:first-child {
                            margin-top: 0;
                        }
                    /*
                    .bubble .content .audio {
                        margin-top: 0;
                    }
                    
                    .bubble .content .audio img {
                        display: inline-block;
                        border: none;
                        width: 36px;
                        height: 36px;
                        position: relative;
                        top: 8px;
                        margin-right: 8px;
                    }
                    
                    .bubble .content .audio a {
                        font-weight: bold;
                    }

                    .bubble .content .audio strong u {
                        font-size: 24px;
                    } */
                    
                    .bubble .content .video img {
                        border: none;
                    }
                
                .bubble .content .chat {
                    width: 100%;
                    border-bottom: 2px solid #fff;
                    margin: 0;
                }
                
                    .bubble .content .chat td {
                        padding: 16px 0;
                        border-top: 2px solid #fff;
                        border-bottom: 2px solid #dde2e7;
                        vertical-align: top;
                        font-size: 26px;
                        color: #333536;
                    }

                        .bubble .content .chat tr:first-child td {
                            border-top-width: 0px;
                            padding-top: 0px;
                        }

                    .bubble .content .chat td.username {
                        padding-right: 24px;
                        font-weight: bold;
                        max-width: 230px;
                    }
                
                .bubble .content .answer_question {
                    background: #e4e7ea;
                    -webkit-border-radius: 16px;
                    -moz-border-radius: 16px;
                    border-radius: 16px;
                    border-top: 2px solid #c6cdd4;
                    border-bottom: 2px solid #fff;
                    padding: 26px 30px;
                    font-size: 32px;
                    line-height: 38px;
                    color: #535355;
                    word-wrap: break-word;
                }
                
                .bubble .content .answer_asker {
                    margin-top: 24px;
                    font-weight: bold;
                    font-size: 28px;
                    color: #65676a;
                }
                
                    .bubble .content .answer_asker img {
                        display: inline-block;
                        border: none;
                        vertical-align: -14px;
                        margin: 0 14px 0 20px;
                    }
                
                .bubble .content .date,
                .bubble .content .note_count {
                    float: left;
                    font-weight: bold;
                    font-size: 24px;
                    color: #00A0BB;
                    margin-top: 26px;
                    text-decoration: underline;
                }
                
                .bubble .content .note_count {
                    float: right;
                }
                
                .bubble .content ol.notes {
                    margin: 0;
                    padding: 0;
                    border-top: 2px solid #dde2e7;
                    border-bottom: 2px solid #fff;
                    list-style-type: none;
                    font-size: 24px;
                }
                
                    .bubble .content ol.notes li.note {
                        padding: 20px 60px 20px 20px;
                        border-top: 2px solid #fff;
                        border-bottom: 2px solid #dde2e7;
                    }
                    
                        .bubble .content ol.notes li.note img.avatar {
                            display: inline-block;
                            vertical-align: -10px;
                            margin-right: 12px;
                            width: 32px;
                            height: 32px;
                        }
                        
                        .bubble .content ol.notes li.note span.action {
                            font-weight: normal;
                        }
                        
                        .bubble .content ol.notes li.note .answer_content {
                            font-weight: normal;
                        }
                        
                        .bubble .content ol.notes li.note blockquote {
                            border-left: 6px solid #c9cccf;
                            padding: 2px 20px;
                            margin: 20px 0px 0px 50px;
                        }
                            
                            .bubble .content ol.notes li.note blockquote a {
                                text-decoration: none;
                            }
                        
                        .bubble .content ol.notes li.note .tumblelog,
                        .bubble .content ol.notes li.note .source_tumblelog {
                            font-weight: bold;
                            color: #303132;
                        }
                        
                        .bubble .content ol.notes li.like {
                            background: url('http://assets.tumblr.com/images/iphone/tumblelog_retina/note_like.png') 546px 27px no-repeat;
                        }
                    
                        .bubble .content ol.notes li.reblog {
                            background: url('http://assets.tumblr.com/images/iphone/tumblelog_retina/note_reblog.png') 546px 24px no-repeat;
                        }
                    
                        .bubble .content ol.notes li.answer {
                            background: url('http://assets.tumblr.com/images/iphone/tumblelog_retina/note_answer.png') 550px 22px no-repeat;
                        }
                    
                        .bubble .content ol.notes li.facebook_comment {
                            background: url('http://assets.tumblr.com/images/note_facebook_2.png') 544px 24px no-repeat;
                        }
                    
                        .bubble .content ol.notes li.photo,
                        .bubble .content ol.notes li.reply {
                            background: url('http://assets.tumblr.com/images/iphone/tumblelog_retina/note_reply.png') 544px 24px no-repeat;
                        }

                        .bubble .content ol.notes a.more_notes_link {
                            font-weight: bold;
                        }
            
            .bubble .bottom {
                background: url('http://assets.tumblr.com/images/iphone/tumblelog_retina/content_bottom.png') -1px 0 repeat-y transparent;
                width: 608px;
                height: 38px;
                margin: 0 auto;
            }
            
                .bubble.description .bottom {
                    height: 102px;
                    background-image: url('http://static.tumblr.com/thpaaos/lXDlb08n9/description_bottom.png');
                }
                
                .bubble.permalink .bottom {
                    height: 59px;
                    background-image: url('http://static.tumblr.com/thpaaos/IyXlb0h5q/permalink_bottom.png');
                }

        .load {
            color: #d8d8d8;
            font-size: 42px;
            font-weight: bold;
            text-align: center;
            padding: 38px 0;
            display: block;
        }    

           .load img {
                vertical-align: -2px;
                margin-right: 20px;
            }
            
        .links {
            margin: 30px;
            overflow: hidden;
        }
        
            .links a {
                color: #aeaeae;
                font-size: 26px;
                text-shadow: 0px 2px 5px rgba(0,0,0,.75);
                float: right;
            }

                .links a:first-child {
                    float: left;
                }

        body.android .gray_bubble,
        body.android .audio_player a.play.is_playing,
        body.android .audio_player img.cover
         {
            -webkit-box-shadow: none !important;
        }
    </style>
    <script type="text/javascript" charset="utf-8">
        setTimeout(function() { window.scrollTo(0,1) }, 100);
                
        function microAjax(B,A) {
            this.bindFunction = function(E,D){
                return function(){
                    return E.apply(D,[D])
                }
            };

            this.stateChange = function(D){
                if (this.request.readyState == 4) {
                    this.callbackFunction(this.request.responseText);
                }
            };

            this.getRequest = function(){
                if (window.ActiveXObject) {
                    return new ActiveXObject("Microsoft.XMLHTTP");
                } else {
                    if (window.XMLHttpRequest) {
                        return new XMLHttpRequest();
                    }
                }

                return false;
            };

            this.postBody = (arguments[2] || '');
            this.callbackFunction = A;
            this.url = B;
            this.request = this.getRequest();

            if (this.request) {
                var C = this.request;
                C.onreadystatechange = this.bindFunction(this.stateChange, this);

                if (this.postBody !== '') {
                    C.open("POST", B, true);
                    C.setRequestHeader("X-Requested-With", "XMLHttpRequest");
                    C.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    C.setRequestHeader("Connection", "close");
                } else {
                    C.open("GET", B, true);
                }

                C.send(this.postBody);
            }
        }
        
        function $(id) {
            return document.getElementById(id);
        }
        
        var loading_next_page = false;
        var next_page = 1;
        var current_url;
                
        function load_more_posts() {
            if (loading_next_page) return;
            loading_next_page = true;
            
            $('load_more').style.display = 'none';
            $('loading_more').style.display = 'block';
            
            if (! current_url) current_url = document.location.href;
            if (current_url.charAt(current_url.length - 1) != '/') current_url += '/';

            if (next_page === 1) current_url += 'page/1';
            
            current_url = current_url.replace('page/' + next_page, 'page/' + ++next_page);
            
            microAjax(current_url, function(res) {
                $('posts').innerHTML += res.split('<!-- START' + ' POSTS -->')[1].split('<!-- END' + ' POSTS -->')[0];
                $('loading_more').style.display = 'none';
                $('load_more').style.display = 'block';
                loading_next_page = false;
            });
        }
        
        function show_notes(post_id, notes_url) {
            if ($('notes_' + post_id).innerHTML == '') {
                var old_innerHTML =  $('show_notes_' + post_id).innerHTML;
                $('show_notes_' + post_id).innerHTML = 'Loading notes...';
                
                microAjax(notes_url, function(res) {
                    $('show_notes_' + post_id).innerHTML = old_innerHTML;
                    
                    $('notes_' + post_id).innerHTML = res;
                    $('notes_container_' + post_id).style.display = 'inherit';
                    
                    $('show_notes_' + post_id).style.display = 'none';
                    $('hide_notes_' + post_id).style.display = 'inherit';
                });
            } else {
                $('notes_container_' + post_id).style.display = 'inherit';
                
                $('show_notes_' + post_id).style.display = 'none';
                $('hide_notes_' + post_id).style.display = 'inherit';
            }
        }
        
        function hide_notes(post_id) {
            $('show_notes_' + post_id).style.display = 'inherit';
            $('hide_notes_' + post_id).style.display = 'none';
            $('notes_container_' + post_id).style.display = 'none';
        }
        
        function play_audio(post_id) {
            var audio = $('audio_file_' + post_id);
            
            if (audio.paused) {
                audio.play();
                $('play_button_' + post_id).className = 'play is_playing';
            } else {
                audio.pause();
                $('play_button_' + post_id).className = 'play';
            }
        };
        
        var showing_info = 0;        

        function show_more_info() {
            if (showing_info == 0) {
                $('show_more_info_link').innerHTML = 'X';
                $('info_container').className = 'info showing';
                showing_info = 1;
            } else {
                $('show_more_info_link').innerHTML = 'Show all';
                $('info_container').className = 'info';
                showing_info = 0;
            }
        }
        
        function strip_anchors(input) {
            return input.replace(/<a /g, '<u ').replace(/<\/a>/g, '<\/u>');
        }
    </script>
</head>
<body>
 
    <header class="gray_bubble">
        <a href="/" class="title">{Title}&nbsp;</a>
        <div class="clear"></div>
        {block:IndexPage}
            <div class="info" id="info_container">
                <div class="body" id="body_container">
                    {block:Description}<span class="description_words">{PlaintextDescription}</span>{/block:Description}
                    <div class="show" id="show_more_info" style="display:none">
                        <a href="#" id="show_more_info_link" onclick="show_more_info(); return false;">
                            Show all
                        </a>
                        <div class="gradient" id="show_gradient"></div>
                    </div>
                </div>
            </div>
        {/block:IndexPage}
    </header>

    <div id="posts">
        <!-- START POSTS -->
        {block:Posts}
            <div class="bubble">
                <div class="top"></div>
                <div class="content">

                    {block:Text}
                        <div class="copy text_post">
                            {block:Title}<h2>{Title}</h2>{/block:Title}
                            {Body}
                            {block:More}<p class="read_more_container"><a href="{Permalink}" class="read_more">Read More</a></p>{/block:More}
                        </div>
                    {/block:Text}

                    {block:Photo}
                        {block:HighRes}<a href="{PhotoURL-HighRes}">{/block:HighRes}<img src="{PhotoURL-500}" alt="{PhotoAlt}" class="photo" />{block:HighRes}</a>{/block:HighRes}
                        {block:Caption}
                            <div class="copy">
                                {Caption}
                            </div>
                        {/block:Caption}
                    {/block:Photo}

                    {block:Photoset}
                        <div class="video">
                            {Photoset-500}
                        </div>
                        {block:Caption}
                            <div class="copy">
                                {Caption}
                            </div>
                        {/block:Caption}
                    {/block:Photoset}

                    {block:Link}
                        <a href="{URL}" class="link" {Target}>{Name} <span>&rarr;</span></a>
                        {block:Description}
                            <div class="copy">
                                {Description}
                            </div>
                        {/block:Description}
                    {/block:Link}

                    {block:Quote}
                        <div class="quote">&#8220;{Quote}&#8221;</div>
                        {block:Source}
                            <table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin:20px 0">
                                <tr>
                                    <td valign="top" style="width:2px; padding:0 20px 0 0">
                                        &mdash;
                                    </td>
                                    <td valign="top" class="copy quote_source">
                                        {Source}
                                    </td>
                                </tr>
                            </table>
                        {/block:Source}
                    {/block:Quote}

                    {block:Audio}
                        <div class="audio_player {block:AlbumArt}with_cover_art{/block:AlbumArt}" id="play_audio_{PostID}"> 
                            {block:AlbumArt}<img src="{AlbumArtURL}" class="cover"/>{/block:AlbumArt}
                            <a class="play" onclick="play_audio({PostID}); return false;" id="play_button_{PostID}">
                                {block:TrackName}<strong>{TrackName}</strong><br/>{/block:TrackName}
                                {block:Artist}{Artist}{/block:Artist}
                                <strong class="listen" style="display:none">Listen</strong>
                            </a>
                            <audio id="audio_file_{PostID}" src="{RawAudioURL}"></audio>
                            <div class="clear"></div>
                        </div>
                        {block:Caption}
                            <div class="copy">
                                {Caption}
                            </div>
                        {/block:Caption}
                    {/block:Audio}

                    {block:Video}
                        <div class="video"> 
                            {Video-500}
                        </div>
                        {block:Caption}
                            <div class="copy">
                                {Caption}
                            </div>
                        {/block:Caption}
                    {/block:Video}

                    {block:Chat}
                        {block:Title}<h2 style="margin-bottom:26px;">{Title}</h2>{/block:Title}
                        <table class="chat" border="0" cellpadding="0" cellspacing="0">
                            {block:Lines}
                                <tr>
                                    {block:Label}<td class="username">{Label}</td>{/block:Label}
                                    <td width="*">{Line}</td>
                                </tr>
                            {/block:Lines}
                        </table>
                    {/block:Chat}

                    {block:Answer}
                        <div class="answer_question">{Question}</div>
                        <div class="answer_asker">
                            <img src="{AskerPortraitURL-48}" width="48" height="48" />{Asker}
                        </div>
                        <div class="copy">
                            {Answer}
                        </div>
                    {/block:Answer}

                    {block:Date}
                        <a class="date" href="{Permalink}" {Target}>
                            {TimeAgo}
                        </a>
                    {/block:Date}
                    {block:NoteCount}
                        <a href="{Permalink}" class="note_count" onclick="show_notes({PostID}, '{PostNotesURL}'); return false;" id="show_notes_{PostID}" {Target} style="padding-left:6px;">
                            {NoteCountWithLabel}
                        </a>
                        <a href="#" class="note_count" onclick="hide_notes({PostID}); return false;" id="hide_notes_{PostID}" style="display: none; padding-left:6px;">
                             Hide notes
                        </a>
                    {/block:NoteCount}
                {block:PostNotes}
                    <div class="bubble">
                        <div class="top"></div>
                        <div class="content bleed">
                            {PostNotes}
                        </div>
                        <div class="bottom"></div>
                    </div>
                {/block:PostNotes}
                <div style="margin-bottom:30px;"></div>
            {/block:PermalinkPage}
        {/block:Posts}
        <!-- END POSTS -->
    </div>
    {block:IndexPage}
        {block:NextPage}
            <a href="/page/2" class="load gray_bubble" id="load_more" onclick="load_more_posts(); return false;">
                Load more posts
            </a>
            <div class="load gray_bubble" id="loading_more" onclick="load_more_posts(); return false;" style="display:none">
                <img src="http://static.tumblr.com/thpaaos/HBrlbfdoy/loading.gif" width="32" height="32" /> Loading more posts...
            </div>
        {/block:NextPage}
    {/block:IndexPage}
    <div class="links">
        <a href="http://www.tumblr.com">Powered by Tumblr</a>
        <a href="/disable_mobile_interface" onclick="if(confirm('Switch from mobile to standard view?')){} else {return false;}">Standard view</a>
    </div>
    
    <script type="text/javascript" charset="utf-8">
        var info_style = window.getComputedStyle(document.getElementById('body_container'), null);

        if (parseInt(info_style.height) > 70) {
            $('show_more_info').style.display = 'block'
        }

        if (navigator.userAgent.match(/Android/i)) {
            document.body.className = 'android';
        }
    </script>
</body>
</html>