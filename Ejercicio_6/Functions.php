<?php
class Functions
{
    //[DECLARATIONS VARS]
    private $distance;
    private $ranges;
    
    function __construct(){
        //[CONSTRUCT INITIALIZE VARS]
        $this->distance = 0;
        $this->ranges = array(
            array(
                'index' => 1,
                'from'  => 0,
                'to'    => 99,
                'days'  => 0 
            ),
            array(
                'index' => 2,
                'from'  => 100,
                'to'    => 199,
                'days'  => 1 
            ),
            array(
                'index' => 3,
                'from'  => 200,
                'to'    => 299,
                'days'  => 1 
            ),
            array(
                'index' => 4,
                'from'  => 300,
                'to'    => 399,
                'days'  => 2 
            ),
            array(
                'index' => 5,
                'from'  => 400,
                'to'    => 499,
                'days'  => 3 
            )
        );

        $this->generateRangesExtras();
    }

    private function generateRangesExtras()
    {
        $range = $this->ranges;
        for($i=5; $i < 20; $i++)
        {
            $temp = array(
                'index' => $range[$i - 1]['index'] + 1,
                'from'  => $range[$i - 1]['to'] + 1,
                'to'  => $range[$i - 1]['to'] + 100,
                'days'  => $range[$i - 1]['days'] + $range[$i - 2]['days']
            );

            array_push($this->ranges, $temp);
            $range = $this->ranges;
        }
    }

    //[INIT SET & GET VARS]
    public function setDistance($distance){
        $this->distance = $distance;
    }

    public function doCalculateTime()
    {
        $range = $this->ranges;
        foreach($range as $r)
        {
            if($this->distance >= $r['from'] && $this->distance <= $r['to'])
            {
                echo 'Tiempo de entrega estimado es de : '.$r['days'].' días.<br>Distancia : '.$this->distance.' Km.';
            }
            //echo $r['index'].' | '.$r['from'].' | '.$r['to'].' | '.$r['days'].'<br>';
        }
    }
	
}
?>