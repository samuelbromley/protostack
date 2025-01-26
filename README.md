# What is ProtoStack?
By James Welch, 2025

ProtoStack is a MUCH slimmed-down version of something akin to Laravel. It allows you to 'prototype' a new web project in double-quick time without having to re-invent the wheel each time. ProtoStack was created because I found Laravel (and similar frameworks) way too complex, cumbersome, and difficult to set up. ProtoStack suits coders that prefer a much leaner way to start on a project, or amatuer coders (like me!).

There are only a few (but powerful) elements included in the 'framework' of ProtoStack, and they are:-

- A template engine
  - this keeps PHP code away from any web page designs, so that each web page template within your site is extremely easy to design and work with.
  - a simple setup of a template file (.tpl in templates directory) and an 'engine' file (.php in engine directory) work together to create great, dynamic pages (including php arrays and variables) - very easy to code with.
- A flat file database engine
  - now using SQLite.
  - create data driven websites and apps in minutes, literally.
- A front-end framework
  - using [mono/color](https://asvvvad1.github.io/mono-color/), ProtoStack allows you to develop fast and powerful web interfaces for sites and apps.
  
# How to Setup ProtoStack

  - Upload all of the files within the ProtoStack directory to a directory on your server that is accessible by the web (e.g. www.yoursite.com/protostack).
   - Open index.php in the root directory of ProtoStack to view how ProtoStack 'routes' url requests to the appropriate engine/template files
    - Some example files ('example' and 'another') have been included for you to edit. 
  - That's it...unless you want a fully functioning database, too. See db-example.php in the engines folder to see how it works.
  
  ** MAKE SURE that the .htaccess file has been copied to the root of ProtoStack.
  
  If you are having issues at this point, it is probably related to permissions of files/folders.

## What's in the box?

The format of the files is as follows:

- /data - where SQLite databases live
- /engine - the PHP code for each page template
- /inc - various files that make ProtoStack work such as settings.php, template.class.php
- /templates - the .tpl files that control each template's HTML output
- index.php - the main routing file that is the brains of ProtoStack
- .htaccess - so that url rewrites can be done (no need to edit this file)

Full Layout is:

    ----data/
	  	example.db
		dbad.php (database editor for SQLite databases)
	----engine/
 		home.php (the other files below are just examples)
   		example.php
		another.php
	 	db-example.php
	----inc/
	 	includes.php
		logo.png
		mono-color.css
		style.css (for any extra styling you may want to add)
		templates.class.php
		various.php (for any extra functionality you want to add)
	----templates/
	      home.tpl
	      example.tpl
	      another.tpl
	      db-example.tpl
	.htaccess
	index.php
	readme.md


I originally created ProtoStack in 2020 during Covid, but when I came back to it, so many things had changed, that I decided to rewrite things, so that they were even simpler than before. Most people well-versed with PHP should be able to work with ProtoStack, but there still may be some things that cause issues, depending on how your server works (PHP version etc.)
