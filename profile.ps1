# Author: Dipaditya Das
# https://github.com/DipadityaDas
# https://www.linkedin.com/in/dipadityadas/

# Aliases
Set-Alias tt tree
Set-Alias ll ls
Set-Alias gg gcc

# Prompt
oh-my-posh init pwsh --config "C:\Program Files\PowerShell\theme\dax.omp.json" | Invoke-Expression

# Changing Colors of Input provided to Powershell prompt
Set-PSReadLineOption -Colors @{
  Command            = 'Cyan'    # Executable file
  Default            = 'Yellow'  # Anything other than command
  Number             = 'blue'    # 108 is a number
  Member             = 'Yellow'
  Operator           = 'Green'   # 6*6 -> * is the operator
  Type               = 'Green'   # [int]"108" -> int is the type
  Parameter          = 'Green'   # -s --something
  Variable           = 'Blue'    # @something
  String             = 'Magenta' # "108" 
  ContinuationPrompt = 'Cyan'    # Multiline Command starting with '> '
}

# (Get-PSReadLineOption).ContinuationPrompt -> '> ' (Default)
# Changing the ContinutionPrompt Character
Set-PSReadLineOption -ContinuationPrompt '> '

# Create Predictions using History
set-PSReadLineOption -PredictionSource History
set-PSReadLineOption -PredictionViewStyle ListView

# Add Z as an smart alternative of cd
Import-Module -Name z 

# Useful shortcuts for traversing directories
function cd... { Set-Location ..\.. }
function cd.... { Set-Location ..\..\.. }

# Compute file hashes - useful for checking successful downloads 
function md5 { Get-FileHash -Algorithm MD5 $args }
function sha1 { Get-FileHash -Algorithm SHA1 $args }
function sha256 { Get-FileHash -Algorithm SHA256 $args }

# Quick shortcut to start notepad
function n { notepad $args }
