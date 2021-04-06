<?php
	
class Demo extends CI_Model{

	public function __construct()
	{
		$this->load->database();
	} 

	public function get_id_data($data)
	{
		$this->db->select('*');
		$this->db->from('news');
		$this->db->where('id',$data);

		$result = $this->db->get();

		if($result->num_rows() >0)
		{
			return $result->result();
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


	public function update_record($id,$title,$text)
	{
		
		$values = array('title' => $title, 'text' => $text);
		$this->db->where('id',$id);
		$this->db->update('news',$values);

		return $this->db->affected_rows();
	}
}

?>