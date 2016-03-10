<?
require 'vkapi.class.php';

$user_id  = $_POST['viewer_id'];
$api_id  = $_POST['api_id'];
$activity_id = $_POST['activity_id'];

$VK = new vkapi($api_id, $user_id);
 
$resp = $VK->api('secure.addAppEvent',
   array('user_id'=>$user_id,
            'activity_id'=>$activity_id,
            'value'=>10
				)
				);
echo '<pre>'; 
print_r($resp);
echo '</pre>';  
?>