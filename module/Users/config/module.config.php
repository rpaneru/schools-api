<?php
return array(
    'service_manager' => array(
        'factories' => array(
            'Users\\V1\\Rest\\Login\\LoginResource' => 'Users\\V1\\Rest\\Login\\LoginResourceFactory',
            'Users\\V1\\Rest\\UserDetails\\UserDetailsResource' => 'Users\\V1\\Rest\\UserDetails\\UserDetailsResourceFactory',
            'Users\\V1\\Rest\\Permission\\PermissionResource' => 'Users\\V1\\Rest\\Permission\\PermissionResourceFactory',
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
            'users.rest.user-details' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/user-details[/:user_details_id]',
                    'defaults' => array(
                        'controller' => 'Users\\V1\\Rest\\UserDetails\\Controller',
                    ),
                ),
            ),
            'users.rest.permission' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/permission[/:userId]',
                    'defaults' => array(
                        'controller' => 'Users\\V1\\Rest\\Permission\\Controller',
                    ),
                ),
            ),
        ),
    ),
    'zf-versioning' => array(
        'uri' => array(
            0 => 'users.rest.login',
            1 => 'users.rest.user-details',
            2 => 'users.rest.permission',
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
        'Users\\V1\\Rest\\UserDetails\\Controller' => array(
            'listener' => 'Users\\V1\\Rest\\UserDetails\\UserDetailsResource',
            'route_name' => 'users.rest.user-details',
            'route_identifier_name' => 'user_details_id',
            'collection_name' => 'user_details',
            'entity_http_methods' => array(
                0 => 'GET',
            ),
            'collection_http_methods' => array(),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'Users\\V1\\Rest\\UserDetails\\UserDetailsEntity',
            'collection_class' => 'Users\\V1\\Rest\\UserDetails\\UserDetailsCollection',
            'service_name' => 'UserDetails',
        ),
        'Users\\V1\\Rest\\Permission\\Controller' => array(
            'listener' => 'Users\\V1\\Rest\\Permission\\PermissionResource',
            'route_name' => 'users.rest.permission',
            'route_identifier_name' => 'userId',
            'collection_name' => 'permission',
            'entity_http_methods' => array(
                0 => 'GET',
            ),
            'collection_http_methods' => array(),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'Users\\V1\\Rest\\Permission\\PermissionEntity',
            'collection_class' => 'Users\\V1\\Rest\\Permission\\PermissionCollection',
            'service_name' => 'Permission',
        ),
    ),
    'zf-content-negotiation' => array(
        'controllers' => array(
            'Users\\V1\\Rest\\Login\\Controller' => 'HalJson',
            'Users\\V1\\Rest\\UserDetails\\Controller' => 'HalJson',
            'Users\\V1\\Rest\\Permission\\Controller' => 'HalJson',
        ),
        'accept_whitelist' => array(
            'Users\\V1\\Rest\\Login\\Controller' => array(
                0 => 'application/vnd.users.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ),
            'Users\\V1\\Rest\\UserDetails\\Controller' => array(
                0 => 'application/vnd.users.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ),
            'Users\\V1\\Rest\\Permission\\Controller' => array(
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
            'Users\\V1\\Rest\\UserDetails\\Controller' => array(
                0 => 'application/vnd.users.v1+json',
                1 => 'application/json',
            ),
            'Users\\V1\\Rest\\Permission\\Controller' => array(
                0 => 'application/vnd.users.v1+json',
                1 => 'application/json',
            ),
        ),
    ),
    'zf-hal' => array(
        'metadata_map' => array(
            'Users\\V1\\Rest\\Login\\UserDetailsEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'users.rest.login',
                'route_identifier_name' => 'route_login',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
            'Users\\V1\\Rest\\Login\\LoginCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'users.rest.login',
                'route_identifier_name' => 'route_login',
                'is_collection' => true,
            ),
            'Users\\V1\\Rest\\UserDetails\\UserDetailsEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'users.rest.user-details',
                'route_identifier_name' => 'user_details_id',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
            'Users\\V1\\Rest\\UserDetails\\UserDetailsCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'users.rest.user-details',
                'route_identifier_name' => 'user_details_id',
                'is_collection' => true,
            ),
            'Users\\V1\\Rest\\Permission\\PermissionEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'users.rest.permission',
                'route_identifier_name' => 'userId',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
            'Users\\V1\\Rest\\Permission\\PermissionCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'users.rest.permission',
                'route_identifier_name' => 'userId',
                'is_collection' => true,
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
                    'GET' => true,
                    'POST' => false,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
            ),
            'Users\\V1\\Rest\\UserDetails\\Controller' => array(
                'collection' => array(
                    'GET' => false,
                    'POST' => false,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
                'entity' => array(
                    'GET' => true,
                    'POST' => false,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
            ),
            'Users\\V1\\Rest\\Permission\\Controller' => array(
                'collection' => array(
                    'GET' => false,
                    'POST' => false,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
                'entity' => array(
                    'GET' => true,
                    'POST' => false,
                    'PUT' => false,
                    'PATCH' => false,
                    'DELETE' => false,
                ),
            ),
        ),
    ),
);
