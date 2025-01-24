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

<p>ProtoStack uses SQLite as its database engine. Most versions of PHP should be bundled with this. This page shows you some examples of how to work with data and include it in your new projects.</p>

<p>
  Firstly, let's create a new table in engine/db-example.php
</p>

<pre>
<samp class="ph white bg-black">// Create or open the database
$db_file = 'data/example.db';
$db = new SQLite3($db_file);

// Create the table (if it doesn't exist)
$db->exec("CREATE TABLE IF NOT EXISTS users (
username TEXT NOT NULL UNIQUE,
password TEXT NOT NULL,
email TEXT NOT NULL UNIQUE
)");</samp>
</pre>
<p>Now, let's add two rows of data in engine/db-example.php
</p>
<pre>
<samp class="ph white bg-black">$result = $db->query("SELECT COUNT(*) FROM users");
$row = $result->fetchArray();
if ($row[0] == 0) {
  $db->exec("INSERT INTO users (username, password, email) VALUES
    ('user1', 'password123', 'user1@example.com'),
    ('user2', 'securepass', 'user2@example.com'),
    ('user3', 'anotherpass', 'user3@example.com')
  ");
}</samp>
</pre>
<p>Now, 'get' the data from the 'team' table, and put it into a PHP array called $team in engine/db-example.php
</p>
<pre>
<samp class="ph white bg-black">$result = $db->query("SELECT * FROM users");
$i = 0;

// loop thru the data, putting it into the team array
while ($row = $result->fetchArray(SQLITE3_ASSOC)) {
  $team[$i]['username'] = $row['username']; 
  $team[$i]['password'] = $row['password']; 
  $team[$i]['email'] = $row['email']; 
$i++;
      }</samp>
      </pre>
<p>The $team array now contains the three rows of data pulled from the database using the 'query' SQLite command above. This means that we can now use it in PHP code, or simply use the template engine 'LOOP' command to manipulate the data. See below.
</p>

<p>Now, let's use the template engine to show the data in templates/db-example.tpl
</p>
<pre>
<samp class="ph white bg-black">&lt;table&gt;
  &lt;tr&gt;
  &lt;th&gt;Username&lt;/th&gt;&lt;th&gt;Password&lt;/th&gt;&lt;th&gt;Email&lt;/th&gt;
  &lt;/tr&gt;
  &lbrace;LOOP:team&rbrace;
  &lt;tr&gt;
  &lt;td&gt;&lbrace;username}&lt;/td&gt;&lt;td&gt;&lbrace;password}&lt;/td&gt;&lt;td&gt;&lbrace;email}&lt;/td&gt;
  &lt;/tr&gt;
  &lbrace;ENDLOOP}
&lt;/table&gt;</samp>
</pre>
<h3>The loop code above produces the table below</h3>
<table>
  <tr>
  <th>Username</th><th>Password</th><th>Email</th>
  </tr>
  {LOOP:team}
  <tr>
  <td>{username}</td><td>{password}</td><td>{email}</td>
  </tr>
  {ENDLOOP}
</table>
  
 <p>You can read more about SQLite <a href="https://www.sqlitetutorial.net/">here</a>.</p>
   
  

<hr/>
   <p>&copy; <?php echo date("Y"); ?> ProtoStack</p> 
</div>  
</body>
</html>