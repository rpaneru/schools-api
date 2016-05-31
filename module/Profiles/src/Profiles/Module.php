<?php
namespace Profiles;

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
        );
    }
    
    public function getServiceConfig()
    {
      return array(
            'factories' => array(
                'Profiles\V1\Rest\ProfileType\ProfileTypeMapper' =>  function ($sm) {
                    $adapter = $sm->get('Zend\Db\Adapter\Adapter');
                    return new \Profiles\V1\Rest\ProfileType\ProfileTypeMapper($adapter);
                }
            )
        );
    }
}
