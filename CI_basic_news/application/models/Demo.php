<?php
	
class Demo extends CI_Model{

	public function __construct()
	{
		$this->load->database();
	} 

	public function get_id_data($id)
	{
		$this->db->where('id',$id);
		// $this->db->select('*');
		// $this->db->from('news');

		$result = $this->db->get('news');

		if($result->num_rows() >0)
		{
			return $result->row_array();
		}
	}


	public function get_news()
	{
		$query = $this->db->query('SELECT * FROM `news`');

		return $query->result();
	}

	public function get_data($slug = FALSE)
	{
		if($slug === FALSE)
		{
			$query = $this->db->get('news');
			return $query->result_array();	

		}
		$query = $this->db->get_where('news',array('slug' =>$slug));
		return $query->row_array();
	}

	public function insert_record($data)
	{
		$this->db->insert('news',$data);
		return $this->db->insert_id();
	}


	public function update_record($id,$value)
	{
		
		//$values = array('title' => $title, 'text' => $text);
		$this->db->where('id',$id);
		$this->db->update('news',$value);
	}

	
}

?>