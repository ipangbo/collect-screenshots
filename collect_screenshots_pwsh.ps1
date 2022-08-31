# $extname = Read-Host "图片扩展名"
$extname="png"

# $namelist = Read-Host "名单"
$namelist="名单_CRLF.txt"

foreach($line in Get-Content $namelist){
    Write-Output $line
    
    $filename = Read-Host "文件地址"
    Write-Output "原文件删除，保存至终端当前文件夹中target\$line.$extname"
    Move-Item "$filename" ".\target\$line.$extname"
}

Write-Output "程序已退出"
