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

        set-content env:\$name  "$value"
    }
}

function Show-Jwt($jwt) {
    $jwt | jq -R 'split(".") | .[0],.[1] | @base64d | fromjson'
}

function ls {
    eza --color=auto --icons $args
}

function cat {
    bat --color=auto $args
}
