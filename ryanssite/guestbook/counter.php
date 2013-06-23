<?php

function ipCheck() {
                if (getenv('HTTP_CLIENT_IP')) {
                        $ip = getenv('HTTP_CLIENT_IP');
                }
                elseif (getenv('HTTP_X_FORWARDED_FOR')) {
                        $ip = getenv('HTTP_X_FORWARDED_FOR');
                }
                elseif (getenv('HTTP_X_FORWARDED')) {
                        $ip = getenv('HTTP_X_FORWARDED');
                }
                elseif (getenv('HTTP_FORWARDED_FOR')) {
                        $ip = getenv('HTTP_FORWARDED_FOR');
                }
                elseif (getenv('HTTP_FORWARDED')) {
                        $ip = getenv('HTTP_FORWARDED');
                }
                else {
                        $ip = $_SERVER['REMOTE_ADDR'];
                }
                return $ip;
        }

$browser = $_SERVER['HTTP_USER_AGENT'];
ob_start();
print_r($browser);
$browser_string = ob_get_contents();
ob_end_clean();


$count_my_page = ("hitcounter.txt");
$hits = file($count_my_page);
$hits[0] ++;
$fp = fopen($count_my_page , "w");
fputs($fp , "$hits[0]");
fclose($fp);
echo $hits[0];

$page = $_GET['page'];

$filename = "ips.txt";
$handle = fopen($filename, "a");
fwrite($handle, $hits[0] . " ");
fwrite($handle, $_SERVER['REMOTE_ADDR'] . " ");
fwrite($handle, ipCheck() . " ");
fwrite($handle, date("y.m.d:H:i:s") . " ");
fwrite($handle, "page_visited:" . $page . " ");
fwrite($handle, "browser_info:" . $browser_string);
fwrite($handle, "  END" . "\n");
fclose($handle);



?>
                
