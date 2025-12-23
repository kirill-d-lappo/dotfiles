

# Emulate some unix tools on Windows
function env($path) {
    Get-Content -Path "$path" | ForEach-Object {
        $line = $_.Trim().Split("#")[0]
        if ( [string]::IsNullOrWhiteSpace($line)) {
            return
        }

        $name, $value = $line.split('=')
        if ( [string]::IsNullOrWhiteSpace($name)) {
            return
        }

        if ($name) {
            $name = $name.Trim()
        }

        if ($value) {
            $value = $value.Trim()
        }

        set-content env:/$name  "$value"
    }
}

function source(
    [string]
    $Path,
    [Alias("verify")]
    [switch]
    $ShouldVerifyPath = $false
) {
    if (-Not($ShouldVerifyPath) -or (Test-Path $Path)) {
        . $Path
    }
}

# Once helped me to increase start up powershell, but not really big impact of it
function Regen-PSAssemblies() {
    $ngen = "C:/Windows/Microsoft.NET/Framework64/v4.0.30319/ngen.exe"
    $originalPath = $env:PATH
    $env:PATH = [Runtime.InteropServices.RuntimeEnvironment]::GetRuntimeDirectory()
    try {
        [AppDomain]::CurrentDomain.GetAssemblies() | ForEach-Object {
            $path = $_.Location
            if ($path) {
                $name = Split-Path $path -Leaf
                Write-Host -ForegroundColor Yellow "`r`nRunning ngen.exe on '$name'"
                & "$ngen" install $path /nologo
            }
        }
    }
    finally {
        $env:PATH = $originalPath
    }
}

