<?php
App::uses('BlowfishPasswordHasher', 'Controller/Component/Auth');
App::uses('Video', 'Model');
class UserController extends AppController
{
    public $name = 'User';
    
    public $helpers = ['Html', 'Form'];
    
    public $components = [
        'Paginator',
        'Session',
        'Auth' => [
            'loginAction' => [
                'controller' => 'index',
                'action' => 'index',
            ],
            'authError' => 'Did you really think you are allowed to see that?',
            'authenticate' => [
                'Form' => [
                    'userModel' => 'Users.User', 
                    'fields' => ['username' => 'username', 'password' => 'password'], 
                    'passwordHasher' => 'Blowfish'
                ],
            ]
        ]
    ];
    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('view', 'login');
    }
    public function login()
    {
        if ($this->request->is('post')) {
            if ($this->Auth->login()) {
                return $this->redirect($this->Auth->redirect());
            }
            $this->Session->setFlash(__('Invalid username or password, try again'));
        }
    }
      
    public function logout() {
        return $this->redirect($this->Auth->logout());
    }
}