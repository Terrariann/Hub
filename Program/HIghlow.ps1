
#gen random nummber
$answer = Get-Random -Minimum 1 -Maximum 10

#debug - display answer

do {
#ask for guess
$guess = Read-Host "guess a number 1-10"

#comparing guess to answer
 
    #if guess is lower, output higher
    if ($guess -lt $answer){
        "higher"
    }

    #if guess is Higher, output lower
    if ($guess -gt $answer){
        "lower"
    }

    #if guess is right, output correct
    if ($guess -eq $answer){
        "correct"
    }
}  until ($guess -eq $answer)