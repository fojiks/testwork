<table style="width:800px">
<?php if(!$loggedIn):?>
    <tr>
	<td><a href="/admin/auth">Войти</a></td>
	</tr>
<?php else:?>
	<tr>
	<td><a href="/admin/logout">Выйти</a></td>
	</tr>
<?php endif;?>
    <?php foreach ($data as $video):?>
    <tr>
        <td style="padding-bottom: 40px;">
            <tr>
                <td><b><?php echo $video['video']['subject']?></b></td>
            </tr>
            <tr>
                <td><iframe width="560" height="315" src="<?php echo $video['video']['href']?>" frameborder="0" allowfullscreen></iframe></td>
            </tr>
            <?php if($loggedIn):?>
            <tr>
                <td><small>Добавил</small>: <b><?php echo $video['video']['author']?></b></td>
                <td><?php if($video['video']['active'] == 0):?><a href='/admin/apply/<?php echo $video['video']['id']?>'>Одобрить</a> /-/<?php endif;?> <a href='/admin/cancel/<?php echo $video['video']['id']?>'>Отклонить</a></td>
            </tr>
            <?php endif;?>
        </td>
    </tr>
    <?php endforeach;?>
</table>
<?php
echo $this->Paginator->numbers();

echo $this->Paginator->prev(
  '« назад ',
  null,
  null,
  array('class' => 'disabled')
);
echo $this->Paginator->next(
  ' вперед »',
  null,
  null,
  array('class' => 'disabled')
);
?>
<br />
<?php
echo $this->Paginator->counter(array(
    'format' => 'Страниц {:page} из {:pages}'
));
?>
<br/>
<a href="/video/add">Добавить видео</a>