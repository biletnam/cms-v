<?php
Yii::app()->clientScript->registerScript("send-message", "
        $(document).off('click', '.button');
        $(document).on('click', '.button', function(){
            $.ajax({
                type: 'POST',
                url: '/callback',
                cache: false,
                async: false,
                data: $('#review-form').serialize(),
				success:function(data) {
				    var responce = $(data);
				    $('.contact-form').html(responce.html());;
				},
				error: function(data){
				}
            });
            //return false;
        });
    ", CClientScript::POS_READY);
?>
<div class="contact-form">
    <?php if (Yii::app()->user->hasFlash('callback_message')): ?>
        <div class="flash-success">
            <?php echo Yii::app()->user->getFlash('callback_message'); ?>
        </div>
    <?php else: ?>
    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'review-form',
        'htmlOptions' => array('enctype' => 'multipart/form-data'),
    )); ?>

    <div class="form">
        <p>Напишите нам</p>
        <div class="row">
            <?php echo $form->textField($model, 'name', array('placeholder'=>"Фамилия Имя Отчество *",'maxlength' => 255)); ?>
        </div>
        <div class="row">
            <?php echo $form->textField($model, 'email', array('placeholder'=>$model->getAttributeLabel('email') . ' *','maxlength' => 255)); ?>
        </div>
        <div class="row">
            <?php echo $form->textField($model, 'phone', array('placeholder'=>$model->getAttributeLabel('phone'),'maxlength' => 255)); ?>
        </div>
        <div class="row">
            <?php echo $form->textArea($model, 'text', array('class' => 'txt', 'rows' => 6, 'cols' => 30, 'placeholder'=>$model->getAttributeLabel('text'). ' *','maxlength' => 700)); ?>
        </div>
        <?php if (extension_loaded('gd') and CallbackConfig::model()->checkCaptchaEnabled()): ?>
        <div class="row captcha">
			<div id="captcha-block">
                <?=CHtml::activeTextField($model, 'verifyCode', array('id' => 'captcha', 'placeholder'=>'Введите код'))?>
            <? $this->widget('CCaptcha', array('captchaAction'=>'/callback/default/captcha', 'buttonLabel'=>'Обновить картинку'))?>
			</div>

        </div>
        <?php endif; ?>
        <?php $errors=$model->getErrors(); ?>
            <div class="errorSummary"><?php if(count($errors)>0) echo("Не все поля заполнены корректно."); else echo(" "); ?></div>
        <div class="row">
            <div class="button"><?php echo CHtml::button('Отправить', array('id'=>'send-message', 'name' => 'Send message')); ?></div>
        </div>
    </div>
    <?php $this->endWidget(); ?>
    <?php endif; ?>
</div>
