<?php
return array(
    'db' => array(
        'adapters' => array(
            'zf2AppDbAdapter' => array(),
        ),
    ),
    'router' => array(
        'routes' => array(
            'oauth' => array(
                'options' => array(
                    'spec' => '%oauth%',
                    'regex' => '(?P<oauth>(/oauth))',
                ),
                'type' => 'regex',
            ),
        ),
    ),
    'zf-mvc-auth' => array(
        'authentication' => array(
            'map' => array(
                'users\\V1' => 'zf2appdbadapter',
                'Users\\V1' => 'zf2appdbadapter',
            ),
        ),
    ),
);
