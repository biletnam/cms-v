<div class="h1bg">
    <div class="h1pic">
        <h1>Контактная информация</h1>
    </div>
</div>

<div class="info">
    <?php $this->widget('application.widgets.OutAreaWidget', array('name' => 'kontakty')); ?>
</div>
<div class="contact">
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2390.599158221097!2d45.01675499999999!3d53.189170000000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x41410058dc363443%3A0x2f94852612eafe7a!2z0YPQuy4g0JrRg9GA0LDQtdCy0LAsIDHQkCwg0J_QtdC90LfQsCwg0J_QtdC90LfQtdC90YHQutCw0Y8g0L7QsdC7LiwgNDQwMDAw!5e0!3m2!1sru!2sru!4v1429542227765" width="500" height="510" frameborder="0" style="border:0"></iframe>
    </div>
        <?php if (Yii::app()->user->hasFlash('callback_message')): ?>
    <div class="flash-success">
        <?php echo Yii::app()->user->getFlash('callback_message'); ?>
    </div>
    <?php else: ?>
    <div class="send-callback">
        <?php $this->renderPartial('_form', array('model' => $model));?>
    </div>
        <?php endif; ?>
</div>
