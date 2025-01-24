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
<p>This page shows off a few of the things that can be done very easily with the Mono/Color CSS framework to make your ProtoStack look very smart, but also quite functional. Take a look at the <a href="https://asvvvad1.github.io/mono-color/">introduction to Mono/Color</a> to find out what you can do.</p>

<table>
  <thead>
    <tr>
      <th>#</th>
      <th>Widgets Sold</th>
      <th>Revenue (£)</th>
      <th>Profit (£)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>5</td>
      <td>10</td>
      <td>2</td>
    </tr>
    <tr>
      <td>2</td>
      <td>10</td>
      <td>20</td>
      <td>4</td>
    </tr>
    <tr>
      <td>3</td>
      <td>500</td>
      <td>1000</td>
      <td>200</td>
    </tr>
  </tbody>
</table>

<h2>Doing things!</h2>
			<p>Enter how many pounds you want!<br/>
        <span>£ </span><input type="text"> Forms are easy</p>

        <div class="tacenter">
            <h2>Example</h2>
	<p>Many things are easy to do in terms of design</p>
	<a class="btn primary" href="http://disney.com">Go to Disney!</a>
        </div>
  <hr />
  <h2>An alert</h2>
<blockquote class="bg-info b-primary white small"><span class="large">Tip!</span><br>This is an example of an info alert</blockquote>

<hr class="bg-error">
<div class="row">
  <div class="6 col"><h3>Cheesy</h3>Columns and buttons are easy<br /><button class="rounded btn bg-error white"> Cheesey</button></div>
    <div class="card col bg-success white border b-black"><h3 class="white">Apples 'n Pears</h3>You can even have things like cards easily.</div>
</div><hr/>
   <p>&copy; <?php echo date("Y"); ?> ProtoStack</p> 
</div>  
</body>
</html>