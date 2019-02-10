<?php

// function filled_out($form_vars){
//      //声明变量$form_vars
// 	foreach($form_vars as $key =>$value){
// 		if((!isset($key)) || ($value == '')){
// 			return false;
// 		}
// 	}
// return ture;

   
// }


function valid_email($address){
	if(preg_match('/^\w{3,}@[A-z]{2,6}\.[A-z]{2,5}$/',$address)){
		return true;
	}else{return false;}

}

?>