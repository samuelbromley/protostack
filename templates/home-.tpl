<?php 
# This PHP code is required and must stay at the top of this file.

# this line finds the root url of the site - e.g. mysite.com
$siteurl = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'];

# this line finds the current path of the site - e.g. /xxx/yyy
$url = $_SERVER['REQUEST_URI'];

# Because I'm bad at coding, we also need the following few line here in the head as well as in inc/settings.php
# enter the root of where you install protostack
# eg if its in yoursite.com/protostack, then enter /protostack - with NO trailing slash

$siteroot = dirname($_SERVER['PHP_SELF']); # - this line makes sure the header file knows which folder it is in.

?><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>{title}</title>
  <meta name="description" content="{description}">
  <link rel="canonical" href="{url}">
  <link rel="stylesheet" href="/inc/mono-color.css">
  <link rel="stylesheet" href="<?php echo $siteurl.$siteroot;  ?>inc/style.css" type="text/css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
  <?php 
  
  # this code allows us to put in the menu items for the navigation bar without having to enter it twice (one for main page and one for mobile version).
  # always better to use full urls (e.g. https://mysite.com/whatever).
  $menu_items = '<span class="ph"><a href="'.$siteurl.$siteroot.'">Home</a></span>
                <span class="ph"><a href="'.$siteurl.$siteroot.'example">Example</a></span>
                <span class="ph"><a href="'.$siteurl.$siteroot.'another">Another</a></span>
                <span class="ph"><a href="'.$siteurl.$siteroot.'db-example">Database Examples</a></span>';
  ?>
  <div class="container">
    <header>
        <a href="<?php echo $siteurl.$siteroot;  ?>">
		        <img src="<?php echo $siteurl.$siteroot;  ?>inc/logo.png" alt="Logo." style="max-width:100%;">
	        </a>
      <div class="tacenter">
          <?php echo $menu_items; ?>
      </div>
    </header>
<h1>{h1}</h1>

<p>ProtoStack is a PHP prototyping framework written by James Welch, so that you can create new prototype web apps in super quick time. Think of ProtoStack as a minimalist cousin to Laravel/CakePHP/CodeIgnighter frameworks - but without any of the pain.</p>
<p>The difference between ProtoStack and the others mentioned is that ProtoStack is very, very small, and easier for amateur coders to start straight away. The components included mean that you can literally have a database-driven site made in minutes. ProtoStack
  has been written by somewhat of an amateur coder (me, James), and so does the basics with little fuss, and doesn't have lots of bloat that can sometimes feel unnecessary.</p>
<p>Included is a template engine, a way to use sqlite (which should be included in your PHP I assume), and the <a href="https://asvvvad1.github.io/mono-color/">Mono/Color Library</a> so that you can do many CSS/JavaScript things with almost zero coding.</p>
<p>There are no requirements (other than PHP 7+ with sqlite) that are needed. Just upload to a webserver and play!</p>
<h2>Getting Started</h2>
<p>Upload the files to your server, in a folder of your choosing, and then edit the inc/settings.php file (you might not even have to do that) - and away you go - a teeny tiny PHP framework with optional flat file fast as fook database. Marvelous!</p><hr/>
   <p>&copy; <?php echo date("Y"); ?> ProtoStack</p> 
</div>  
</body>
</html>