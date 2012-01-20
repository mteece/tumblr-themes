A small collection of themes for [Tumblr](http://tumblr.com/ "Tumblr").

# Themes

* Tropical Destination

## Tropical Destination

![alt Screenshot](https://github.com/mteece/tumblr-themes/raw/master/tropical-destination/screenshot.png "Screenshot")

Theme created to use for our wedding website. Includes the static files for images, css, and html that you can use to tweak the layout on your editor of choice without using the inline editor on Tumblr. 

### Notes

For static files use [Tumblr Upload](http://www.tumblr.com/themes/upload_static_file "Tunblr Upload"). Use this to host small files required for custom themes (images, css, javascript). Once uploaded, files cannot be deleted or changed. Max size is 5 MB per file and 15 MB per day.

1. Upload all the static files to [Tumblr Upload](http://www.tumblr.com/themes/upload_static_file "Tunblr Upload").
2. Note the static URL.
3. In the **tumblr.tpl** file replace any *url(myimage.png)* with the static URL *url(http://static.tumblr.com/aabbccdd/myimage.png)*.
4. In the **tumblr.tpl** file replace css references. Any *href="screen.css"* with the static URL *href="http://static.tumblr.com/aabbccdd/screen.css"*.
5. In the Tumblr interface Customize Appearance, edit the HTML and replace it with the content of **tumblr.tpl**