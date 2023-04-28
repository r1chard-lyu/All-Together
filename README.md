# Deployment:

Environment: PHP 8.2.4  + MySQL 8.0.32

## Step 1: Clone

git clone https://github.com/Richard-YH/All-Together.git

## Step 2: Set up database connection information (local or remote)

Switch the comments to choose between local and remote settings in:

wanna-eat/assets/inc/Config.php
```php
<?php
// Localhost
define('DB_HOST', '127.0.0.1');
define('DB_NAME', 'all-together_database');
define('DB_USER', 'root');
define('DB_PASSWORD', '123456');

// Timezone - if not set, Chinese data retrieved from MySQL will appear as garbled text
date_default_timezone_set("Asia/Taipei");
```

## Step 3: Create the database

After creating the database, import the following SQL file to create the tables and test data:

wanna-eat/sql/build.sql