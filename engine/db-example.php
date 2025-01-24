<?php
# Code needs to be executed here and then assigned to the template.

# Fill up template with values
# this is how you pass variables from this page to the template file.
#  - e.g you show $variable as {variable} in the associated template file. 
$tpl->assign('title', 'Database Examples');
$tpl->assign('h1', 'Database Examples for ProtoStack');
$tpl->assign('description', 'How to work with ProtoStack\'s included database engine.');

# Code to create the 'team' table
$db_file = 'data/example.db';

try {
  // Create or open the database
  $db = new SQLite3($db_file);

 // Create the table (if it doesn't exist)
 $db->exec("CREATE TABLE IF NOT EXISTS users (
  username TEXT NOT NULL UNIQUE,
  password TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE
)");

// Insert some sample data (if the table is empty)
$result = $db->query("SELECT COUNT(*) FROM users");
$row = $result->fetchArray();
if ($row[0] == 0) {
  $db->exec("INSERT INTO users (username, password, email) VALUES
    ('user1', 'password123', 'user1@example.com'),
    ('user2', 'securepass', 'user2@example.com'),
    ('user3', 'anotherpass', 'user3@example.com')
  ");
}

// get the array of data and put it into $result
$result = $db->query("SELECT * FROM users");
$i = 0;

// loop thru the data, putting it into the team array
while ($row = $result->fetchArray(SQLITE3_ASSOC)) {
  $team[$i]['username'] = $row['username']; 
  $team[$i]['password'] = $row['password']; 
  $team[$i]['email'] = $row['email']; 
$i++;
      }


} catch (Exception $e) {
  echo "Error: " . $e->getMessage();
}


# Put the $team PHP variable into a variable that the template engine will use.
$tpl->assign('team', $team);


?>
