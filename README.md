# Powershell Setup 

Pre-requistes:
- Download [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701)
- Download [Powershell Core 7](https://aka.ms/powershell-release?tag=stable)
- Download [CaskaydiaCove Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/CascadiaCode.zip)
- Download [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh/releases)

## Step 1: Install PowerShell 7

Install PowerShell 7 as Administrator for System-wide Use(All Users).

## Step 2: Install CaskaydiaCove Code Nerd Font

1. Unzip the zip file.
2. Install the fonts for all users.
3. To verify open settings app > Goto Fonts Setting > Search for "CaskaydiaCove".

## Step 3: Install & Setup Windows Terminal

1. Install Windows Terminal.
1. Open the Windows Terminal app and then go to settings.
2. Click on `Open JSON File`.
3. Download the [settings.json](https://raw.githubusercontent.com/DipadityaDas/WindowsSettings/main/settings.json).

## Step 4: Install oh-my-posh.

1. Install oh-my-posh with administrative privileges for all users 

## Step 5: Install z module.

```code
Install-Module -Name z -AllowClobber -Scope AllUsers
```
> NOTE: I am downloading for all users in the systems, which needs Administrator Privileges.

If you want to download for current user then omit `-Scope AllUsers` from the above command. 

## Step 6: Install Terminal Icons module.

```code
Install-Module -Name Terminal-Icons -Repository PSGallery -Scope AllUsers
```
> NOTE: I am downloading for all users in the systems, which needs Administrator Privileges.

If you want to download for current user then omit `-Scope AllUsers` from the above command. 

## Step 7: Create a profile.ps1 inside root directory of powershell.

1. Goto `C:\Program Files\PowerShell\7`
2. Create a `profile.ps1` file.

## Step 8: Add the contents of profile.ps1

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

---
## Important Links:

1. [Nerd Fonts Icons](https://www.nerdfonts.com/cheat-sheet)
2. [Pretty Powershell](https://www.youtube.com/watch?v=LuAipOW8BNQ)
