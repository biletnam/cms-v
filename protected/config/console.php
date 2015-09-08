<?php

// This is the configuration for yiic console application.
// Any writable CConsoleApplication properties can be configured here.
$localPath=dirname(__FILE__).'/local.php';
$local=array();
if(file_exists($localPath)){
	$local=require($localPath);
}
return CMap::mergeArray(
	array(
		'basePath' => dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
		'name' => 'Console Application',
	),
	$local
);

