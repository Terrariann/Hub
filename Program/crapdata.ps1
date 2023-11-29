#create
function initialize-crappyDB {
    


#check if exist 
if (-not (Test-Path 'crappydb')){

    #if not make
    New-Item 'crappydb' -ItemType Directory
    Set-Location 'crappydb'
        #make Db in subfolder
        New-Item 'crappydb.txt' -ItemType File
    }
}
initialize-crappyDB
#insert
$records = @(
    @("w123456","john","smith"),
    @("w234567","jane","doe"),
    @("w345678","jack","sprat")
    $db = "$pwd\crappydb\crappydb.txt"
    $fs = [system.i0.streamwriter]::new($db)
    foreach ($r in  $records){
        $fs.write($r[0])
        $fs.write(",")
        $fs.write($r[1])
        $fs.write(",")
        $fs.write($r[2])
        $fs.write("`n")
    }

add-data
)



#Display
function Select-Data {
    $db = "$pwd\crappydb\crappydb.txt"
    $records = Get-Content $db
    foreach ($r in $records){
       Write-Host $r
    }
}

#Update with new info


#delete
function remove-data {
    Param {
        $id
    }
    $lines = Get-Content $db = "$pwd\crappydb\crappydb.txt"
    remove-item "$pwd\crappydb\crappydb.txt"
    foreach ($line in $lines){
        $fields = $line.Split(",")
        if ($fields[0] -ne $id) {
            #ignore line don't want
            Add-Content "$pwd\crappydb\crappydb.txt" $line 
        }
    }
}
Remove-data -id w234567