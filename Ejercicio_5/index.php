<?php
    //PHP VERSION 7.2.34 
    //require class
    require_once('Fibonacci.php');
    //instance 
    $fb = new Fibonnaci();
    //set more than dividers example >>>  $fb->setDividers_quantity(14); output >>> 'El número con más de 14 divisores es >>> 144 con >>> 15 divisores.'
    //me funciona hasta 100 divisores... si excedo el 100 me pega el pc xD.
    $fb->setDividers_quantity(14);
    //execute function Fibonacci 'doFibonacci'
    $fb->doFibonacci();
?>