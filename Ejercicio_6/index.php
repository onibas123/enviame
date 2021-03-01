<?php
    //PHP VERSION 7.2.34 
    //require class
    require_once('Functions.php');
    //instance 
    $func = new Functions();
    //calculate random interval to get distance
    $distance = random_int(0, 2000);
    //set distance random
    $func->setDistance($distance);
    //execute function Fibonacci 'doFibonacci'
    $func->doCalculateTime();
?>