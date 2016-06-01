<?php
namespace Users;

use ZF\Apigility\Provider\ApigilityProviderInterface;

class Module implements ApigilityProviderInterface
{
    public function getConfig()
    {
        return include __DIR__ . '/../../config/module.config.php';
    }

    public function getAutoloaderConfig()
    {
        return array(
            'ZF\Apigility\Autoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__,
                ),
            ),
            
            'Zend\Loader\ClassMapAutoloader' => array(
            __DIR__ . '/autoload_classmap.php'),           
        );
    }
    
    public function getServiceConfig()
    {
      return array(
            'factories' => array(
                'Users\V1\Rest\Login\UserDetailsMapper' =>  function ($sm) {
                    $adapter = $sm->get('Zend\Db\Adapter\Adapter');
                    return new \Users\V1\Rest\Login\UserDetailsMapper($adapter);
                }
            )
        );
    }
    
}
