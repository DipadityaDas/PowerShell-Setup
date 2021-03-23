Import-Module oh-my-posh
Import-Module posh-git

Set-PoshPrompt -Theme Dipadityadas

Set-PSReadLineOption -Colors @{
  Command            = 'Cyan'
  Number             = 'Yellow'
  Member             = 'Yellow'
  Operator           = 'Green'
  Type               = 'Green'
  Variable           = 'Green'
  Parameter          = 'Green'
  ContinuationPrompt = 'Cyan'
  Default            = 'Yellow'
}

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward