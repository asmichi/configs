Import-Module posh-git

if (Test-Path Function:\TabExpansion)
{
    Copy-Item Function:\TabExpansion Function:\TabExpansionOriginal
}

function global:TabExpansion($line, $lastWord)
{
    if (Test-Path Function:\TabExpansionOriginal)
    {
        $line = $line -replace '^gco ', 'git checkout '
        $line = $line -replace '^gre ', 'git rebase '
        $line = $line -replace '^gbr ', 'git branch '
        TabExpansionOriginal $line $lastWord
    }
}

