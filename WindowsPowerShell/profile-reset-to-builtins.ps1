if (Test-Path Function:\TabExpansionBuiltin)
{
    Copy-Item Function:\TabExpansionBuiltin Function:\TabExpansion
}
elseif (Test-Path Function:\TabExpansion)
{
    Copy-Item Function:\TabExpansion Function:\TabExpansionBuiltin
}
else
{
    New-Item Function:\TabExpansionBuiltin -Value {}
}
