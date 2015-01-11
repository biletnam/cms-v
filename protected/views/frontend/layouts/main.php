<?php $this->beginContent('//layouts/main_layout'); ?>
<div class="inner">
	<?php $this->widget('zii.widgets.CBreadcrumbs', array(
		'homeLink' => CHtml::link('Главная','/'),
		'separator' => ' <span class="separator"> &bull; </span> ',
		'links' => $this->breadcrumbs,
		));
	?>
	<?php echo $content; ?>
	<div class="clear"></div>
</div>
<?php $this->endContent(); ?>