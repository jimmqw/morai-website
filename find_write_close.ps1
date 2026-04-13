$c = Get-Content 'C:\Users\Administrator\github\morai-website\ai-writing-tools.html' -Raw
$idx = $c.IndexOf('<div class="tool-card">', $c.IndexOf('Writesonic'))
$end = $c.IndexOf('</div>', $idx + 10)
Write-Host "Writesonic tool-card area close at: $end"
Write-Host "Context around close:"
Write-Host $c.Substring($end - 100, 200)
