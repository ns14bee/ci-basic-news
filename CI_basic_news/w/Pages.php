<?php
	
	defined('BASEPATH') OR exit('direct script access allowed');

class Pages extends CI_Controller{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('demo');
		$this->load->database();
		$this->load->helper('url_helper');
	}
	public function index($page = 'home')
	{

		if(! file_exists(APPPATH.'views/pages/'.$page.'.php'))
		{
			show_404();
		}


		$data['title'] = ucfirst($page);

		$this->load->view('templates/header',$data);
		$this->load->view('pages/home',$data);
		$this->load->view('templates/footer',$data);

	}
	public function about($page = 'about')
	{

		if(! file_exists(APPPATH.'views/pages/'.$page.'.php'))
		{
			show_404();
		}

		$data['title'] = ucfirst($page);

		$this->load->view('templates/header',$data);
		$this->load->view('pages/'.$page,$data);
		$this->load->view('templates/footer',$data);

	}

	public function display($page = 'display')
	{

		if(! file_exists(APPPATH.'views/pages/'.$page.'.php'))
		{
			show_404();
		}

		$data['records'] = $this->demo->get_news();
		$data['title'] = ucfirst($page);
		$this->load->view('templates/header',$data);
		$this->load->view('pages/'.$page,$data);
		$this->load->view('templates/footer',$data);
	}

	public function news_display($page = 'news')
	{

		if(! file_exists(APPPATH.'views/pages/'.$page.'.php'))
		{
			show_404();
		}

		$data['records'] = $this->demo->get_data();
		$data['title'] = ucfirst($page);
		$this->load->view('templates/header',$data);
		$this->load->view('pages/'.$page,$data);
		$this->load->view('templates/footer',$data);
	}

	public function news_detail($page="news_detail",$slug = NULL)
	{
		
		$data['records'] = $this->demo->get_data($slug);
		$data['title'] = ucfirst($page);
		if (empty($data['records']))
        {
                show_404();
        }
		$this->load->view('templates/header',$data);
		$this->load->view('pages/'.$page,$data);
		$this->load->view('templates/footer',$data);


	}

	public function insert_data($page="insert")
	{
		if(! file_exists(APPPATH.'views/pages/'.$page.'.php'))
		{
			show_404();
		}
			
		$data2['title'] = $page;

		$this->load->view('templates/header',$data2);
		$this->load->view('pages/'.$page,$data2);
		$this->load->view('templates/footer',$data2);


		if($this->input->post('submit'))
		{
			$data['title'] = $this->input->post('title');
			$data['text'] = $this->input->post('detail');

			$result = $this->demo->insert_record($data);

			if($result>0)
			{
				echo "record saved successfully.";
			}
			else
			{
				echo "record couldn't be saved.";
			}
		}
	}

	public function update_data($data,$page="edit")
	{
		if(! file_exists(APPPATH.'views/pages/'.$page.'.php'))
		{
			show_404();
		}
		
		

		if($this->input->post['submit'])
		{
			$data['title'] = $this->input->post('title');
			$data['text'] = $this->input->post('detail');

			$result =  $this->demo->update_data($data);

			if($result)
			{
				echo "updated";
			}			
			else
			{
				echo "error";
			}
		}
		$id=$this->input->get('id');
		$data['record'] = $this->demo->get_id_data($id);
		$data['title'] = $page;
		$this->load->view('templates/header',$data);
		$this->load->view('pages/'.$page,$data);
		$this->load->view('templates/footer',$data);
		
	
	}

}

?>