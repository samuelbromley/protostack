





ProtoStack is a 'download and start' micro, micro, micro MVC (and it's barely that).

It is intended for anyone wanting to build a starter website or webapp using PHP, and optionally SQLite.

ProtoStack comes built with mod_rewrite, a template engine, and CSS framework (mono/color). This means you can literally fork or download the files, and start working immediately on PHP/Apache.

The format is as follows:

/data - where SQLite databases live
/engine - the PHP code for each page template
/inc - various files that make ProtoStack work such as settings.php, template.class.php
/templates - the .tpl files that control each template's HTML output
index.php - the main routing file that is the brains of ProtoStack

Full Layout is:

    ----data/
	  	example.db
		dbadmin.php (database editor for SQLite databases)
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
	----templates
	      home.tpl
	      example.tpl
	      another.tpl
	      db-example.tpl
	.htaccess
	index.php
	readme.md

      
