<?php
return array(
    'service_manager' => array(
        'factories' => array(
            'Profiles\\V1\\Rest\\ProfileType\\ProfileTypeResource' => 'Profiles\\V1\\Rest\\ProfileType\\ProfileTypeResourceFactory',
        ),
    ),
    'router' => array(
        'routes' => array(
            'profiles.rest.profile-type' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/profile-type[/:profile_type_id]',
                    'defaults' => array(
                        'controller' => 'Profiles\\V1\\Rest\\ProfileType\\Controller',
                    ),
                ),
            ),
        ),
    ),
    'zf-versioning' => array(
        'uri' => array(
            0 => 'profiles.rest.profile-type',
        ),
    ),
    'zf-rest' => array(
        'Profiles\\V1\\Rest\\ProfileType\\Controller' => array(
            'listener' => 'Profiles\\V1\\Rest\\ProfileType\\ProfileTypeResource',
            'route_name' => 'profiles.rest.profile-type',
            'route_identifier_name' => 'profile_type_id',
            'collection_name' => 'profile_type',
            'entity_http_methods' => array(
                0 => 'GET',
            ),
            'collection_http_methods' => array(
                0 => 'GET',
            ),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'Profiles\\V1\\Rest\\ProfileType\\ProfileTypeEntity',
            'collection_class' => 'Profiles\\V1\\Rest\\ProfileType\\ProfileTypeCollection',
            'service_name' => 'ProfileType',
        ),
    ),
    'zf-content-negotiation' => array(
        'controllers' => array(
            'Profiles\\V1\\Rest\\ProfileType\\Controller' => 'HalJson',
        ),
        'accept_whitelist' => array(
            'Profiles\\V1\\Rest\\ProfileType\\Controller' => array(
                0 => 'application/vnd.profiles.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ),
        ),
        'content_type_whitelist' => array(
            'Profiles\\V1\\Rest\\ProfileType\\Controller' => array(
                0 => 'application/vnd.profiles.v1+json',
                1 => 'application/json',
            ),
        ),
    ),
    'zf-hal' => array(
        'metadata_map' => array(
            'Profiles\\V1\\Rest\\ProfileType\\ProfileTypeEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'profiles.rest.profile-type',
                'route_identifier_name' => 'profile_type_id',
                'hydrator' => 'Zend\\Hydrator\\ArraySerializable',
            ),
            'Profiles\\V1\\Rest\\ProfileType\\ProfileTypeCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'profiles.rest.profile-type',
                'route_identifier_name' => 'profile_type_id',
                'is_collection' => true,
            ),
        ),
    ),
    'zf-mvc-auth' => array(
        'authorization' => array(
            'Profiles\\V1\\Rest\\ProfileType\\Controller' => array(
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
    'zf-content-validation' => array(
        'Profiles\\V1\\Rest\\ProfileType\\Controller' => array(
            'input_filter' => 'Profiles\\V1\\Rest\\ProfileType\\Validator',
        ),
    ),
    'input_filter_specs' => array(
        'Profiles\\V1\\Rest\\ProfileType\\Validator' => array(),
    ),
);
