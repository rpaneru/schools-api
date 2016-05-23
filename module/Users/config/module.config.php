<?php
return array(
    'service_manager' => array(
        'factories' => array(
            'Users\\V1\\Rest\\Login\\LoginResource' => 'Users\\V1\\Rest\\Login\\LoginResourceFactory',
        ),
    ),
    'router' => array(
        'routes' => array(
            'users.rest.login' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/login[/:userId][/:password][/:profileTypeId]',
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
        'default_version' => 1,
    ),
    'zf-rest' => array(
        'Users\\V1\\Rest\\Login\\Controller' => array(
            'listener' => 'Users\\V1\\Rest\\Login\\LoginResource',
            'route_name' => 'users.rest.login',
            'route_identifier_name' => 'userId',
            'collection_name' => 'login',
            'entity_http_methods' => array(
                0 => 'GET',
            ),
            'collection_http_methods' => array(),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'Users\\V1\\Rest\\Login\\LoginEntity',
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
                'route_identifier_name' => 'userId',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
            'Users\\V1\\Rest\\Login\\LoginCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'users.rest.login',
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
        'Users\\V1\\Rest\\Login\\Validator' => array(
            0 => array(
                'required' => false,
                'validators' => array(),
                'filters' => array(),
                'name' => 'userId',
            ),
            1 => array(
                'required' => false,
                'validators' => array(),
                'filters' => array(),
                'name' => 'password',
            ),
            2 => array(
                'required' => false,
                'validators' => array(),
                'filters' => array(),
                'name' => 'profileTypeId',
            ),
        ),
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
        ),
    ),
);
