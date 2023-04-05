<?php
/**
 * Copyright Lê Duy Khoa.
 * (c) Khoald <leduykhoa060690@gmail.com>
 * Date: 2016/05/09
 * Time: 23:09
 */

/* vim: set expandtab sw=4 ts=4 sts=4: */
/**
 * phpMyAdmin sample configuration, you can use it as base for
 * manual configuration. For easier setup you can use setup/
 *
 * All directives are explained in documentation in the doc/ folder
 * or at <https://docs.phpmyadmin.net/>.
 *
 * @package PhpMyAdmin
 */

/**
 * This is needed for cookie based authentication to encrypt password in
 * cookie. Needs to be 32 chars long.
 */
$cfg['blowfish_secret'] = ''; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */


$cfg['MaxTableList'] = 1000;
$cfg['MaxDbList'] = 1000;
$cfg['MaxNavigationItems'] = 1000;
$cfg['CheckConfigurationPermissions'] = false;

/**
 * Servers configuration
 */
$i = 0;

/**
 * First server
 */
$i++;
/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = 'cookie';
/* Server parameters */

$cfg['Servers'][$i]['host'] = 'php-dev-mysql';

$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = false;


$cfg['LoginCookieValidity'] = 36000;

$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';
