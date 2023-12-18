<?php
class Database {
	public static $db;
	public static $con;
	function Database(){
		//$this->user="root";$this->pass="";$this->host="localhost";$this->ddbb="yibun";
		$this->user="jamesbond";$this->pass="Pellizquito666*";$this->host="PMYSQL154.dns-servicio.com:3306";$this->ddbb="9060392_yibun";
	}

	function connect(){
		$con = new mysqli($this->host,$this->user,$this->pass,$this->ddbb);
		return $con;
	}

	public static function getCon(){
		if(self::$con==null && self::$db==null){
			self::$db = new Database();
			self::$con = self::$db->connect();
		}
		return self::$con;
	}
	
}
?>
