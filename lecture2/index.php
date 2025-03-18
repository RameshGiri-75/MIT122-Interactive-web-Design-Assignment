<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
 function calculatetriangleArea($base, $height){
    $area = $base * $height;
    return $area / 2;
 }
 $result =  calculatetriangleArea(5,10);
 echo $result;


//  function findSingleNumber($arr):{
//     $numCount = array();

//     foreach($arr as $num){
//         if (isset($numCounts[$num])){
//              $numCounts[$num]++;
//         }else{
//             $numCounts[$num] = 1;
//         }
//     }
//  }
  

?>
</body>
</html>