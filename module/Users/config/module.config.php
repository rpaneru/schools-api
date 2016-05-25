<?php
return array(
    'service_manager' => array(
        'factories' => array(
            'LoginResource' => 'Users\\V1\\Rest\\Login\\LoginResourceFactory',
        ),
    ),
    'router' => array(
        'routes' => array(
            'users.rest.login' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/login[/:json_params]',
                    'defaults' => array(
                        'controller' => 'Users\\V1\\Rest\\Login\\Controller',
                    ),
                ),
            ),
        ),
    ),
    'zf-versioning' => array(
        'uri' => array(
            0 => 'users.rest.login',
        ),
    ),
    'zf-rest' => array(
        'Users\\V1\\Rest\\Login\\Controller' => array(
            'listener' => 'Users\\V1\\Rest\\Login\\LoginResource',
            'route_name' => 'users.rest.login',
            'route_identifier_name' => 'json_params',
            'collection_name' => 'login',
            'entity_http_methods' => array(
                0 => 'GET',
            ),
            'collection_http_methods' => array(),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'Users\\V1\\Rest\\Login\\UserDetailsEntity',
            'collection_class' => 'Users\\V1\\Rest\\Login\\LoginCollection',
            'service_name' => 'Login',
        ),
    ),
    'zf-content-negotiation' => array(
        'controllers' => array(
            'Users\\V1\\Rest\\Login\\Controller' => 'HalJson',
        ),
        'accept_whitelist' => array(
            'Users\\V1\\Rest\\Login\\Controller' => array(
                0 => 'application/vnd.users.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ),
        ),
        'content_type_whitelist' => array(
            'Users\\V1\\Rest\\Login\\Controller' => array(
                0 => 'application/vnd.users.v1+json',
                1 => 'application/json',
            ),
        ),
    ),
    'zf-hal' => array(
        'metadata_map' => array(
            'Users\\V1\\Rest\\Login\\LoginEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'users.rest.login',
                'route_identifier_name' => 'login_id',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
            'Users\\V1\\Rest\\Login\\LoginCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'users.rest.login',
                'route_identifier_name' => 'route_login',
                'is_collection' => true,
            ),
            'Users\\V1\\Rest\\Login\\UserDetailsEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'users.rest.login',
                'route_identifier_name' => 'route_login',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
        ),
    ),
    'zf-content-validation' => array(
        'Users\\V1\\Rest\\Login\\Controller' => array(
            'input_filter' => 'Users\\V1\\Rest\\Login\\Validator',
        ),
    ),
    'input_filter_specs' => array(
        'Users\\V1\\Rest\\Login\\Validator' => array(),
    ),
    'zf-mvc-auth' => array(
        'authorization' => array(
            'Users\\V1\\Rest\\Login\\Controller' => array(
                'collection' => array(
                    'GET' => false,
                    'POST' => false,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
                'entity' => array(
                    'GET' => false,
                    'POST' => false,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
            ),
        ),
    ),
);
