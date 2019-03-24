function Prompt
{
    # 終了コードがエラーならしょんぼりする
    if (!$?)
    {
        Write-Host "( T-T)" -NoNewLine -ForegroundColor "DarkRed"
    }
    if ($null -ne $LastExitCode -and $LastExitCode -ne 0)
    {
        Write-Host "( T-T)" -NoNewLine -ForegroundColor "Red"
    }
    "[$($(Get-Date).Tostring("MM-dd HH:mm:ss"))] $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1))"
}

function ga() { git add $args }
function gamne() { git commit --amend --no-edit $args }
function gbr() { git branch $args }
function gco() { git checkout $args }
function gf() { git fetch --prune $args }
function gre() { git rebase $args }
function grecont() { git rebase --continue $args }
function gs() { git status -uno $args }
function gupsub() { git submodule update --init $args }
