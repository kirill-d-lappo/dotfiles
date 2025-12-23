##Requires -Version 7.0

param (
  # Target Path for cmd files
  [Parameter()]
  [string]
  $TargetFolderPath = "$env:USERPROFILE/.local/bin"
)

# Up to you, I prefer to see all messages and break on first error message by default
$ErrorActionPreference = 'Stop'
$InformationPreference = 'Continue'

function Main {
  New-Item -ItemType Directory -Path "$TargetFolderPath" -Force | Out-Null

  $utilsCommand = @(
    @{ Command = "ls"; Exe = "eza.exe"; DefaultArgs = "--oneline --long --icons=auto --color=auto --group-directories-first" },
    @{ Command = "cat"; Exe = "bat.exe"; DefaultArgs = "" },

    @{ Command = "shutdown-now"; Exe = "shutdown.exe"; DefaultArgs = "/t 0 /s" },
    @{ Command = "reboot"; Exe = "shutdown.exe"; DefaultArgs = "/t 0 /r" },

    @{ Command = "["; FileName = "``[.cmd" }
    @{ Command = "b2sum" }
    @{ Command = "b3sum" }
    @{ Command = "base32" }
    @{ Command = "base64" }
    @{ Command = "basename" }
    @{ Command = "basenc" }
    @{ Command = "cksum" }
    @{ Command = "comm" }
    @{ Command = "cp" }
    @{ Command = "csplit" }
    @{ Command = "cut" }
    @{ Command = "date" }
    @{ Command = "dd" }
    @{ Command = "df" }
    @{ Command = "dir" }
    @{ Command = "dircolors" }
    @{ Command = "dirname" }
    @{ Command = "du" }
    @{ Command = "echo" }
    @{ Command = "env" }
    @{ Command = "expand" }
    @{ Command = "expr" }
    @{ Command = "factor" }
    @{ Command = "false" }
    @{ Command = "fmt" }
    @{ Command = "fold" }
    @{ Command = "hashsum" }
    @{ Command = "head" }
    @{ Command = "join" }
    @{ Command = "link" }
    @{ Command = "ln" }
    @{ Command = "md5sum" }
    @{ Command = "mkdir" }
    @{ Command = "mktemp" }
    @{ Command = "more" }
    @{ Command = "mv" }
    @{ Command = "nl" }
    @{ Command = "numfmt" }
    @{ Command = "od" }
    @{ Command = "paste" }
    @{ Command = "pr" }
    @{ Command = "printenv" }
    @{ Command = "printf" }
    @{ Command = "ptx" }
    @{ Command = "pwd" }
    @{ Command = "readlink" }
    @{ Command = "realpath" }
    @{ Command = "rm" }
    @{ Command = "rmdir" }
    @{ Command = "seq" }
    @{ Command = "sha1sum" }
    @{ Command = "sha224sum" }
    @{ Command = "sha256sum" }
    @{ Command = "sha3-224sum" }
    @{ Command = "sha3-256sum" }
    @{ Command = "sha3-384sum" }
    @{ Command = "sha3-512sum" }
    @{ Command = "sha384sum" }
    @{ Command = "sha3sum" }
    @{ Command = "sha512sum" }
    @{ Command = "shake128sum" }
    @{ Command = "shake256sum" }
    @{ Command = "shred" }
    @{ Command = "shuf" }
    @{ Command = "sleep" }
    @{ Command = "sort" }
    @{ Command = "split" }
    @{ Command = "sum" }
    @{ Command = "tac" }
    @{ Command = "tail" }
    @{ Command = "tee" }
    @{ Command = "test" }
    @{ Command = "touch" }
    @{ Command = "tr" }
    @{ Command = "true" }
    @{ Command = "truncate" }
    @{ Command = "tsort" }
    @{ Command = "unexpand" }
    @{ Command = "uniq" }
    @{ Command = "unlink" }
    @{ Command = "vdir" }
    @{ Command = "wc" }
    @{ Command = "yes" }
  )

  foreach ($uc in $utilsCommand) {

    $command = $uc.Command
    # "%~dp0" is for same folder as cmd exist in
    $exePath = $uc.Exe ?? "%~dp0coreutils.exe"
    $exeArgs = $uc.DefaultArgs ?? "`"$command`""

    $content = @"
@echo off

"$exePath" $exeArgs %*
"@

    $fileName = $uc.FileName ?? "$command.cmd"
    $path = Join-Path "$TargetFolderPath" $fileName

    $content | Out-File -FilePath "$path" -Encoding utf8NoBOM
  }

  Write-Information "Generated."
}

Main
