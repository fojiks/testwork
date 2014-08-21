<?php
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
class User extends AppModel
{
    public $name = 'User';
    public $validate = [
        'username' => [
            'required' => [
                'rule' => ['notEmpty'],
                'message' => 'Заполните поле "Логин"'
            ]
        ],
        'password' => [
            'required' => [
                'rule' => ['notEmpty'],
                'message' => 'Заполните поле "Пароль"'
            ]
        ]
    ];
    
    public function beforeSave($options = array()) {
        if (isset($this->data[$this->alias]['password'])) {
            $passwordHasher = new BlowfishPasswordHasher();
            $this->data[$this->alias]['password'] = $passwordHasher->hash(
                $this->data[$this->alias]['password']
            );
        }
        return true;
    }
}