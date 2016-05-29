<?php
return array(
    'zf-mvc-auth' => array(
        'authentication' => array(
            'adapters' => array(
                'schools_oauth' => array(
                    'adapter' => 'ZF\\MvcAuth\\Authentication\\OAuth2Adapter',
                    'storage' => array(
                        'adapter' => 'pdo',
                        'dsn' => 'mysql:dbname=schools;host=localhost',
                        'route' => '/oauth',
                        'username' => 'root',
                        'password' => '',
                    ),
                ),
            ),
        ),
    ),
    'db' => array(
        'adapters' => array(
            'schools_adapter' => array(
                'database' => 'schools',
                'driver' => 'PDO_Mysql',
                'hostname' => 'localhost',
                'username' => 'root',
                'password' => '',
                'dsn' => 'mysql:dbname=schools;host=localhost',
            ),
        ),
    ),
);
