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
  <link rel="stylesheet" href="<?php echo $siteurl.$siteroot;  ?>/inc/style.css" type="text/css">
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
        <a href="<?php echo $siteurl.$siteroot;  ?>/" class="uk-navbar-item uk-logo">
		        <img src="<?php echo $siteurl.$siteroot;  ?>/inc/logo.png" alt="stuff here." style="max-width:100%;">
	        </a>
      <div class="tacenter">
          <?php echo $menu_items; ?>
      </div>
    </header>
<hr/>

   <p>&copy; <?php echo date("Y"); ?> ProtoStack</p> 
</div>  
</body>
</html>