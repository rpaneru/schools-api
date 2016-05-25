<?php
return array(
    'db' => array(
        'adapters' => array(
            'schoolsDbAdapter' => array(
                'database' => 'schools',
                'driver' => 'PDO_Mysql',
                'hostname' => 'localhost',
                'username' => 'root',
                'password' => 'rajesh',
                'dsn' => 'mysql:dbname=schools;host=localhost',
            ),
        ),
    ),
    'zf-mvc-auth' => array(
        'authentication' => array(
            'adapters' => array(
                'schoolsdbadapter' => array(
                    'adapter' => 'ZF\\MvcAuth\\Authentication\\OAuth2Adapter',
                    'storage' => array(
                        'adapter' => 'pdo',
                        'dsn' => 'mysql:dbname=schools;host=localhost',
                        'route' => '/oauth',
                        'username' => 'root',
                        'password' => 'rajesh',
                    ),
                ),
            ),
        ),
    ),
);
