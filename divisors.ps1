function Divisors 
{
param ([int]$a)
$counter = 0;
[string]$s="";
for ($i=1;$i -le $a;$i++)
{
  if ( ($a % $i) -eq 0)
  {  
  $s += $i;
  $s += ",";
  $counter++;
  }
}
#Write-Host $s
return $counter;
}
Divisors 30030
#64



function fun
{
 param ([int]$a)
if ($a -lt 2) 
{
return $a;
}
if ($a % 2 -eq 1) 
{
 [int]$b = ((fun( $a - 1 )) + 1) ;
 return $b ;
}
else
{
[int]$c = (fun ( $a - 1 )) ; 
 return $c ;
}
}

fun 6 #3
fun 7 #4
fun 8 #4

function fun1
{
 param ([int]$a)
if ($a -lt 2) 
{
return $a;
}
if ($a % 2 -eq 1) 
{
 [int]$b = ((fun1( $a / 2 )) + 1) ;
 return $b ;
}
else
{
[int]$c = (fun1 ( $a - 1 )) ; 
 return $c ;
}
}

fun1 6 #2
fun1 7 #3
fun1 8 #3

function euclideanAlgorithm($originalA, $originalB) {
    $a = [Math]::Abs($originalA)
    $b = [Math]::Abs($originalB)
    
    if ($a -eq 0 -and $b -eq 0) {
    return $null
    }
    
    if ($a -eq 0 -and $b -ne 0) {
    return $b
    }
    
    if ($a -ne 0 -and $b -eq 0) {
    return $a
    }
       
    if ($a -gt $b) {
    return euclideanAlgorithm ($a % $b) $b
    }
    
    return euclideanAlgorithm ($b % $a) $a
    }
    euclideanAlgorithm 2700  756 #108
    euclideanAlgorithm 2002  770 #154



