<?php
class Fibonnaci
{
    //[DECLARATIONS VARS]
    private $f1;
    private $f2;
    private $dividers_quantity;
    private $count;

    function __construct(){
        //[CONSTRUCT INITIALIZE VARS]
        $this->f1 = 1;
        $this->f2 = 1;
        $this->dividers_quantity;
        $this->count = 0;
    }

    //[INIT SET VARS]
    public function setDividers_quantity($dividers_quantity){
        $this->setDividers_quantity = $dividers_quantity;
    }

    public function doFibonacci(){
        $result = '';
        while(true)
        {
            $temp = $this->f1 + $this->f2;
            $this->count = 0;
            $this->numDivisores($temp, 1);
            
            if($this->count > $this->setDividers_quantity)
            {
                $result = 'El número con más de '. $this->setDividers_quantity . ' divisores es >>> '. $temp . ' con >>> '.$this->count.' divisores.';
                break;
            }
            $this->f1 = $this->f2;
            $this->f2 = $temp;
        }      
        echo $result;
    }

    private function numDivisores($number, $divisor){
        
		if ($divisor <= $number)
        {
			if($number % $divisor == 0)
                $this->count++;
			
            if($this->count <= $this->setDividers_quantity)
                $this->numDivisores($number, $divisor + 1);
		}
	}
}
?>