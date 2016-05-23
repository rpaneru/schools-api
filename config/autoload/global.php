<?php
return array(
    'db' => array(
        'adapters' => array(
            'schoolsDbAdapter' => array(),
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
                'users\\V1' => 'schoolsdbadapter',
                'Users\\V1' => 'schoolsdbadapter',
            ),
        ),
    ),
);
