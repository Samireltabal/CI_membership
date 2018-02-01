<?php 
 defined('BASEPATH') OR exit('No direct script access allowed');
 Class M_Users Extends CI_Model {
    public function __construct() {
        parent::__construct();
    }
    function add_attachment($data) {
        $this->db->insert('attachments',$data);
        $insert_id = $this->db->insert_id();         
        return  $insert_id;
    }
    function add_user($data) {
        $this->db->insert('sm_users',$data);
        $result = $this->db->affected_rows();
		return $result;
    }
    function verify_login($login,$pass) {
        $this->db->select("*");        
        $this->db->where('login',$login);
        $this->db->limit(1);
        $query = $this->db->get('sm_users');
        if ( $query->num_rows() !== 1 ){
            return "No Such User" ;
        }else{

        
        foreach ( $query->result_array() as $return ){
            $hash = $return['password'];
            if ( password_verify($pass,$hash) == 1 ) {
                return "Good Login";
            }else{
                return "Bad Password";
            }
        }
    }
}
    
 }
 ?>