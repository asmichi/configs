function Prompt
{
    # 終了コードがエラーならしょんぼりする
    if (!$?)
    {
        Write-Host "( T-T)" -NoNewLine -ForegroundColor "DarkRed"
    }
    if (!($LastExitCode -eq 0))
    {
        Write-Host "( T-T)" -NoNewLine -ForegroundColor "Red"
    }
    "[$($(Get-Date).Tostring("MM-dd HH:mm:ss"))] $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1))"
}

function ga() { git add $args }
function gs() { git status -uno $args }
function gf() { git fetch --prune $args }
function gco() { git checkout $args }
function gupsub() { git submodule update --init $args }
function gre() { git rebase $args }
function grecont() { git rebase --continue $args }
function gbr() { git branch $args }
