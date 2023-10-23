Write-Host "Enter values of a, b and c for the equation pi = -B+sqrtB2-4xAxC+ 2/A"
$a= Read-Host "A"
$b= Read-Host "B"
$c= Read-Host "C"
$ac= $a * $c
 $answer1= + -$b + 2 / $a 
 $answer2= [math]::Sqrt([Math]::Pow($b, 2) - 4 * $ac) 
 $answer3= $Answer1 + $answer2 
Write-Host "the answer is $answer1 and $answer2 "

