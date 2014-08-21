<?php

class Video extends AppModel
{
    public $name = 'video';
    
    public $validate = [
        'href' => [
            'rule' => 'notEmpty',
            'message' => 'Поле "Ссылка" не может быть пустым',
        ],
        'subject' => [
            'rule' => 'notEmpty',
            'message' => 'Поле "Заголовок" не может быть пустым',
        ],
        'author' => [
            'rule' => 'notEmpty',
            'message' => 'Поле "Автор" не может быть пустым',
        ],
    ];
}