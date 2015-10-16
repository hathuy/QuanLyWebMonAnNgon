<?php
/**
* @package td_emes Template
* @author joomlatd
* @file-default
*/

defined('_JEXEC') or die;
$slides          = $this->params->get('slides');
?>

	
<div id="wrapper">

<?php if($loadMenuModule == '1'):?>
<?php require_once dirname(__FILE__).'/nav.php'; ?>
<?php endif;?>
<?php if (($this->countModules('header') && $slides == 2) || ($slides == 1)): ?>
<?php include 'blocks/slider.php'; ?>
<?php endif; ?>	
<!-- No Slides -->
<?php if ($this->countModules('header') && $slides == 0): ?>
<jdoc:include type="modules" name="header" />
<?php endif; ?>	
<?php 
include 'blocks/breadcrumbs.php';	
include 'blocks/top.php';
include 'blocks/main.php';
include 'blocks/info.php';	

?>

</div>	

<?php 
include 'blocks/bottom.php'; 
?>
