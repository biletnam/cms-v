<?php
Yii::app()->clientScript->registerScript('active_inset', "
	$('li .item-layout a').each(function(index, value) {
	    if ($(this).prop('href') === window.location.href) {
	        $(this).addClass('active');
        }
    });

    $('.wrapper > div.content.inner > div.template-footer > div > div.right-col a').removeAttr('target');

", CClientScript::POS_READY);

/*Скрипт, открывающий все внешние ссылки на сайте в новой вкладке*/
Yii::app()->clientScript->registerScript('all_blank', "
 $(document).ready(function () {
        $('a[href^=http]').each(
            function () {
                if (this.href.indexOf(location.hostname) == -1) {
                    $(this).attr('target', '_blank');
                }
            });
    });
", CClientScript::POS_READY);

/*Скрипт, добавляющий css селекторы для ОС и браузеров*/
Yii::app()->clientScript->registerScript('css_fix', "
var cssFix = function(){
  var u = navigator.userAgent.toLowerCase(),
  addClass = function(el,val){
    if(!el.className) {
      el.className = val;
    } else {
      var newCl = el.className;
      newCl+=(' '+val);
      el.className = newCl;
    }
  },
  is = function(t){return (u.indexOf(t)!=-1)};
  addClass(document.getElementsByTagName('html')[0],[
    (!(/opera|webtv/i.test(u))&&/msie (\d)/.test(u))?('ie ie'+RegExp.$1)
      :is('firefox/2')?'gecko ff2'
      :is('firefox/3')?'gecko ff3'
      :is('gecko/')?'gecko'
      :is('opera/9')?'opera opera9':/opera (\d)/.test(u)?'opera opera'+RegExp.$1
      :is('konqueror')?'konqueror'
      :is('applewebkit/')?'webkit safari'
      :is('mozilla/')?'gecko':'',
    (is('x11')||is('linux'))?' linux'
      :is('mac')?' mac'
      :is('win')?' win':''
  ].join(' '));
}();
", CClientScript::POS_READY);
?>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title><?php if ($this->title) echo CHtml::encode($this->title), ' - ', CHtml::encode(Yii::app()->config->sitename); ?></title>
    <meta name="keywords" content="<?php echo CHtml::encode($this->keywords); ?>"/>
    <meta name="description" content="<?php echo CHtml::encode($this->description); ?>"/>
    <meta name="language" content="ru"/>
    <meta name="author" content="<?php echo CHtml::encode(Yii::app()->config->author); ?>"/>
    <link rel="icon" type="image/vnd.microsoft.icon" href="/favicon.ico">
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/style.css" rel="stylesheet" type="text/css"/>
    <!-- Yandex.Metrika counter -->
    <script type="text/javascript">
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function() {
                try {
                    w.yaCounter32133240 = new Ya.Metrika({
                        id:32133240,
                        clickmap:true,
                        trackLinks:true,
                        accurateTrackBounce:true,
                        webvisor:true
                    });
                } catch(e) { }
            });

            var n = d.getElementsByTagName("script")[0],
                s = d.createElement("script"),
                f = function () { n.parentNode.insertBefore(s, n); };
            s.type = "text/javascript";
            s.async = true;
            s.src = "https://mc.yandex.ru/metrika/watch.js";

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else { f(); }
        })(document, window, "yandex_metrika_callbacks");
    </script>
    <noscript><div><img src="https://mc.yandex.ru/watch/32133240" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
    <!-- /Yandex.Metrika counter -->
</head>
<body>

<div class="fond"></div>
<div class="wrapper">
    <?php
    if (isset(Yii::app()->params) && isset(Yii::app()->params->isDemo) && Yii::app()->params->isDemo):?>
    <header>
        <div class="header-scroll">
            <div class="inner">
                <div class="header-line">
                    <a href="http://plusonecms.ru/" class="back"></a>
                    <div class="grid"></div>
                    <a href="http://viz.plusonecms.ru/" class="logo">сайт-визитка</a>

                    <div class="grid"></div>
                    <a href="http://corp.plusonecms.ru/" class="corp">корпоративный сайт</a>
                    <a href="http://shop.plusonecms.ru/" class="shop">интернет-магазин</a>
                </div>
                <div class="btn-login-line">
                    <span>Протестировать панель администратора</span>
                    <a href="<?php echo Yii::app()->createAbsoluteUrl('/manage'); ?>" target="_blank">войти</a>
                </div>
            </div>
        </div>
    </header>
<?php endif;?>

    <div class="content inner">
        <div class="template-header">


            <div class="header-content">
                <div class="left">
                    <a href="<?php echo Yii::app()->request->getBaseUrl(true); ?>">
                        <img src="images/fish.svg" alt="" class="fish">
                        <?php $this->widget('application.widgets.OutAreaWidget', array('name' => 'zagolovok-v-shapke')); ?>
                    </a>
                </div>
                <div class="phone">
                    <?php $this->widget('application.widgets.OutAreaWidget', array('name' => 'telefony-v-shapke')); ?>
                </div>
            </div>
            <div class="wave-line"></div>
        </div>

        <nav>
            <?php $this->widget('application.widgets.OutMenu', array('name' => 'osnovnoe-menju')); ?>
        </nav>

        <?php echo $content; ?>
        <div class="template-footer">
            <div class="bottom-line">
                <div class="left-col">© ООО «<span>Fishpangram</span>», 2015</div>
                <div class="right-col">
                    <?php $this->widget('application.widgets.OutAreaWidget', array('name' => 'sotsseti-v-podvale-shablona')); ?>
                </div>
            </div>
        </div>
    </div>

    <?php if (isset(Yii::app()->params) && isset(Yii::app()->params->isDemo) && Yii::app()->params->isDemo):?>
    <footer>
        <div class="top-foot ">
            <div class="inner">
                <p>
                    Весь контент на демонстрационной версии является выдуманным, а все совпадения с реальными
                    организациями - случайны.
                    <br>
                    При разработке ни одна рыба не пострадала.
                </p>
            </div>
        </div>
        <div class="btn-order-line">
            <div class="inner">
                <a href="http://plusonecms.ru/?kind=1#anchor-order-form">заказать</a>
            </div>
        </div>
        <div class="bottom-foot">
            <div class="inner">
                <a href="http://plusonedev.ru/" class="left-col">© ООО «Плюс один», 2015</a>

                <div class="right-col">
                    <a href="https://vk.com/plusodin_web" class="vk" target="_blank"></a>
                    <a href="https://www.facebook.com/plusodin" class="fb" target="_blank"></a>
                    <!--                    <a href="#" class="in"></a>-->
                    <a href="https://twitter.com/plusodinn" class="tw" target="_blank"></a>
                </div>
            </div>
        </div>
    </footer>
    <?php endif;?>
</div>
</body>
</html>