<?php

class IndexController extends AppController
{
    public $components = ['Paginator'];
    public $helpers = ['Html', 'Form'];
    public $name = 'video';
    
    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('view', 'index');
    }
    public function index($page = 1, $sort = null, $direction = null)
    {
        if (isset($this->request->params['page'])) {
            $this->request->params['named']['page'] = $this->request->params['page'];
            $this->request->params['named']['sort'] = $this->request->params['sort'];
            $this->request->params['named']['direction'] = $this->request->params['direction'];
        }
        $this->Paginator->settings = [
            'limit' => 20,
            'order' => [
                'id' => 'desc',
            ],
        ];
        
        if(!$this->Auth->loggedIn())
        {
            $this->Paginator->settings = ['conditions' => ['Video.active = 1']];
        }
        
        $data = $this->Paginator->paginate($this->name);
        $this->set( 'loggedIn', $this->Auth->loggedIn() );
        $this->set(compact('data'));
    }
    
    public function add()
    {
        if(!empty($this->data))
        {
            if($this->video->save($this->data['Video']))
            {
                $this->Session->setFlash('Ваше видео добавлено и ожидает модерации.');
                $this->redirect('/');
            }
        }
        $this->set('add');
    }
    
    public function apply($id)
    {
        if($this->Auth->loggedIn())
        {
            settype($id, 'integer');
            $data['active'] = 1;
            $data['id'] = $id;
            
            if($this->video->save($data))
            {
                $this->Session->setFlash('Видео одобрено.');
                $this->redirect('/');
            }
        }
    }
    
    public function cancel($id)
    {
        if($this->Auth->loggedIn())
        {
            settype($id, 'integer');
            
            if($this->video->delete($id))
            {
                $this->Session->setFlash('Видео удалено.');
                $this->redirect('/');
            }
        }
    }
    
}