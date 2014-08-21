<div style="width:600px;">
<?php
echo $this->Form->create('Video');
echo $this->Form->input('author', ['label' => 'Автор']);
echo $this->Form->input('subject', ['label' => 'Заголовок']);
echo $this->Form->input('href', ['label' => 'Ссылка на видео: <small>//www.youtube.com/embed/LDZX4ooRsWs</small>']);
echo $this->Form->end('Сохранить');
?>
</div>