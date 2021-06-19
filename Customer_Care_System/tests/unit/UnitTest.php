<?php 

use PHPUnit\Framework\TestCase;

class UnitTest extends TestCase{

    public function testJob() {
        require('vendor/autoload.php');
        $this->expectOutputString('3');
     } 

}




?>