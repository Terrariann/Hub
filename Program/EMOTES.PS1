param (
    $names,
    [int]$repeat
)

$emotes = @{
    "see" = "`u{1F648}";
    "hear" = "`u{1F649}";
    "speak" = "`u{1F64A}";
    "jolly" = "`u{2620}";
    "tree" = "`u{1F384}";
    "santa" = "`u{1F385}";
    "poop" = "`u{1F4A9}";
}
foreach ($name in $names){

Write-Host ($emotes[$name] * $repeat)
}
Write-Host
