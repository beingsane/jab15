<?php
/**
 * @package Jab15
 * @author  Nicholas K. Dionysopoulos / Akeeba Ltd
 * @license GNU GPLv3
 */

// Protect from unauthorized access
defined('_JEXEC') or die();

if (!defined('FOF30_INCLUDED') && !@include_once(JPATH_LIBRARIES . '/fof30/include.php'))
{
	throw new RuntimeException('FOF 3.0 is not installed', 500);
}

FOF30\Container\Container::getInstance('com_jab15')->dispatcher->dispatch();