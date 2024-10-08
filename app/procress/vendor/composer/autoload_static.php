<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitcd0e6a4865153952365175d6ee19e46e
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitcd0e6a4865153952365175d6ee19e46e::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitcd0e6a4865153952365175d6ee19e46e::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitcd0e6a4865153952365175d6ee19e46e::$classMap;

        }, null, ClassLoader::class);
    }
}
