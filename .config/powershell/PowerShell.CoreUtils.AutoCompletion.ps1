# Generated at: 2024-10-19 15:41:45
using namespace System.Management.Automation
using namespace System.Management.Automation.Language





Register-ArgumentCompleter -Native -CommandName '[' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        '['
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        '[' {
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'b2sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'b2sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'b2sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'b3sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'b3sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'b3sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--no-names', 'no-names', [CompletionResultType]::ParameterName, 'Omits filenames in the output (option not present in GNU/Coreutils)')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'base32' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'base32'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'base32' {
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'wrap encoded lines after COLS character (default 76, 0 to disable wrapping)')
            [CompletionResult]::new('--wrap', 'wrap', [CompletionResultType]::ParameterName, 'wrap encoded lines after COLS character (default 76, 0 to disable wrapping)')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'decode data')
            [CompletionResult]::new('--decode', 'decode', [CompletionResultType]::ParameterName, 'decode data')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'when decoding, ignore non-alphabetic characters')
            [CompletionResult]::new('--ignore-garbage', 'ignore-garbage', [CompletionResultType]::ParameterName, 'when decoding, ignore non-alphabetic characters')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'base64' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'base64'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'base64' {
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'wrap encoded lines after COLS character (default 76, 0 to disable wrapping)')
            [CompletionResult]::new('--wrap', 'wrap', [CompletionResultType]::ParameterName, 'wrap encoded lines after COLS character (default 76, 0 to disable wrapping)')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'decode data')
            [CompletionResult]::new('--decode', 'decode', [CompletionResultType]::ParameterName, 'decode data')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'when decoding, ignore non-alphabetic characters')
            [CompletionResult]::new('--ignore-garbage', 'ignore-garbage', [CompletionResultType]::ParameterName, 'when decoding, ignore non-alphabetic characters')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'basename' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'basename'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'basename' {
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'remove a trailing SUFFIX; implies -a')
            [CompletionResult]::new('--suffix', 'suffix', [CompletionResultType]::ParameterName, 'remove a trailing SUFFIX; implies -a')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'support multiple arguments and treat each as a NAME')
            [CompletionResult]::new('--multiple', 'multiple', [CompletionResultType]::ParameterName, 'support multiple arguments and treat each as a NAME')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'basenc' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'basenc'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'basenc' {
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'wrap encoded lines after COLS character (default 76, 0 to disable wrapping)')
            [CompletionResult]::new('--wrap', 'wrap', [CompletionResultType]::ParameterName, 'wrap encoded lines after COLS character (default 76, 0 to disable wrapping)')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'decode data')
            [CompletionResult]::new('--decode', 'decode', [CompletionResultType]::ParameterName, 'decode data')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'when decoding, ignore non-alphabetic characters')
            [CompletionResult]::new('--ignore-garbage', 'ignore-garbage', [CompletionResultType]::ParameterName, 'when decoding, ignore non-alphabetic characters')
            [CompletionResult]::new('--base64', 'base64', [CompletionResultType]::ParameterName, 'same as ''base64'' program')
            [CompletionResult]::new('--base64url', 'base64url', [CompletionResultType]::ParameterName, 'file- and url-safe base64')
            [CompletionResult]::new('--base32', 'base32', [CompletionResultType]::ParameterName, 'same as ''base32'' program')
            [CompletionResult]::new('--base32hex', 'base32hex', [CompletionResultType]::ParameterName, 'extended hex alphabet base32')
            [CompletionResult]::new('--base16', 'base16', [CompletionResultType]::ParameterName, 'hex encoding')
            [CompletionResult]::new('--base2lsbf', 'base2lsbf', [CompletionResultType]::ParameterName, 'bit string with least significant bit (lsb) first')
            [CompletionResult]::new('--base2msbf', 'base2msbf', [CompletionResultType]::ParameterName, 'bit string with most significant bit (msb) first')
            [CompletionResult]::new('--z85', 'z85', [CompletionResultType]::ParameterName, 'ascii85-like encoding;
when encoding, input length must be a multiple of 4;
when decoding, input length must be a multiple of 5')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'cat' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'cat'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'cat' {
            [CompletionResult]::new('-A', 'A ', [CompletionResultType]::ParameterName, 'equivalent to -vET')
            [CompletionResult]::new('--show-all', 'show-all', [CompletionResultType]::ParameterName, 'equivalent to -vET')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'number nonempty output lines, overrides -n')
            [CompletionResult]::new('--number-nonblank', 'number-nonblank', [CompletionResultType]::ParameterName, 'number nonempty output lines, overrides -n')
            [CompletionResult]::new('-e', 'e', [CompletionResultType]::ParameterName, 'equivalent to -vE')
            [CompletionResult]::new('-E', 'E ', [CompletionResultType]::ParameterName, 'display $ at end of each line')
            [CompletionResult]::new('--show-ends', 'show-ends', [CompletionResultType]::ParameterName, 'display $ at end of each line')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'number all output lines')
            [CompletionResult]::new('--number', 'number', [CompletionResultType]::ParameterName, 'number all output lines')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'suppress repeated empty output lines')
            [CompletionResult]::new('--squeeze-blank', 'squeeze-blank', [CompletionResultType]::ParameterName, 'suppress repeated empty output lines')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'equivalent to -vT')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'display TAB characters at ^I')
            [CompletionResult]::new('--show-tabs', 'show-tabs', [CompletionResultType]::ParameterName, 'display TAB characters at ^I')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'use ^ and M- notation, except for LF (\n) and TAB (\t)')
            [CompletionResult]::new('--show-nonprinting', 'show-nonprinting', [CompletionResultType]::ParameterName, 'use ^ and M- notation, except for LF (\n) and TAB (\t)')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, '(ignored)')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'cksum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'cksum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'cksum' {
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'select the digest type to use. See DIGEST below')
            [CompletionResult]::new('--algorithm', 'algorithm', [CompletionResultType]::ParameterName, 'select the digest type to use. See DIGEST below')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'digest length in bits; must not exceed the max for the blake2 algorithm and must be a multiple of 8')
            [CompletionResult]::new('--length', 'length', [CompletionResultType]::ParameterName, 'digest length in bits; must not exceed the max for the blake2 algorithm and must be a multiple of 8')
            [CompletionResult]::new('--untagged', 'untagged', [CompletionResultType]::ParameterName, 'create a reversed style checksum, without digest type')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD style checksum, undo --untagged (default)')
            [CompletionResult]::new('--raw', 'raw', [CompletionResultType]::ParameterName, 'emit a raw binary digest, not hexadecimal')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--base64', 'base64', [CompletionResultType]::ParameterName, 'emit a base64 digest, not hexadecimal')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 't')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'text')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'b')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'binary')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'comm' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'comm'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'comm' {
            [CompletionResult]::new('--output-delimiter', 'output-delimiter', [CompletionResultType]::ParameterName, 'separate columns with STR')
            [CompletionResult]::new('-1', '1', [CompletionResultType]::ParameterName, 'suppress column 1 (lines unique to FILE1)')
            [CompletionResult]::new('-2', '2', [CompletionResultType]::ParameterName, 'suppress column 2 (lines unique to FILE2)')
            [CompletionResult]::new('-3', '3', [CompletionResultType]::ParameterName, 'suppress column 3 (lines that appear in both files)')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('--zero-terminated', 'zero-terminated', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('--total', 'total', [CompletionResultType]::ParameterName, 'output a summary')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'cp' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'cp'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'cp' {
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'copy all SOURCE arguments into target-directory')
            [CompletionResult]::new('--target-directory', 'target-directory', [CompletionResultType]::ParameterName, 'copy all SOURCE arguments into target-directory')
            [CompletionResult]::new('--backup', 'backup', [CompletionResultType]::ParameterName, 'make a backup of each existing destination file')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'override the usual backup suffix')
            [CompletionResult]::new('--suffix', 'suffix', [CompletionResultType]::ParameterName, 'override the usual backup suffix')
            [CompletionResult]::new('--update', 'update', [CompletionResultType]::ParameterName, 'move only when the SOURCE file is newer than the destination file or when the destination file is missing')
            [CompletionResult]::new('--reflink', 'reflink', [CompletionResultType]::ParameterName, 'control clone/CoW copies. See below')
            [CompletionResult]::new('--preserve', 'preserve', [CompletionResultType]::ParameterName, 'Preserve the specified attributes (default: mode, ownership (unix only), timestamps), if possible additional attributes: context, links, xattr, all')
            [CompletionResult]::new('--no-preserve', 'no-preserve', [CompletionResultType]::ParameterName, 'don''t preserve the specified attributes')
            [CompletionResult]::new('--sparse', 'sparse', [CompletionResultType]::ParameterName, 'control creation of sparse files. See below')
            [CompletionResult]::new('--context', 'context', [CompletionResultType]::ParameterName, 'NotImplemented: set SELinux security context of destination file to default type')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'Treat DEST as a regular file and not a directory')
            [CompletionResult]::new('--no-target-directory', 'no-target-directory', [CompletionResultType]::ParameterName, 'Treat DEST as a regular file and not a directory')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'ask before overwriting files')
            [CompletionResult]::new('--interactive', 'interactive', [CompletionResultType]::ParameterName, 'ask before overwriting files')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'hard-link files instead of copying')
            [CompletionResult]::new('--link', 'link', [CompletionResultType]::ParameterName, 'hard-link files instead of copying')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'don''t overwrite a file that already exists')
            [CompletionResult]::new('--no-clobber', 'no-clobber', [CompletionResultType]::ParameterName, 'don''t overwrite a file that already exists')
            [CompletionResult]::new('-R', 'R ', [CompletionResultType]::ParameterName, 'copy directories recursively')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'copy directories recursively')
            [CompletionResult]::new('--recursive', 'recursive', [CompletionResultType]::ParameterName, 'copy directories recursively')
            [CompletionResult]::new('--strip-trailing-slashes', 'strip-trailing-slashes', [CompletionResultType]::ParameterName, 'remove any trailing slashes from each SOURCE argument')
            [CompletionResult]::new('--debug', 'debug', [CompletionResultType]::ParameterName, 'explain how a file is copied. Implies -v')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'explicitly state what is being done')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'explicitly state what is being done')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'make symbolic links instead of copying')
            [CompletionResult]::new('--symbolic-link', 'symbolic-link', [CompletionResultType]::ParameterName, 'make symbolic links instead of copying')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'if an existing destination file cannot be opened, remove it and try again (this option is ignored when the -n option is also used). Currently not implemented for Windows.')
            [CompletionResult]::new('--force', 'force', [CompletionResultType]::ParameterName, 'if an existing destination file cannot be opened, remove it and try again (this option is ignored when the -n option is also used). Currently not implemented for Windows.')
            [CompletionResult]::new('--remove-destination', 'remove-destination', [CompletionResultType]::ParameterName, 'remove each existing destination file before attempting to open it (contrast with --force). On Windows, currently only works for writeable files.')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'like --backup but does not accept an argument')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'like --update but does not accept an argument')
            [CompletionResult]::new('--attributes-only', 'attributes-only', [CompletionResultType]::ParameterName, 'Don''t copy the file data, just the attributes')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'same as --preserve=mode,ownership(unix only),timestamps')
            [CompletionResult]::new('--preserve-default-attributes', 'preserve-default-attributes', [CompletionResultType]::ParameterName, 'same as --preserve=mode,ownership(unix only),timestamps')
            [CompletionResult]::new('--parents', 'parents', [CompletionResultType]::ParameterName, 'use full source file name under DIRECTORY')
            [CompletionResult]::new('-P', 'P ', [CompletionResultType]::ParameterName, 'never follow symbolic links in SOURCE')
            [CompletionResult]::new('--no-dereference', 'no-dereference', [CompletionResultType]::ParameterName, 'never follow symbolic links in SOURCE')
            [CompletionResult]::new('-L', 'L ', [CompletionResultType]::ParameterName, 'always follow symbolic links in SOURCE')
            [CompletionResult]::new('--dereference', 'dereference', [CompletionResultType]::ParameterName, 'always follow symbolic links in SOURCE')
            [CompletionResult]::new('-H', 'H ', [CompletionResultType]::ParameterName, 'follow command-line symbolic links in SOURCE')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'Same as -dR --preserve=all')
            [CompletionResult]::new('--archive', 'archive', [CompletionResultType]::ParameterName, 'Same as -dR --preserve=all')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'same as --no-dereference --preserve=links')
            [CompletionResult]::new('-x', 'x', [CompletionResultType]::ParameterName, 'stay on this file system')
            [CompletionResult]::new('--one-file-system', 'one-file-system', [CompletionResultType]::ParameterName, 'stay on this file system')
            [CompletionResult]::new('--copy-contents', 'copy-contents', [CompletionResultType]::ParameterName, 'NotImplemented: copy contents of special files when recursive')
            [CompletionResult]::new('-g', 'g', [CompletionResultType]::ParameterName, 'Display a progress bar. 
Note: this feature is not supported by GNU coreutils.')
            [CompletionResult]::new('--progress', 'progress', [CompletionResultType]::ParameterName, 'Display a progress bar. 
Note: this feature is not supported by GNU coreutils.')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'csplit' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'csplit'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'csplit' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'use sprintf FORMAT instead of %02d')
            [CompletionResult]::new('--suffix-format', 'suffix-format', [CompletionResultType]::ParameterName, 'use sprintf FORMAT instead of %02d')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'use PREFIX instead of ''xx''')
            [CompletionResult]::new('--prefix', 'prefix', [CompletionResultType]::ParameterName, 'use PREFIX instead of ''xx''')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'use specified number of digits instead of 2')
            [CompletionResult]::new('--digits', 'digits', [CompletionResultType]::ParameterName, 'use specified number of digits instead of 2')
            [CompletionResult]::new('-k', 'k', [CompletionResultType]::ParameterName, 'do not remove output files on errors')
            [CompletionResult]::new('--keep-files', 'keep-files', [CompletionResultType]::ParameterName, 'do not remove output files on errors')
            [CompletionResult]::new('--suppress-matched', 'suppress-matched', [CompletionResultType]::ParameterName, 'suppress the lines matching PATTERN')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'do not print counts of output file sizes')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'do not print counts of output file sizes')
            [CompletionResult]::new('--silent', 'silent', [CompletionResultType]::ParameterName, 'do not print counts of output file sizes')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'remove empty output files')
            [CompletionResult]::new('--elide-empty-files', 'elide-empty-files', [CompletionResultType]::ParameterName, 'remove empty output files')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'cut' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'cut'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'cut' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'filter byte columns from the input source')
            [CompletionResult]::new('--bytes', 'bytes', [CompletionResultType]::ParameterName, 'filter byte columns from the input source')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'alias for character mode')
            [CompletionResult]::new('--characters', 'characters', [CompletionResultType]::ParameterName, 'alias for character mode')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'specify the delimiter character that separates fields in the input source. Defaults to Tab.')
            [CompletionResult]::new('--delimiter', 'delimiter', [CompletionResultType]::ParameterName, 'specify the delimiter character that separates fields in the input source. Defaults to Tab.')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'filter field columns from the input source')
            [CompletionResult]::new('--fields', 'fields', [CompletionResultType]::ParameterName, 'filter field columns from the input source')
            [CompletionResult]::new('--output-delimiter', 'output-delimiter', [CompletionResultType]::ParameterName, 'in field mode, replace the delimiter in output lines with this option''s argument')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'Use any number of whitespace (Space, Tab) to separate fields in the input source (FreeBSD extension).')
            [CompletionResult]::new('--complement', 'complement', [CompletionResultType]::ParameterName, 'invert the filter - instead of displaying only the filtered columns, display all but those columns')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'in field mode, only print lines which contain the delimiter')
            [CompletionResult]::new('--only-delimited', 'only-delimited', [CompletionResultType]::ParameterName, 'in field mode, only print lines which contain the delimiter')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'instead of filtering columns based on line, filter columns based on \0 (NULL character)')
            [CompletionResult]::new('--zero-terminated', 'zero-terminated', [CompletionResultType]::ParameterName, 'instead of filtering columns based on line, filter columns based on \0 (NULL character)')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'date' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'date'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'date' {
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'display time described by STRING, not ''now''')
            [CompletionResult]::new('--date', 'date', [CompletionResultType]::ParameterName, 'display time described by STRING, not ''now''')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'like --date; once for each line of DATEFILE')
            [CompletionResult]::new('--file', 'file', [CompletionResultType]::ParameterName, 'like --date; once for each line of DATEFILE')
            [CompletionResult]::new('-I', 'I ', [CompletionResultType]::ParameterName, 'output date/time in ISO 8601 format.
 FMT=''date'' for date only (the default),
 ''hours'', ''minutes'', ''seconds'', or ''ns''
 for date and time to the indicated precision.
 Example: 2006-08-14T02:34:56-06:00')
            [CompletionResult]::new('--iso-8601', 'iso-8601', [CompletionResultType]::ParameterName, 'output date/time in ISO 8601 format.
 FMT=''date'' for date only (the default),
 ''hours'', ''minutes'', ''seconds'', or ''ns''
 for date and time to the indicated precision.
 Example: 2006-08-14T02:34:56-06:00')
            [CompletionResult]::new('--rfc-3339', 'rfc-3339', [CompletionResultType]::ParameterName, 'output date/time in RFC 3339 format.
 FMT=''date'', ''seconds'', or ''ns''
 for date and time to the indicated precision.
 Example: 2006-08-14 02:34:56-06:00')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'display the last modification time of FILE')
            [CompletionResult]::new('--reference', 'reference', [CompletionResultType]::ParameterName, 'display the last modification time of FILE')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'set time described by STRING')
            [CompletionResult]::new('--set', 'set', [CompletionResultType]::ParameterName, 'set time described by STRING')
            [CompletionResult]::new('-R', 'R ', [CompletionResultType]::ParameterName, 'output date and time in RFC 5322 format.
 Example: Mon, 14 Aug 2006 02:34:56 -0600')
            [CompletionResult]::new('--rfc-email', 'rfc-email', [CompletionResultType]::ParameterName, 'output date and time in RFC 5322 format.
 Example: Mon, 14 Aug 2006 02:34:56 -0600')
            [CompletionResult]::new('--debug', 'debug', [CompletionResultType]::ParameterName, 'annotate the parsed date, and warn about questionable usage to stderr')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'print or set Coordinated Universal Time (UTC)')
            [CompletionResult]::new('--universal', 'universal', [CompletionResultType]::ParameterName, 'print or set Coordinated Universal Time (UTC)')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'dd' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'dd'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'dd' {
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'df' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'df'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'df' {
            [CompletionResult]::new('-B', 'B ', [CompletionResultType]::ParameterName, 'scale sizes by SIZE before printing them; e.g.''-BM'' prints sizes in units of 1,048,576 bytes')
            [CompletionResult]::new('--block-size', 'block-size', [CompletionResultType]::ParameterName, 'scale sizes by SIZE before printing them; e.g.''-BM'' prints sizes in units of 1,048,576 bytes')
            [CompletionResult]::new('--output', 'output', [CompletionResultType]::ParameterName, 'use the output format defined by FIELD_LIST, or print all fields if FIELD_LIST is omitted.')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'limit listing to file systems of type TYPE')
            [CompletionResult]::new('--type', 'type', [CompletionResultType]::ParameterName, 'limit listing to file systems of type TYPE')
            [CompletionResult]::new('-x', 'x', [CompletionResultType]::ParameterName, 'limit listing to file systems not of type TYPE')
            [CompletionResult]::new('--exclude-type', 'exclude-type', [CompletionResultType]::ParameterName, 'limit listing to file systems not of type TYPE')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information.')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'include dummy file systems')
            [CompletionResult]::new('--all', 'all', [CompletionResultType]::ParameterName, 'include dummy file systems')
            [CompletionResult]::new('--total', 'total', [CompletionResultType]::ParameterName, 'produce a grand total')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'print sizes in human readable format (e.g., 1K 234M 2G)')
            [CompletionResult]::new('--human-readable', 'human-readable', [CompletionResultType]::ParameterName, 'print sizes in human readable format (e.g., 1K 234M 2G)')
            [CompletionResult]::new('-H', 'H ', [CompletionResultType]::ParameterName, 'likewise, but use powers of 1000 not 1024')
            [CompletionResult]::new('--si', 'si', [CompletionResultType]::ParameterName, 'likewise, but use powers of 1000 not 1024')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'list inode information instead of block usage')
            [CompletionResult]::new('--inodes', 'inodes', [CompletionResultType]::ParameterName, 'list inode information instead of block usage')
            [CompletionResult]::new('-k', 'k', [CompletionResultType]::ParameterName, 'like --block-size=1K')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'limit listing to local file systems')
            [CompletionResult]::new('--local', 'local', [CompletionResultType]::ParameterName, 'limit listing to local file systems')
            [CompletionResult]::new('--no-sync', 'no-sync', [CompletionResultType]::ParameterName, 'do not invoke sync before getting usage info (default)')
            [CompletionResult]::new('-P', 'P ', [CompletionResultType]::ParameterName, 'use the POSIX output format')
            [CompletionResult]::new('--portability', 'portability', [CompletionResultType]::ParameterName, 'use the POSIX output format')
            [CompletionResult]::new('--sync', 'sync', [CompletionResultType]::ParameterName, 'invoke sync before getting usage info (non-windows only)')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'print file system type')
            [CompletionResult]::new('--print-type', 'print-type', [CompletionResultType]::ParameterName, 'print file system type')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'dir' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'dir'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'dir' {
            [CompletionResult]::new('--format', 'format', [CompletionResultType]::ParameterName, 'Set the display format.')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'Assume tab stops at each COLS instead of 8 (unimplemented)')
            [CompletionResult]::new('--tabsize', 'tabsize', [CompletionResultType]::ParameterName, 'Assume tab stops at each COLS instead of 8 (unimplemented)')
            [CompletionResult]::new('--hyperlink', 'hyperlink', [CompletionResultType]::ParameterName, 'hyperlink file names WHEN')
            [CompletionResult]::new('--quoting-style', 'quoting-style', [CompletionResultType]::ParameterName, 'Set quoting style.')
            [CompletionResult]::new('--time', 'time', [CompletionResultType]::ParameterName, 'Show time in <field>:
	access time (-u): atime, access, use;
	change time (-t): ctime, status.
	birth time: birth, creation;')
            [CompletionResult]::new('--hide', 'hide', [CompletionResultType]::ParameterName, 'do not list implied entries matching shell PATTERN (overridden by -a or -A)')
            [CompletionResult]::new('-I', 'I ', [CompletionResultType]::ParameterName, 'do not list implied entries matching shell PATTERN')
            [CompletionResult]::new('--ignore', 'ignore', [CompletionResultType]::ParameterName, 'do not list implied entries matching shell PATTERN')
            [CompletionResult]::new('--sort', 'sort', [CompletionResultType]::ParameterName, 'Sort by <field>: name, none (-U), time (-t), size (-S), extension (-X) or width')
            [CompletionResult]::new('--block-size', 'block-size', [CompletionResultType]::ParameterName, 'scale sizes by BLOCK_SIZE when printing them')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'Assume that the terminal is COLS columns wide.')
            [CompletionResult]::new('--width', 'width', [CompletionResultType]::ParameterName, 'Assume that the terminal is COLS columns wide.')
            [CompletionResult]::new('--color', 'color', [CompletionResultType]::ParameterName, 'Color output based on file type.')
            [CompletionResult]::new('--indicator-style', 'indicator-style', [CompletionResultType]::ParameterName, 'Append indicator with style WORD to entry names: none (default),  slash (-p), file-type (--file-type), classify (-F)')
            [CompletionResult]::new('-F', 'F ', [CompletionResultType]::ParameterName, 'Append a character to each file name indicating the file type. Also, for regular files that are executable, append ''*''. The file type indicators are ''/'' for directories, ''@'' for symbolic links, ''|'' for FIFOs, ''='' for sockets, ''>'' for doors, and nothing for regular files. when may be omitted, or one of:
	none - Do not classify. This is the default.
	auto - Only classify if standard output is a terminal.
	always - Always classify.
Specifying --classify and no when is equivalent to --classify=always. This will not follow symbolic links listed on the command line unless the --dereference-command-line (-H), --dereference (-L), or --dereference-command-line-symlink-to-dir options are specified.')
            [CompletionResult]::new('--classify', 'classify', [CompletionResultType]::ParameterName, 'Append a character to each file name indicating the file type. Also, for regular files that are executable, append ''*''. The file type indicators are ''/'' for directories, ''@'' for symbolic links, ''|'' for FIFOs, ''='' for sockets, ''>'' for doors, and nothing for regular files. when may be omitted, or one of:
	none - Do not classify. This is the default.
	auto - Only classify if standard output is a terminal.
	always - Always classify.
Specifying --classify and no when is equivalent to --classify=always. This will not follow symbolic links listed on the command line unless the --dereference-command-line (-H), --dereference (-L), or --dereference-command-line-symlink-to-dir options are specified.')
            [CompletionResult]::new('--time-style', 'time-style', [CompletionResultType]::ParameterName, 'time/date format with -l; see TIME_STYLE below')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information.')
            [CompletionResult]::new('-C', 'C ', [CompletionResultType]::ParameterName, 'Display the files in columns.')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'Display detailed information.')
            [CompletionResult]::new('--long', 'long', [CompletionResultType]::ParameterName, 'Display detailed information.')
            [CompletionResult]::new('-x', 'x', [CompletionResultType]::ParameterName, 'List entries in rows instead of in columns.')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'List entries separated by commas.')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'List entries separated by ASCII NUL characters.')
            [CompletionResult]::new('-D', 'D ', [CompletionResultType]::ParameterName, 'generate output designed for Emacs'' dired (Directory Editor) mode')
            [CompletionResult]::new('--dired', 'dired', [CompletionResultType]::ParameterName, 'generate output designed for Emacs'' dired (Directory Editor) mode')
            [CompletionResult]::new('-1', '1', [CompletionResultType]::ParameterName, 'List one file per line.')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'Long format without group information. Identical to --format=long with --no-group.')
            [CompletionResult]::new('-g', 'g', [CompletionResultType]::ParameterName, 'Long format without owner information.')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, '-l with numeric UIDs and GIDs.')
            [CompletionResult]::new('--numeric-uid-gid', 'numeric-uid-gid', [CompletionResultType]::ParameterName, '-l with numeric UIDs and GIDs.')
            [CompletionResult]::new('-N', 'N ', [CompletionResultType]::ParameterName, 'Use literal quoting style. Equivalent to `--quoting-style=literal`')
            [CompletionResult]::new('--literal', 'literal', [CompletionResultType]::ParameterName, 'Use literal quoting style. Equivalent to `--quoting-style=literal`')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'Use escape quoting style. Equivalent to `--quoting-style=escape`')
            [CompletionResult]::new('--escape', 'escape', [CompletionResultType]::ParameterName, 'Use escape quoting style. Equivalent to `--quoting-style=escape`')
            [CompletionResult]::new('-Q', 'Q ', [CompletionResultType]::ParameterName, 'Use C quoting style. Equivalent to `--quoting-style=c`')
            [CompletionResult]::new('--quote-name', 'quote-name', [CompletionResultType]::ParameterName, 'Use C quoting style. Equivalent to `--quoting-style=c`')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'Replace control characters with ''?'' if they are not escaped.')
            [CompletionResult]::new('--hide-control-chars', 'hide-control-chars', [CompletionResultType]::ParameterName, 'Replace control characters with ''?'' if they are not escaped.')
            [CompletionResult]::new('--show-control-chars', 'show-control-chars', [CompletionResultType]::ParameterName, 'Show control characters ''as is'' if they are not escaped.')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'If the long listing format (e.g., -l, -o) is being used, print the status change time (the ''ctime'' in the inode) instead of the modification time. When explicitly sorting by time (--sort=time or -t) or when not using a long listing format, sort according to the status change time.')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'If the long listing format (e.g., -l, -o) is being used, print the status access time instead of the modification time. When explicitly sorting by time (--sort=time or -t) or when not using a long listing format, sort according to the access time.')
            [CompletionResult]::new('-B', 'B ', [CompletionResultType]::ParameterName, 'Ignore entries which end with ~.')
            [CompletionResult]::new('--ignore-backups', 'ignore-backups', [CompletionResultType]::ParameterName, 'Ignore entries which end with ~.')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'Sort by file size, largest first.')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'Sort by modification time (the ''mtime'' in the inode), newest first.')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'Natural sort of (version) numbers in the filenames.')
            [CompletionResult]::new('-X', 'X ', [CompletionResultType]::ParameterName, 'Sort alphabetically by entry extension.')
            [CompletionResult]::new('-U', 'U ', [CompletionResultType]::ParameterName, 'Do not sort; list the files in whatever order they are stored in the directory.  This is especially useful when listing very large directories, since not doing any sorting can be noticeably faster.')
            [CompletionResult]::new('-L', 'L ', [CompletionResultType]::ParameterName, 'When showing file information for a symbolic link, show information for the file the link references rather than the link itself.')
            [CompletionResult]::new('--dereference', 'dereference', [CompletionResultType]::ParameterName, 'When showing file information for a symbolic link, show information for the file the link references rather than the link itself.')
            [CompletionResult]::new('--dereference-command-line-symlink-to-dir', 'dereference-command-line-symlink-to-dir', [CompletionResultType]::ParameterName, 'Do not follow symlinks except when they link to directories and are given as command line arguments.')
            [CompletionResult]::new('-H', 'H ', [CompletionResultType]::ParameterName, 'Do not follow symlinks except when given as command line arguments.')
            [CompletionResult]::new('--dereference-command-line', 'dereference-command-line', [CompletionResultType]::ParameterName, 'Do not follow symlinks except when given as command line arguments.')
            [CompletionResult]::new('-G', 'G ', [CompletionResultType]::ParameterName, 'Do not show group in long format.')
            [CompletionResult]::new('--no-group', 'no-group', [CompletionResultType]::ParameterName, 'Do not show group in long format.')
            [CompletionResult]::new('--author', 'author', [CompletionResultType]::ParameterName, 'Show author in long format. On the supported platforms, the author always matches the file owner.')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'Do not ignore hidden files (files with names that start with ''.'').')
            [CompletionResult]::new('--all', 'all', [CompletionResultType]::ParameterName, 'Do not ignore hidden files (files with names that start with ''.'').')
            [CompletionResult]::new('-A', 'A ', [CompletionResultType]::ParameterName, 'In a directory, do not ignore all file names that start with ''.'', only ignore ''.'' and ''..''.')
            [CompletionResult]::new('--almost-all', 'almost-all', [CompletionResultType]::ParameterName, 'In a directory, do not ignore all file names that start with ''.'', only ignore ''.'' and ''..''.')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Only list the names of directories, rather than listing directory contents. This will not follow symbolic links unless one of `--dereference-command-line (-H)`, `--dereference (-L)`, or `--dereference-command-line-symlink-to-dir` is specified.')
            [CompletionResult]::new('--directory', 'directory', [CompletionResultType]::ParameterName, 'Only list the names of directories, rather than listing directory contents. This will not follow symbolic links unless one of `--dereference-command-line (-H)`, `--dereference (-L)`, or `--dereference-command-line-symlink-to-dir` is specified.')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print human readable file sizes (e.g. 1K 234M 56G).')
            [CompletionResult]::new('--human-readable', 'human-readable', [CompletionResultType]::ParameterName, 'Print human readable file sizes (e.g. 1K 234M 56G).')
            [CompletionResult]::new('-k', 'k', [CompletionResultType]::ParameterName, 'default to 1024-byte blocks for file system usage; used only with -s and per directory totals')
            [CompletionResult]::new('--kibibytes', 'kibibytes', [CompletionResultType]::ParameterName, 'default to 1024-byte blocks for file system usage; used only with -s and per directory totals')
            [CompletionResult]::new('--si', 'si', [CompletionResultType]::ParameterName, 'Print human readable file sizes using powers of 1000 instead of 1024.')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'print the index number of each file')
            [CompletionResult]::new('--inode', 'inode', [CompletionResultType]::ParameterName, 'print the index number of each file')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'Reverse whatever the sorting method is e.g., list files in reverse alphabetical order, youngest first, smallest first, or whatever.')
            [CompletionResult]::new('--reverse', 'reverse', [CompletionResultType]::ParameterName, 'Reverse whatever the sorting method is e.g., list files in reverse alphabetical order, youngest first, smallest first, or whatever.')
            [CompletionResult]::new('-R', 'R ', [CompletionResultType]::ParameterName, 'List the contents of all directories recursively.')
            [CompletionResult]::new('--recursive', 'recursive', [CompletionResultType]::ParameterName, 'List the contents of all directories recursively.')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'print the allocated size of each file, in blocks')
            [CompletionResult]::new('--size', 'size', [CompletionResultType]::ParameterName, 'print the allocated size of each file, in blocks')
            [CompletionResult]::new('--file-type', 'file-type', [CompletionResultType]::ParameterName, 'Same as --classify, but do not append ''*''')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'Append / indicator to directories.')
            [CompletionResult]::new('--full-time', 'full-time', [CompletionResultType]::ParameterName, 'like -l --time-style=full-iso')
            [CompletionResult]::new('-Z', 'Z ', [CompletionResultType]::ParameterName, 'print any security context of each file (not enabled)')
            [CompletionResult]::new('--context', 'context', [CompletionResultType]::ParameterName, 'print any security context of each file (not enabled)')
            [CompletionResult]::new('--group-directories-first', 'group-directories-first', [CompletionResultType]::ParameterName, 'group directories before files; can be augmented with a --sort option, but any use of --sort=none (-U) disables grouping')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'dircolors' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'dircolors'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'dircolors' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'output Bourne shell code to set LS_COLORS')
            [CompletionResult]::new('--sh', 'sh', [CompletionResultType]::ParameterName, 'output Bourne shell code to set LS_COLORS')
            [CompletionResult]::new('--bourne-shell', 'bourne-shell', [CompletionResultType]::ParameterName, 'output Bourne shell code to set LS_COLORS')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'output C shell code to set LS_COLORS')
            [CompletionResult]::new('--csh', 'csh', [CompletionResultType]::ParameterName, 'output C shell code to set LS_COLORS')
            [CompletionResult]::new('--c-shell', 'c-shell', [CompletionResultType]::ParameterName, 'output C shell code to set LS_COLORS')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'print the byte counts')
            [CompletionResult]::new('--print-database', 'print-database', [CompletionResultType]::ParameterName, 'print the byte counts')
            [CompletionResult]::new('--print-ls-colors', 'print-ls-colors', [CompletionResultType]::ParameterName, 'output fully escaped colors for display')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'dirname' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'dirname'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'dirname' {
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'separate output with NUL rather than newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'separate output with NUL rather than newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'du' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'du'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'du' {
            [CompletionResult]::new('-B', 'B ', [CompletionResultType]::ParameterName, 'scale sizes by SIZE before printing them. E.g., ''-BM'' prints sizes in units of 1,048,576 bytes. See SIZE format below.')
            [CompletionResult]::new('--block-size', 'block-size', [CompletionResultType]::ParameterName, 'scale sizes by SIZE before printing them. E.g., ''-BM'' prints sizes in units of 1,048,576 bytes. See SIZE format below.')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'print the total for a directory (or file, with --all) only if it is N or fewer levels below the command line argument;  --max-depth=0 is the same as --summarize')
            [CompletionResult]::new('--max-depth', 'max-depth', [CompletionResultType]::ParameterName, 'print the total for a directory (or file, with --all) only if it is N or fewer levels below the command line argument;  --max-depth=0 is the same as --summarize')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'exclude entries smaller than SIZE if positive, or entries greater than SIZE if negative')
            [CompletionResult]::new('--threshold', 'threshold', [CompletionResultType]::ParameterName, 'exclude entries smaller than SIZE if positive, or entries greater than SIZE if negative')
            [CompletionResult]::new('--exclude', 'exclude', [CompletionResultType]::ParameterName, 'exclude files that match PATTERN')
            [CompletionResult]::new('-X', 'X ', [CompletionResultType]::ParameterName, 'exclude files that match any pattern in FILE')
            [CompletionResult]::new('--exclude-from', 'exclude-from', [CompletionResultType]::ParameterName, 'exclude files that match any pattern in FILE')
            [CompletionResult]::new('--files0-from', 'files0-from', [CompletionResultType]::ParameterName, 'summarize device usage of the NUL-terminated file names specified in file F; if F is -, then read names from standard input')
            [CompletionResult]::new('--time', 'time', [CompletionResultType]::ParameterName, 'show time of the last modification of any file in the directory, or any of its subdirectories. If WORD is given, show time as WORD instead of modification time: atime, access, use, ctime, status, birth or creation')
            [CompletionResult]::new('--time-style', 'time-style', [CompletionResultType]::ParameterName, 'show times using style STYLE: full-iso, long-iso, iso, +FORMAT FORMAT is interpreted like ''date''')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information.')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'write counts for all files, not just directories')
            [CompletionResult]::new('--all', 'all', [CompletionResultType]::ParameterName, 'write counts for all files, not just directories')
            [CompletionResult]::new('--apparent-size', 'apparent-size', [CompletionResultType]::ParameterName, 'print apparent sizes, rather than disk usage although the apparent size is usually smaller, it may be larger due to holes in (''sparse'') files, internal fragmentation, indirect blocks, and the like')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'equivalent to ''--apparent-size --block-size=1''')
            [CompletionResult]::new('--bytes', 'bytes', [CompletionResultType]::ParameterName, 'equivalent to ''--apparent-size --block-size=1''')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'produce a grand total')
            [CompletionResult]::new('--total', 'total', [CompletionResultType]::ParameterName, 'produce a grand total')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'print sizes in human readable format (e.g., 1K 234M 2G)')
            [CompletionResult]::new('--human-readable', 'human-readable', [CompletionResultType]::ParameterName, 'print sizes in human readable format (e.g., 1K 234M 2G)')
            [CompletionResult]::new('--inodes', 'inodes', [CompletionResultType]::ParameterName, 'list inode usage information instead of block usage like --block-size=1K')
            [CompletionResult]::new('-k', 'k', [CompletionResultType]::ParameterName, 'like --block-size=1K')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'count sizes many times if hard linked')
            [CompletionResult]::new('--count-links', 'count-links', [CompletionResultType]::ParameterName, 'count sizes many times if hard linked')
            [CompletionResult]::new('-L', 'L ', [CompletionResultType]::ParameterName, 'follow all symbolic links')
            [CompletionResult]::new('--dereference', 'dereference', [CompletionResultType]::ParameterName, 'follow all symbolic links')
            [CompletionResult]::new('-D', 'D ', [CompletionResultType]::ParameterName, 'follow only symlinks that are listed on the command line')
            [CompletionResult]::new('-H', 'H ', [CompletionResultType]::ParameterName, 'follow only symlinks that are listed on the command line')
            [CompletionResult]::new('--dereference-args', 'dereference-args', [CompletionResultType]::ParameterName, 'follow only symlinks that are listed on the command line')
            [CompletionResult]::new('-P', 'P ', [CompletionResultType]::ParameterName, 'don''t follow any symbolic links (this is the default)')
            [CompletionResult]::new('--no-dereference', 'no-dereference', [CompletionResultType]::ParameterName, 'don''t follow any symbolic links (this is the default)')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'like --block-size=1M')
            [CompletionResult]::new('-0', '0', [CompletionResultType]::ParameterName, 'end each output line with 0 byte rather than newline')
            [CompletionResult]::new('--null', 'null', [CompletionResultType]::ParameterName, 'end each output line with 0 byte rather than newline')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'do not include size of subdirectories')
            [CompletionResult]::new('--separate-dirs', 'separate-dirs', [CompletionResultType]::ParameterName, 'do not include size of subdirectories')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'display only a total for each argument')
            [CompletionResult]::new('--summarize', 'summarize', [CompletionResultType]::ParameterName, 'display only a total for each argument')
            [CompletionResult]::new('--si', 'si', [CompletionResultType]::ParameterName, 'like -h, but use powers of 1000 not 1024')
            [CompletionResult]::new('-x', 'x', [CompletionResultType]::ParameterName, 'skip directories on different file systems')
            [CompletionResult]::new('--one-file-system', 'one-file-system', [CompletionResultType]::ParameterName, 'skip directories on different file systems')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'verbose mode (option not present in GNU/Coreutils)')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'verbose mode (option not present in GNU/Coreutils)')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'echo' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'echo'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'echo' {
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'do not output the trailing newline')
            [CompletionResult]::new('-e', 'e', [CompletionResultType]::ParameterName, 'enable interpretation of backslash escapes')
            [CompletionResult]::new('-E', 'E ', [CompletionResultType]::ParameterName, 'disable interpretation of backslash escapes (default)')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'env' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'env'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'env' {
            [CompletionResult]::new('-C', 'C ', [CompletionResultType]::ParameterName, 'change working directory to DIR')
            [CompletionResult]::new('--chdir', 'chdir', [CompletionResultType]::ParameterName, 'change working directory to DIR')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'read and set variables from a ".env"-style configuration file (prior to any unset and/or set)')
            [CompletionResult]::new('--file', 'file', [CompletionResultType]::ParameterName, 'read and set variables from a ".env"-style configuration file (prior to any unset and/or set)')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'remove variable from the environment')
            [CompletionResult]::new('--unset', 'unset', [CompletionResultType]::ParameterName, 'remove variable from the environment')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'process and split S into separate arguments; used to pass multiple arguments on shebang lines')
            [CompletionResult]::new('--split-string', 'split-string', [CompletionResultType]::ParameterName, 'process and split S into separate arguments; used to pass multiple arguments on shebang lines')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'Override the zeroth argument passed to the command being executed. Without this option a default value of `command` is used.')
            [CompletionResult]::new('--argv0', 'argv0', [CompletionResultType]::ParameterName, 'Override the zeroth argument passed to the command being executed. Without this option a default value of `command` is used.')
            [CompletionResult]::new('--ignore-signal', 'ignore-signal', [CompletionResultType]::ParameterName, 'set handling of SIG signal(s) to do nothing')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'start with an empty environment')
            [CompletionResult]::new('--ignore-environment', 'ignore-environment', [CompletionResultType]::ParameterName, 'start with an empty environment')
            [CompletionResult]::new('-0', '0', [CompletionResultType]::ParameterName, 'end each output line with a 0 byte rather than a newline (only valid when printing the environment)')
            [CompletionResult]::new('--null', 'null', [CompletionResultType]::ParameterName, 'end each output line with a 0 byte rather than a newline (only valid when printing the environment)')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'print verbose information for each processing step')
            [CompletionResult]::new('--debug', 'debug', [CompletionResultType]::ParameterName, 'print verbose information for each processing step')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'expand' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'expand'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'expand' {
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'have tabs N characters apart, not 8 or use comma separated list of explicit tab positions')
            [CompletionResult]::new('--tabs', 'tabs', [CompletionResultType]::ParameterName, 'have tabs N characters apart, not 8 or use comma separated list of explicit tab positions')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'do not convert tabs after non blanks')
            [CompletionResult]::new('--initial', 'initial', [CompletionResultType]::ParameterName, 'do not convert tabs after non blanks')
            [CompletionResult]::new('-U', 'U ', [CompletionResultType]::ParameterName, 'interpret input file as 8-bit ASCII rather than UTF-8')
            [CompletionResult]::new('--no-utf8', 'no-utf8', [CompletionResultType]::ParameterName, 'interpret input file as 8-bit ASCII rather than UTF-8')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'expr' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'expr'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'expr' {
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'output version information and exit')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'display this help and exit')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'factor' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'factor'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'factor' {
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print factors in the form p^e')
            [CompletionResult]::new('--exponents', 'exponents', [CompletionResultType]::ParameterName, 'Print factors in the form p^e')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information.')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'false' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'false'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'false' {
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version information')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'fmt' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'fmt'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'fmt' {
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'Reformat only lines beginning with PREFIX, reattaching PREFIX to reformatted lines. Unless -x is specified, leading whitespace will be ignored when matching PREFIX.')
            [CompletionResult]::new('--prefix', 'prefix', [CompletionResultType]::ParameterName, 'Reformat only lines beginning with PREFIX, reattaching PREFIX to reformatted lines. Unless -x is specified, leading whitespace will be ignored when matching PREFIX.')
            [CompletionResult]::new('-P', 'P ', [CompletionResultType]::ParameterName, 'Do not reformat lines beginning with PSKIP. Unless -X is specified, leading whitespace will be ignored when matching PSKIP')
            [CompletionResult]::new('--skip-prefix', 'skip-prefix', [CompletionResultType]::ParameterName, 'Do not reformat lines beginning with PSKIP. Unless -X is specified, leading whitespace will be ignored when matching PSKIP')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'Fill output lines up to a maximum of WIDTH columns, default 75. This can be specified as a negative number in the first argument.')
            [CompletionResult]::new('--width', 'width', [CompletionResultType]::ParameterName, 'Fill output lines up to a maximum of WIDTH columns, default 75. This can be specified as a negative number in the first argument.')
            [CompletionResult]::new('-g', 'g', [CompletionResultType]::ParameterName, 'Goal width, default of 93% of WIDTH. Must be less than or equal to WIDTH.')
            [CompletionResult]::new('--goal', 'goal', [CompletionResultType]::ParameterName, 'Goal width, default of 93% of WIDTH. Must be less than or equal to WIDTH.')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'Treat tabs as TABWIDTH spaces for determining line length, default 8. Note that this is used only for calculating line lengths; tabs are preserved in the output.')
            [CompletionResult]::new('--tab-width', 'tab-width', [CompletionResultType]::ParameterName, 'Treat tabs as TABWIDTH spaces for determining line length, default 8. Note that this is used only for calculating line lengths; tabs are preserved in the output.')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'First and second line of paragraph may have different indentations, in which case the first line''s indentation is preserved, and each subsequent line''s indentation matches the second line.')
            [CompletionResult]::new('--crown-margin', 'crown-margin', [CompletionResultType]::ParameterName, 'First and second line of paragraph may have different indentations, in which case the first line''s indentation is preserved, and each subsequent line''s indentation matches the second line.')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'Like -c, except that the first and second line of a paragraph *must* have different indentation or they are treated as separate paragraphs.')
            [CompletionResult]::new('--tagged-paragraph', 'tagged-paragraph', [CompletionResultType]::ParameterName, 'Like -c, except that the first and second line of a paragraph *must* have different indentation or they are treated as separate paragraphs.')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'Attempt to detect and preserve mail headers in the input. Be careful when combining this flag with -p.')
            [CompletionResult]::new('--preserve-headers', 'preserve-headers', [CompletionResultType]::ParameterName, 'Attempt to detect and preserve mail headers in the input. Be careful when combining this flag with -p.')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'Split lines only, do not reflow.')
            [CompletionResult]::new('--split-only', 'split-only', [CompletionResultType]::ParameterName, 'Split lines only, do not reflow.')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'Insert exactly one space between words, and two between sentences. Sentence breaks in the input are detected as [?!.] followed by two spaces or a newline; other punctuation is not interpreted as a sentence break.')
            [CompletionResult]::new('--uniform-spacing', 'uniform-spacing', [CompletionResultType]::ParameterName, 'Insert exactly one space between words, and two between sentences. Sentence breaks in the input are detected as [?!.] followed by two spaces or a newline; other punctuation is not interpreted as a sentence break.')
            [CompletionResult]::new('-x', 'x', [CompletionResultType]::ParameterName, 'PREFIX must match at the beginning of the line with no preceding whitespace.')
            [CompletionResult]::new('--exact-prefix', 'exact-prefix', [CompletionResultType]::ParameterName, 'PREFIX must match at the beginning of the line with no preceding whitespace.')
            [CompletionResult]::new('-X', 'X ', [CompletionResultType]::ParameterName, 'PSKIP must match at the beginning of the line with no preceding whitespace.')
            [CompletionResult]::new('--exact-skip-prefix', 'exact-skip-prefix', [CompletionResultType]::ParameterName, 'PSKIP must match at the beginning of the line with no preceding whitespace.')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'Break lines more quickly at the expense of a potentially more ragged appearance.')
            [CompletionResult]::new('--quick', 'quick', [CompletionResultType]::ParameterName, 'Break lines more quickly at the expense of a potentially more ragged appearance.')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'fold' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'fold'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'fold' {
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'set WIDTH as the maximum line width rather than 80')
            [CompletionResult]::new('--width', 'width', [CompletionResultType]::ParameterName, 'set WIDTH as the maximum line width rather than 80')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'count using bytes rather than columns (meaning control characters such as newline are not treated specially)')
            [CompletionResult]::new('--bytes', 'bytes', [CompletionResultType]::ParameterName, 'count using bytes rather than columns (meaning control characters such as newline are not treated specially)')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'break lines at word boundaries rather than a hard cut-off')
            [CompletionResult]::new('--spaces', 'spaces', [CompletionResultType]::ParameterName, 'break lines at word boundaries rather than a hard cut-off')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'hashsum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'hashsum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'hashsum' {
            [CompletionResult]::new('--bits', 'bits', [CompletionResultType]::ParameterName, 'set the size of the output (only for SHAKE)')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--no-names', 'no-names', [CompletionResultType]::ParameterName, 'Omits filenames in the output (option not present in GNU/Coreutils)')
            [CompletionResult]::new('--md5', 'md5', [CompletionResultType]::ParameterName, 'work with MD5')
            [CompletionResult]::new('--sha1', 'sha1', [CompletionResultType]::ParameterName, 'work with SHA1')
            [CompletionResult]::new('--sha224', 'sha224', [CompletionResultType]::ParameterName, 'work with SHA224')
            [CompletionResult]::new('--sha256', 'sha256', [CompletionResultType]::ParameterName, 'work with SHA256')
            [CompletionResult]::new('--sha384', 'sha384', [CompletionResultType]::ParameterName, 'work with SHA384')
            [CompletionResult]::new('--sha512', 'sha512', [CompletionResultType]::ParameterName, 'work with SHA512')
            [CompletionResult]::new('--sha3', 'sha3', [CompletionResultType]::ParameterName, 'work with SHA3')
            [CompletionResult]::new('--sha3-224', 'sha3-224', [CompletionResultType]::ParameterName, 'work with SHA3-224')
            [CompletionResult]::new('--sha3-256', 'sha3-256', [CompletionResultType]::ParameterName, 'work with SHA3-256')
            [CompletionResult]::new('--sha3-384', 'sha3-384', [CompletionResultType]::ParameterName, 'work with SHA3-384')
            [CompletionResult]::new('--sha3-512', 'sha3-512', [CompletionResultType]::ParameterName, 'work with SHA3-512')
            [CompletionResult]::new('--shake128', 'shake128', [CompletionResultType]::ParameterName, 'work with SHAKE128 using BITS for the output size')
            [CompletionResult]::new('--shake256', 'shake256', [CompletionResultType]::ParameterName, 'work with SHAKE256 using BITS for the output size')
            [CompletionResult]::new('--b2sum', 'b2sum', [CompletionResultType]::ParameterName, 'work with BLAKE2')
            [CompletionResult]::new('--b3sum', 'b3sum', [CompletionResultType]::ParameterName, 'work with BLAKE3')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'head' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'head'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'head' {
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'print the first NUM bytes of each file;
with the leading ''-'', print all but the last
NUM bytes of each file')
            [CompletionResult]::new('--bytes', 'bytes', [CompletionResultType]::ParameterName, 'print the first NUM bytes of each file;
with the leading ''-'', print all but the last
NUM bytes of each file')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'print the first NUM lines instead of the first 10;
with the leading ''-'', print all but the last
NUM lines of each file')
            [CompletionResult]::new('--lines', 'lines', [CompletionResultType]::ParameterName, 'print the first NUM lines instead of the first 10;
with the leading ''-'', print all but the last
NUM lines of each file')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'never print headers giving file names')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'never print headers giving file names')
            [CompletionResult]::new('--silent', 'silent', [CompletionResultType]::ParameterName, 'never print headers giving file names')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'always print headers giving file names')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'always print headers giving file names')
            [CompletionResult]::new('--presume-input-pipe', 'presume-input-pipe', [CompletionResultType]::ParameterName, 'presume-input-pipe')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('--zero-terminated', 'zero-terminated', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'join' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'join'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'join' {
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'also print unpairable lines from file FILENUM, where
FILENUM is 1 or 2, corresponding to FILE1 or FILE2')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'like -a FILENUM, but suppress joined output lines')
            [CompletionResult]::new('-e', 'e', [CompletionResultType]::ParameterName, 'replace missing input fields with EMPTY')
            [CompletionResult]::new('-j', 'j', [CompletionResultType]::ParameterName, 'equivalent to ''-1 FIELD -2 FIELD''')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'obey FORMAT while constructing output line')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'use CHAR as input and output field separator')
            [CompletionResult]::new('-1', '1', [CompletionResultType]::ParameterName, 'join on this FIELD of file 1')
            [CompletionResult]::new('-2', '2', [CompletionResultType]::ParameterName, 'join on this FIELD of file 2')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'ignore differences in case when comparing fields')
            [CompletionResult]::new('--ignore-case', 'ignore-case', [CompletionResultType]::ParameterName, 'ignore differences in case when comparing fields')
            [CompletionResult]::new('--check-order', 'check-order', [CompletionResultType]::ParameterName, 'check that the input is correctly sorted, even if all input lines are pairable')
            [CompletionResult]::new('--nocheck-order', 'nocheck-order', [CompletionResultType]::ParameterName, 'do not check that the input is correctly sorted')
            [CompletionResult]::new('--header', 'header', [CompletionResultType]::ParameterName, 'treat the first line in each file as field headers, print them without trying to pair them')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('--zero-terminated', 'zero-terminated', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'link' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'link'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'link' {
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'ln' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'ln'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'ln' {
            [CompletionResult]::new('--backup', 'backup', [CompletionResultType]::ParameterName, 'make a backup of each existing destination file')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'override the usual backup suffix')
            [CompletionResult]::new('--suffix', 'suffix', [CompletionResultType]::ParameterName, 'override the usual backup suffix')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'specify the DIRECTORY in which to create the links')
            [CompletionResult]::new('--target-directory', 'target-directory', [CompletionResultType]::ParameterName, 'specify the DIRECTORY in which to create the links')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'like --backup but does not accept an argument')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'remove existing destination files')
            [CompletionResult]::new('--force', 'force', [CompletionResultType]::ParameterName, 'remove existing destination files')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'prompt whether to remove existing destination files')
            [CompletionResult]::new('--interactive', 'interactive', [CompletionResultType]::ParameterName, 'prompt whether to remove existing destination files')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'treat LINK_NAME as a normal file if it is a symbolic link to a directory')
            [CompletionResult]::new('--no-dereference', 'no-dereference', [CompletionResultType]::ParameterName, 'treat LINK_NAME as a normal file if it is a symbolic link to a directory')
            [CompletionResult]::new('-L', 'L ', [CompletionResultType]::ParameterName, 'follow TARGETs that are symbolic links')
            [CompletionResult]::new('--logical', 'logical', [CompletionResultType]::ParameterName, 'follow TARGETs that are symbolic links')
            [CompletionResult]::new('-P', 'P ', [CompletionResultType]::ParameterName, 'make hard links directly to symbolic links')
            [CompletionResult]::new('--physical', 'physical', [CompletionResultType]::ParameterName, 'make hard links directly to symbolic links')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'make symbolic links instead of hard links')
            [CompletionResult]::new('--symbolic', 'symbolic', [CompletionResultType]::ParameterName, 'make symbolic links instead of hard links')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'treat LINK_NAME as a normal file always')
            [CompletionResult]::new('--no-target-directory', 'no-target-directory', [CompletionResultType]::ParameterName, 'treat LINK_NAME as a normal file always')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'create symbolic links relative to link location')
            [CompletionResult]::new('--relative', 'relative', [CompletionResultType]::ParameterName, 'create symbolic links relative to link location')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'print name of each linked file')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'print name of each linked file')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'ls' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'ls'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'ls' {
            [CompletionResult]::new('--format', 'format', [CompletionResultType]::ParameterName, 'Set the display format.')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'Assume tab stops at each COLS instead of 8 (unimplemented)')
            [CompletionResult]::new('--tabsize', 'tabsize', [CompletionResultType]::ParameterName, 'Assume tab stops at each COLS instead of 8 (unimplemented)')
            [CompletionResult]::new('--hyperlink', 'hyperlink', [CompletionResultType]::ParameterName, 'hyperlink file names WHEN')
            [CompletionResult]::new('--quoting-style', 'quoting-style', [CompletionResultType]::ParameterName, 'Set quoting style.')
            [CompletionResult]::new('--time', 'time', [CompletionResultType]::ParameterName, 'Show time in <field>:
	access time (-u): atime, access, use;
	change time (-t): ctime, status.
	birth time: birth, creation;')
            [CompletionResult]::new('--hide', 'hide', [CompletionResultType]::ParameterName, 'do not list implied entries matching shell PATTERN (overridden by -a or -A)')
            [CompletionResult]::new('-I', 'I ', [CompletionResultType]::ParameterName, 'do not list implied entries matching shell PATTERN')
            [CompletionResult]::new('--ignore', 'ignore', [CompletionResultType]::ParameterName, 'do not list implied entries matching shell PATTERN')
            [CompletionResult]::new('--sort', 'sort', [CompletionResultType]::ParameterName, 'Sort by <field>: name, none (-U), time (-t), size (-S), extension (-X) or width')
            [CompletionResult]::new('--block-size', 'block-size', [CompletionResultType]::ParameterName, 'scale sizes by BLOCK_SIZE when printing them')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'Assume that the terminal is COLS columns wide.')
            [CompletionResult]::new('--width', 'width', [CompletionResultType]::ParameterName, 'Assume that the terminal is COLS columns wide.')
            [CompletionResult]::new('--color', 'color', [CompletionResultType]::ParameterName, 'Color output based on file type.')
            [CompletionResult]::new('--indicator-style', 'indicator-style', [CompletionResultType]::ParameterName, 'Append indicator with style WORD to entry names: none (default),  slash (-p), file-type (--file-type), classify (-F)')
            [CompletionResult]::new('-F', 'F ', [CompletionResultType]::ParameterName, 'Append a character to each file name indicating the file type. Also, for regular files that are executable, append ''*''. The file type indicators are ''/'' for directories, ''@'' for symbolic links, ''|'' for FIFOs, ''='' for sockets, ''>'' for doors, and nothing for regular files. when may be omitted, or one of:
	none - Do not classify. This is the default.
	auto - Only classify if standard output is a terminal.
	always - Always classify.
Specifying --classify and no when is equivalent to --classify=always. This will not follow symbolic links listed on the command line unless the --dereference-command-line (-H), --dereference (-L), or --dereference-command-line-symlink-to-dir options are specified.')
            [CompletionResult]::new('--classify', 'classify', [CompletionResultType]::ParameterName, 'Append a character to each file name indicating the file type. Also, for regular files that are executable, append ''*''. The file type indicators are ''/'' for directories, ''@'' for symbolic links, ''|'' for FIFOs, ''='' for sockets, ''>'' for doors, and nothing for regular files. when may be omitted, or one of:
	none - Do not classify. This is the default.
	auto - Only classify if standard output is a terminal.
	always - Always classify.
Specifying --classify and no when is equivalent to --classify=always. This will not follow symbolic links listed on the command line unless the --dereference-command-line (-H), --dereference (-L), or --dereference-command-line-symlink-to-dir options are specified.')
            [CompletionResult]::new('--time-style', 'time-style', [CompletionResultType]::ParameterName, 'time/date format with -l; see TIME_STYLE below')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information.')
            [CompletionResult]::new('-C', 'C ', [CompletionResultType]::ParameterName, 'Display the files in columns.')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'Display detailed information.')
            [CompletionResult]::new('--long', 'long', [CompletionResultType]::ParameterName, 'Display detailed information.')
            [CompletionResult]::new('-x', 'x', [CompletionResultType]::ParameterName, 'List entries in rows instead of in columns.')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'List entries separated by commas.')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'List entries separated by ASCII NUL characters.')
            [CompletionResult]::new('-D', 'D ', [CompletionResultType]::ParameterName, 'generate output designed for Emacs'' dired (Directory Editor) mode')
            [CompletionResult]::new('--dired', 'dired', [CompletionResultType]::ParameterName, 'generate output designed for Emacs'' dired (Directory Editor) mode')
            [CompletionResult]::new('-1', '1', [CompletionResultType]::ParameterName, 'List one file per line.')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'Long format without group information. Identical to --format=long with --no-group.')
            [CompletionResult]::new('-g', 'g', [CompletionResultType]::ParameterName, 'Long format without owner information.')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, '-l with numeric UIDs and GIDs.')
            [CompletionResult]::new('--numeric-uid-gid', 'numeric-uid-gid', [CompletionResultType]::ParameterName, '-l with numeric UIDs and GIDs.')
            [CompletionResult]::new('-N', 'N ', [CompletionResultType]::ParameterName, 'Use literal quoting style. Equivalent to `--quoting-style=literal`')
            [CompletionResult]::new('--literal', 'literal', [CompletionResultType]::ParameterName, 'Use literal quoting style. Equivalent to `--quoting-style=literal`')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'Use escape quoting style. Equivalent to `--quoting-style=escape`')
            [CompletionResult]::new('--escape', 'escape', [CompletionResultType]::ParameterName, 'Use escape quoting style. Equivalent to `--quoting-style=escape`')
            [CompletionResult]::new('-Q', 'Q ', [CompletionResultType]::ParameterName, 'Use C quoting style. Equivalent to `--quoting-style=c`')
            [CompletionResult]::new('--quote-name', 'quote-name', [CompletionResultType]::ParameterName, 'Use C quoting style. Equivalent to `--quoting-style=c`')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'Replace control characters with ''?'' if they are not escaped.')
            [CompletionResult]::new('--hide-control-chars', 'hide-control-chars', [CompletionResultType]::ParameterName, 'Replace control characters with ''?'' if they are not escaped.')
            [CompletionResult]::new('--show-control-chars', 'show-control-chars', [CompletionResultType]::ParameterName, 'Show control characters ''as is'' if they are not escaped.')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'If the long listing format (e.g., -l, -o) is being used, print the status change time (the ''ctime'' in the inode) instead of the modification time. When explicitly sorting by time (--sort=time or -t) or when not using a long listing format, sort according to the status change time.')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'If the long listing format (e.g., -l, -o) is being used, print the status access time instead of the modification time. When explicitly sorting by time (--sort=time or -t) or when not using a long listing format, sort according to the access time.')
            [CompletionResult]::new('-B', 'B ', [CompletionResultType]::ParameterName, 'Ignore entries which end with ~.')
            [CompletionResult]::new('--ignore-backups', 'ignore-backups', [CompletionResultType]::ParameterName, 'Ignore entries which end with ~.')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'Sort by file size, largest first.')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'Sort by modification time (the ''mtime'' in the inode), newest first.')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'Natural sort of (version) numbers in the filenames.')
            [CompletionResult]::new('-X', 'X ', [CompletionResultType]::ParameterName, 'Sort alphabetically by entry extension.')
            [CompletionResult]::new('-U', 'U ', [CompletionResultType]::ParameterName, 'Do not sort; list the files in whatever order they are stored in the directory.  This is especially useful when listing very large directories, since not doing any sorting can be noticeably faster.')
            [CompletionResult]::new('-L', 'L ', [CompletionResultType]::ParameterName, 'When showing file information for a symbolic link, show information for the file the link references rather than the link itself.')
            [CompletionResult]::new('--dereference', 'dereference', [CompletionResultType]::ParameterName, 'When showing file information for a symbolic link, show information for the file the link references rather than the link itself.')
            [CompletionResult]::new('--dereference-command-line-symlink-to-dir', 'dereference-command-line-symlink-to-dir', [CompletionResultType]::ParameterName, 'Do not follow symlinks except when they link to directories and are given as command line arguments.')
            [CompletionResult]::new('-H', 'H ', [CompletionResultType]::ParameterName, 'Do not follow symlinks except when given as command line arguments.')
            [CompletionResult]::new('--dereference-command-line', 'dereference-command-line', [CompletionResultType]::ParameterName, 'Do not follow symlinks except when given as command line arguments.')
            [CompletionResult]::new('-G', 'G ', [CompletionResultType]::ParameterName, 'Do not show group in long format.')
            [CompletionResult]::new('--no-group', 'no-group', [CompletionResultType]::ParameterName, 'Do not show group in long format.')
            [CompletionResult]::new('--author', 'author', [CompletionResultType]::ParameterName, 'Show author in long format. On the supported platforms, the author always matches the file owner.')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'Do not ignore hidden files (files with names that start with ''.'').')
            [CompletionResult]::new('--all', 'all', [CompletionResultType]::ParameterName, 'Do not ignore hidden files (files with names that start with ''.'').')
            [CompletionResult]::new('-A', 'A ', [CompletionResultType]::ParameterName, 'In a directory, do not ignore all file names that start with ''.'', only ignore ''.'' and ''..''.')
            [CompletionResult]::new('--almost-all', 'almost-all', [CompletionResultType]::ParameterName, 'In a directory, do not ignore all file names that start with ''.'', only ignore ''.'' and ''..''.')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Only list the names of directories, rather than listing directory contents. This will not follow symbolic links unless one of `--dereference-command-line (-H)`, `--dereference (-L)`, or `--dereference-command-line-symlink-to-dir` is specified.')
            [CompletionResult]::new('--directory', 'directory', [CompletionResultType]::ParameterName, 'Only list the names of directories, rather than listing directory contents. This will not follow symbolic links unless one of `--dereference-command-line (-H)`, `--dereference (-L)`, or `--dereference-command-line-symlink-to-dir` is specified.')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print human readable file sizes (e.g. 1K 234M 56G).')
            [CompletionResult]::new('--human-readable', 'human-readable', [CompletionResultType]::ParameterName, 'Print human readable file sizes (e.g. 1K 234M 56G).')
            [CompletionResult]::new('-k', 'k', [CompletionResultType]::ParameterName, 'default to 1024-byte blocks for file system usage; used only with -s and per directory totals')
            [CompletionResult]::new('--kibibytes', 'kibibytes', [CompletionResultType]::ParameterName, 'default to 1024-byte blocks for file system usage; used only with -s and per directory totals')
            [CompletionResult]::new('--si', 'si', [CompletionResultType]::ParameterName, 'Print human readable file sizes using powers of 1000 instead of 1024.')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'print the index number of each file')
            [CompletionResult]::new('--inode', 'inode', [CompletionResultType]::ParameterName, 'print the index number of each file')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'Reverse whatever the sorting method is e.g., list files in reverse alphabetical order, youngest first, smallest first, or whatever.')
            [CompletionResult]::new('--reverse', 'reverse', [CompletionResultType]::ParameterName, 'Reverse whatever the sorting method is e.g., list files in reverse alphabetical order, youngest first, smallest first, or whatever.')
            [CompletionResult]::new('-R', 'R ', [CompletionResultType]::ParameterName, 'List the contents of all directories recursively.')
            [CompletionResult]::new('--recursive', 'recursive', [CompletionResultType]::ParameterName, 'List the contents of all directories recursively.')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'print the allocated size of each file, in blocks')
            [CompletionResult]::new('--size', 'size', [CompletionResultType]::ParameterName, 'print the allocated size of each file, in blocks')
            [CompletionResult]::new('--file-type', 'file-type', [CompletionResultType]::ParameterName, 'Same as --classify, but do not append ''*''')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'Append / indicator to directories.')
            [CompletionResult]::new('--full-time', 'full-time', [CompletionResultType]::ParameterName, 'like -l --time-style=full-iso')
            [CompletionResult]::new('-Z', 'Z ', [CompletionResultType]::ParameterName, 'print any security context of each file (not enabled)')
            [CompletionResult]::new('--context', 'context', [CompletionResultType]::ParameterName, 'print any security context of each file (not enabled)')
            [CompletionResult]::new('--group-directories-first', 'group-directories-first', [CompletionResultType]::ParameterName, 'group directories before files; can be augmented with a --sort option, but any use of --sort=none (-U) disables grouping')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'md5sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'md5sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'md5sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'mkdir' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'mkdir'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'mkdir' {
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'set file mode (not implemented on windows)')
            [CompletionResult]::new('--mode', 'mode', [CompletionResultType]::ParameterName, 'set file mode (not implemented on windows)')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'make parent directories as needed')
            [CompletionResult]::new('--parents', 'parents', [CompletionResultType]::ParameterName, 'make parent directories as needed')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'print a message for each printed directory')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'print a message for each printed directory')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'mktemp' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'mktemp'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'mktemp' {
            [CompletionResult]::new('--suffix', 'suffix', [CompletionResultType]::ParameterName, 'append SUFFIX to TEMPLATE; SUFFIX must not contain a path separator. This option is implied if TEMPLATE does not end with X.')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'short form of --tmpdir')
            [CompletionResult]::new('--tmpdir', 'tmpdir', [CompletionResultType]::ParameterName, 'interpret TEMPLATE relative to DIR; if DIR is not specified, use $TMPDIR ($TMP on windows) if set, else /tmp. With this option, TEMPLATE must not be an absolute name; unlike with -t, TEMPLATE may contain slashes, but mktemp creates only the final component')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Make a directory instead of a file')
            [CompletionResult]::new('--directory', 'directory', [CompletionResultType]::ParameterName, 'Make a directory instead of a file')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'do not create anything; merely print a name (unsafe)')
            [CompletionResult]::new('--dry-run', 'dry-run', [CompletionResultType]::ParameterName, 'do not create anything; merely print a name (unsafe)')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'Fail silently if an error occurs.')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'Fail silently if an error occurs.')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'Generate a template (using the supplied prefix and TMPDIR (TMP on windows) if set) to create a filename template [deprecated]')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'more' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'more'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'more' {
            [CompletionResult]::new('-P', 'P ', [CompletionResultType]::ParameterName, 'Display file beginning from pattern match')
            [CompletionResult]::new('--pattern', 'pattern', [CompletionResultType]::ParameterName, 'Display file beginning from pattern match')
            [CompletionResult]::new('-F', 'F ', [CompletionResultType]::ParameterName, 'Display file beginning from line number')
            [CompletionResult]::new('--from-line', 'from-line', [CompletionResultType]::ParameterName, 'Display file beginning from line number')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'The number of lines per screen full')
            [CompletionResult]::new('--lines', 'lines', [CompletionResultType]::ParameterName, 'The number of lines per screen full')
            [CompletionResult]::new('--number', 'number', [CompletionResultType]::ParameterName, 'Same as --lines')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'Do not scroll, display text and clean line ends')
            [CompletionResult]::new('--print-over', 'print-over', [CompletionResultType]::ParameterName, 'Do not scroll, display text and clean line ends')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Display help instead of ringing bell')
            [CompletionResult]::new('--silent', 'silent', [CompletionResultType]::ParameterName, 'Display help instead of ringing bell')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'Do not scroll, clean screen and display text')
            [CompletionResult]::new('--clean-print', 'clean-print', [CompletionResultType]::ParameterName, 'Do not scroll, clean screen and display text')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'Squeeze multiple blank lines into one')
            [CompletionResult]::new('--squeeze', 'squeeze', [CompletionResultType]::ParameterName, 'Squeeze multiple blank lines into one')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'u')
            [CompletionResult]::new('--plain', 'plain', [CompletionResultType]::ParameterName, 'plain')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'mv' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'mv'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'mv' {
            [CompletionResult]::new('--backup', 'backup', [CompletionResultType]::ParameterName, 'make a backup of each existing destination file')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'override the usual backup suffix')
            [CompletionResult]::new('--suffix', 'suffix', [CompletionResultType]::ParameterName, 'override the usual backup suffix')
            [CompletionResult]::new('--update', 'update', [CompletionResultType]::ParameterName, 'move only when the SOURCE file is newer than the destination file or when the destination file is missing')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'move all SOURCE arguments into DIRECTORY')
            [CompletionResult]::new('--target-directory', 'target-directory', [CompletionResultType]::ParameterName, 'move all SOURCE arguments into DIRECTORY')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'do not prompt before overwriting')
            [CompletionResult]::new('--force', 'force', [CompletionResultType]::ParameterName, 'do not prompt before overwriting')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'prompt before override')
            [CompletionResult]::new('--interactive', 'interactive', [CompletionResultType]::ParameterName, 'prompt before override')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'do not overwrite an existing file')
            [CompletionResult]::new('--no-clobber', 'no-clobber', [CompletionResultType]::ParameterName, 'do not overwrite an existing file')
            [CompletionResult]::new('--strip-trailing-slashes', 'strip-trailing-slashes', [CompletionResultType]::ParameterName, 'remove any trailing slashes from each SOURCE argument')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'like --backup but does not accept an argument')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'like --update but does not accept an argument')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'treat DEST as a normal file')
            [CompletionResult]::new('--no-target-directory', 'no-target-directory', [CompletionResultType]::ParameterName, 'treat DEST as a normal file')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'explain what is being done')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'explain what is being done')
            [CompletionResult]::new('-g', 'g', [CompletionResultType]::ParameterName, 'Display a progress bar. 
Note: this feature is not supported by GNU coreutils.')
            [CompletionResult]::new('--progress', 'progress', [CompletionResultType]::ParameterName, 'Display a progress bar. 
Note: this feature is not supported by GNU coreutils.')
            [CompletionResult]::new('--debug', 'debug', [CompletionResultType]::ParameterName, 'explain how a file is copied. Implies -v')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'nl' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'nl'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'nl' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'use STYLE for numbering body lines')
            [CompletionResult]::new('--body-numbering', 'body-numbering', [CompletionResultType]::ParameterName, 'use STYLE for numbering body lines')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'use CC for separating logical pages')
            [CompletionResult]::new('--section-delimiter', 'section-delimiter', [CompletionResultType]::ParameterName, 'use CC for separating logical pages')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'use STYLE for numbering footer lines')
            [CompletionResult]::new('--footer-numbering', 'footer-numbering', [CompletionResultType]::ParameterName, 'use STYLE for numbering footer lines')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'use STYLE for numbering header lines')
            [CompletionResult]::new('--header-numbering', 'header-numbering', [CompletionResultType]::ParameterName, 'use STYLE for numbering header lines')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'line number increment at each line')
            [CompletionResult]::new('--line-increment', 'line-increment', [CompletionResultType]::ParameterName, 'line number increment at each line')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'group of NUMBER empty lines counted as one')
            [CompletionResult]::new('--join-blank-lines', 'join-blank-lines', [CompletionResultType]::ParameterName, 'group of NUMBER empty lines counted as one')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'insert line numbers according to FORMAT')
            [CompletionResult]::new('--number-format', 'number-format', [CompletionResultType]::ParameterName, 'insert line numbers according to FORMAT')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'add STRING after (possible) line number')
            [CompletionResult]::new('--number-separator', 'number-separator', [CompletionResultType]::ParameterName, 'add STRING after (possible) line number')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'first line number on each logical page')
            [CompletionResult]::new('--starting-line-number', 'starting-line-number', [CompletionResultType]::ParameterName, 'first line number on each logical page')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'use NUMBER columns for line numbers')
            [CompletionResult]::new('--number-width', 'number-width', [CompletionResultType]::ParameterName, 'use NUMBER columns for line numbers')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information.')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'do not reset line numbers at logical pages')
            [CompletionResult]::new('--no-renumber', 'no-renumber', [CompletionResultType]::ParameterName, 'do not reset line numbers at logical pages')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'numfmt' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'numfmt'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'numfmt' {
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'use X instead of whitespace for field delimiter')
            [CompletionResult]::new('--delimiter', 'delimiter', [CompletionResultType]::ParameterName, 'use X instead of whitespace for field delimiter')
            [CompletionResult]::new('--field', 'field', [CompletionResultType]::ParameterName, 'replace the numbers in these input fields; see FIELDS below')
            [CompletionResult]::new('--format', 'format', [CompletionResultType]::ParameterName, 'use printf style floating-point FORMAT; see FORMAT below for details')
            [CompletionResult]::new('--from', 'from', [CompletionResultType]::ParameterName, 'auto-scale input numbers to UNITs; see UNIT below')
            [CompletionResult]::new('--from-unit', 'from-unit', [CompletionResultType]::ParameterName, 'specify the input unit size')
            [CompletionResult]::new('--to', 'to', [CompletionResultType]::ParameterName, 'auto-scale output numbers to UNITs; see UNIT below')
            [CompletionResult]::new('--to-unit', 'to-unit', [CompletionResultType]::ParameterName, 'the output unit size')
            [CompletionResult]::new('--padding', 'padding', [CompletionResultType]::ParameterName, 'pad the output to N characters; positive N will right-align; negative N will left-align; padding is ignored if the output is wider than N; the default is to automatically pad if a whitespace is found')
            [CompletionResult]::new('--header', 'header', [CompletionResultType]::ParameterName, 'print (without converting) the first N header lines; N defaults to 1 if not specified')
            [CompletionResult]::new('--round', 'round', [CompletionResultType]::ParameterName, 'use METHOD for rounding when scaling')
            [CompletionResult]::new('--suffix', 'suffix', [CompletionResultType]::ParameterName, 'print SUFFIX after each formatted number, and accept inputs optionally ending with SUFFIX')
            [CompletionResult]::new('--invalid', 'invalid', [CompletionResultType]::ParameterName, 'set the failure mode for invalid input')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'od' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'od'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'od' {
            [CompletionResult]::new('-A', 'A ', [CompletionResultType]::ParameterName, 'Select the base in which file offsets are printed.')
            [CompletionResult]::new('--address-radix', 'address-radix', [CompletionResultType]::ParameterName, 'Select the base in which file offsets are printed.')
            [CompletionResult]::new('-j', 'j', [CompletionResultType]::ParameterName, 'Skip bytes input bytes before formatting and writing.')
            [CompletionResult]::new('--skip-bytes', 'skip-bytes', [CompletionResultType]::ParameterName, 'Skip bytes input bytes before formatting and writing.')
            [CompletionResult]::new('-N', 'N ', [CompletionResultType]::ParameterName, 'limit dump to BYTES input bytes')
            [CompletionResult]::new('--read-bytes', 'read-bytes', [CompletionResultType]::ParameterName, 'limit dump to BYTES input bytes')
            [CompletionResult]::new('--endian', 'endian', [CompletionResultType]::ParameterName, 'byte order to use for multi-byte formats')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'NotImplemented: output strings of at least BYTES graphic chars. 3 is assumed when BYTES is not specified.')
            [CompletionResult]::new('--strings', 'strings', [CompletionResultType]::ParameterName, 'NotImplemented: output strings of at least BYTES graphic chars. 3 is assumed when BYTES is not specified.')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'select output format or formats')
            [CompletionResult]::new('--format', 'format', [CompletionResultType]::ParameterName, 'select output format or formats')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'output BYTES bytes per output line. 32 is implied when BYTES is not specified.')
            [CompletionResult]::new('--width', 'width', [CompletionResultType]::ParameterName, 'output BYTES bytes per output line. 32 is implied when BYTES is not specified.')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information.')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'named characters, ignoring high-order bit')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'octal bytes')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'ASCII characters or backslash escapes')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'unsigned decimal 2-byte units')
            [CompletionResult]::new('-D', 'D ', [CompletionResultType]::ParameterName, 'unsigned decimal 4-byte units')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'octal 2-byte units')
            [CompletionResult]::new('-I', 'I ', [CompletionResultType]::ParameterName, 'decimal 8-byte units')
            [CompletionResult]::new('-L', 'L ', [CompletionResultType]::ParameterName, 'decimal 8-byte units')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'decimal 4-byte units')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'decimal 8-byte units')
            [CompletionResult]::new('-x', 'x', [CompletionResultType]::ParameterName, 'hexadecimal 2-byte units')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'hexadecimal 2-byte units')
            [CompletionResult]::new('-O', 'O ', [CompletionResultType]::ParameterName, 'octal 4-byte units')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'decimal 2-byte units')
            [CompletionResult]::new('-X', 'X ', [CompletionResultType]::ParameterName, 'hexadecimal 4-byte units')
            [CompletionResult]::new('-H', 'H ', [CompletionResultType]::ParameterName, 'hexadecimal 4-byte units')
            [CompletionResult]::new('-e', 'e', [CompletionResultType]::ParameterName, 'floating point double precision (64-bit) units')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'floating point double precision (32-bit) units')
            [CompletionResult]::new('-F', 'F ', [CompletionResultType]::ParameterName, 'floating point double precision (64-bit) units')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'do not use * to mark line suppression')
            [CompletionResult]::new('--output-duplicates', 'output-duplicates', [CompletionResultType]::ParameterName, 'do not use * to mark line suppression')
            [CompletionResult]::new('--traditional', 'traditional', [CompletionResultType]::ParameterName, 'compatibility mode with one input, offset and label.')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'paste' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'paste'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'paste' {
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'reuse characters from LIST instead of TABs')
            [CompletionResult]::new('--delimiters', 'delimiters', [CompletionResultType]::ParameterName, 'reuse characters from LIST instead of TABs')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'paste one file at a time instead of in parallel')
            [CompletionResult]::new('--serial', 'serial', [CompletionResultType]::ParameterName, 'paste one file at a time instead of in parallel')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('--zero-terminated', 'zero-terminated', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'pr' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'pr'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'pr' {
            [CompletionResult]::new('--pages', 'pages', [CompletionResultType]::ParameterName, 'Begin and stop printing with page FIRST_PAGE[:LAST_PAGE]')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Use the string header to replace the file name in the header line.')
            [CompletionResult]::new('--header', 'header', [CompletionResultType]::ParameterName, 'Use the string header to replace the file name in the header line.')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'Provide width digit line numbering.  The default for width, if not specified, is 5.  The number occupies the first width column positions of each text column or each line of -m output.  If char (any non-digit character) is given, it is appended to the line number to separate it from whatever follows.  The default for char is a <tab>. Line numbers longer than width columns are truncated.')
            [CompletionResult]::new('--number-lines', 'number-lines', [CompletionResultType]::ParameterName, 'Provide width digit line numbering.  The default for width, if not specified, is 5.  The number occupies the first width column positions of each text column or each line of -m output.  If char (any non-digit character) is given, it is appended to the line number to separate it from whatever follows.  The default for char is a <tab>. Line numbers longer than width columns are truncated.')
            [CompletionResult]::new('-N', 'N ', [CompletionResultType]::ParameterName, 'start counting with NUMBER at 1st line of first page printed')
            [CompletionResult]::new('--first-line-number', 'first-line-number', [CompletionResultType]::ParameterName, 'start counting with NUMBER at 1st line of first page printed')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'Override the 66-line default (default number of lines of text 56, and with -F 63) and reset the page length to lines.  If lines is not greater than the sum  of  both the  header  and trailer depths (in lines), the pr utility shall suppress both the header and trailer, as if the -t option were in effect. ')
            [CompletionResult]::new('--length', 'length', [CompletionResultType]::ParameterName, 'Override the 66-line default (default number of lines of text 56, and with -F 63) and reset the page length to lines.  If lines is not greater than the sum  of  both the  header  and trailer depths (in lines), the pr utility shall suppress both the header and trailer, as if the -t option were in effect. ')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'Set the width of the line to width column positions for multiple text-column output only. If the -w option is not specified and the -s option is not specified, the default width shall be 72. If the -w option is not specified and the -s option is specified, the default width shall be 512.')
            [CompletionResult]::new('--width', 'width', [CompletionResultType]::ParameterName, 'Set the width of the line to width column positions for multiple text-column output only. If the -w option is not specified and the -s option is not specified, the default width shall be 72. If the -w option is not specified and the -s option is specified, the default width shall be 512.')
            [CompletionResult]::new('-W', 'W ', [CompletionResultType]::ParameterName, 'set page width to PAGE_WIDTH (72) characters always, truncate lines, except -J option is set, no interference with -S or -s')
            [CompletionResult]::new('--page-width', 'page-width', [CompletionResultType]::ParameterName, 'set page width to PAGE_WIDTH (72) characters always, truncate lines, except -J option is set, no interference with -S or -s')
            [CompletionResult]::new('--column', 'column', [CompletionResultType]::ParameterName, 'Produce multi-column output that is arranged in column columns (the default shall be 1) and is written down each column  in  the order in which the text is received from the input file. This option should not be used with -m. The options -e and -i shall be assumed for multiple text-column output.  Whether or not text columns are produced with identical vertical lengths is unspecified, but a text column shall never exceed the length of the page (see the -l option). When used with -t, use the minimum number of lines to write the output.')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'Separate text columns by the single character char instead of by the appropriate number of <space>s (default for char is the <tab> character).')
            [CompletionResult]::new('--separator', 'separator', [CompletionResultType]::ParameterName, 'Separate text columns by the single character char instead of by the appropriate number of <space>s (default for char is the <tab> character).')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'separate columns by STRING, without -S: Default separator <TAB> with -J and <space> otherwise (same as -S" "), no effect on column options')
            [CompletionResult]::new('--sep-string', 'sep-string', [CompletionResultType]::ParameterName, 'separate columns by STRING, without -S: Default separator <TAB> with -J and <space> otherwise (same as -S" "), no effect on column options')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'Each line of output shall be preceded by offset <space>s. If the -o option is not specified, the default offset shall be zero. The space taken is in addition to the output line width (see the -w option below).')
            [CompletionResult]::new('--indent', 'indent', [CompletionResultType]::ParameterName, 'Each line of output shall be preceded by offset <space>s. If the -o option is not specified, the default offset shall be zero. The space taken is in addition to the output line width (see the -w option below).')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Produce output that is double spaced. An extra <newline> character is output following every <newline> found in the input.')
            [CompletionResult]::new('--double-space', 'double-space', [CompletionResultType]::ParameterName, 'Produce output that is double spaced. An extra <newline> character is output following every <newline> found in the input.')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'Write neither the five-line identifying header nor the five-line trailer usually supplied for each page. Quit writing after the last line of each file without spacing to the end of the page.')
            [CompletionResult]::new('--omit-header', 'omit-header', [CompletionResultType]::ParameterName, 'Write neither the five-line identifying header nor the five-line trailer usually supplied for each page. Quit writing after the last line of each file without spacing to the end of the page.')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'omit warning when a file cannot be opened')
            [CompletionResult]::new('--no-file-warnings', 'no-file-warnings', [CompletionResultType]::ParameterName, 'omit warning when a file cannot be opened')
            [CompletionResult]::new('-F', 'F ', [CompletionResultType]::ParameterName, 'Use a <form-feed> for new pages, instead of the default behavior that uses a sequence of <newline>s.')
            [CompletionResult]::new('--form-feed', 'form-feed', [CompletionResultType]::ParameterName, 'Use a <form-feed> for new pages, instead of the default behavior that uses a sequence of <newline>s.')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'Modify the effect of the - column option so that the columns are filled across the page in a  round-robin  order (for example, when column is 2, the first input line heads column 1, the second heads column 2, the third is the second line in column 1, and so on).')
            [CompletionResult]::new('--across', 'across', [CompletionResultType]::ParameterName, 'Modify the effect of the - column option so that the columns are filled across the page in a  round-robin  order (for example, when column is 2, the first input line heads column 1, the second heads column 2, the third is the second line in column 1, and so on).')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'Merge files. Standard output shall be formatted so the pr utility writes one line from each file specified by a file operand, side by side into text columns of equal fixed widths, in terms of the number of column positions. Implementations shall support merging of at least nine file operands.')
            [CompletionResult]::new('--merge', 'merge', [CompletionResultType]::ParameterName, 'Merge files. Standard output shall be formatted so the pr utility writes one line from each file specified by a file operand, side by side into text columns of equal fixed widths, in terms of the number of column positions. Implementations shall support merging of at least nine file operands.')
            [CompletionResult]::new('-J', 'J ', [CompletionResultType]::ParameterName, 'merge full lines, turns off -W line truncation, no column alignment, --sep-string[=STRING] sets separators')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'printenv' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'printenv'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'printenv' {
            [CompletionResult]::new('-0', '0', [CompletionResultType]::ParameterName, 'end each output line with 0 byte rather than newline')
            [CompletionResult]::new('--null', 'null', [CompletionResultType]::ParameterName, 'end each output line with 0 byte rather than newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'printf' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'printf'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'printf' {
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version information')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'ptx' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'ptx'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'ptx' {
            [CompletionResult]::new('-F', 'F ', [CompletionResultType]::ParameterName, 'use STRING for flagging line truncations')
            [CompletionResult]::new('--flag-truncation', 'flag-truncation', [CompletionResultType]::ParameterName, 'use STRING for flagging line truncations')
            [CompletionResult]::new('-M', 'M ', [CompletionResultType]::ParameterName, 'macro name to use instead of ''xx''')
            [CompletionResult]::new('--macro-name', 'macro-name', [CompletionResultType]::ParameterName, 'macro name to use instead of ''xx''')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'for end of lines or end of sentences')
            [CompletionResult]::new('--sentence-regexp', 'sentence-regexp', [CompletionResultType]::ParameterName, 'for end of lines or end of sentences')
            [CompletionResult]::new('-W', 'W ', [CompletionResultType]::ParameterName, 'use REGEXP to match each keyword')
            [CompletionResult]::new('--word-regexp', 'word-regexp', [CompletionResultType]::ParameterName, 'use REGEXP to match each keyword')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'word break characters in this FILE')
            [CompletionResult]::new('--break-file', 'break-file', [CompletionResultType]::ParameterName, 'word break characters in this FILE')
            [CompletionResult]::new('-g', 'g', [CompletionResultType]::ParameterName, 'gap size in columns between output fields')
            [CompletionResult]::new('--gap-size', 'gap-size', [CompletionResultType]::ParameterName, 'gap size in columns between output fields')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'read ignore word list from FILE')
            [CompletionResult]::new('--ignore-file', 'ignore-file', [CompletionResultType]::ParameterName, 'read ignore word list from FILE')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'read only word list from this FILE')
            [CompletionResult]::new('--only-file', 'only-file', [CompletionResultType]::ParameterName, 'read only word list from this FILE')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'output width in columns, reference excluded')
            [CompletionResult]::new('--width', 'width', [CompletionResultType]::ParameterName, 'output width in columns, reference excluded')
            [CompletionResult]::new('-A', 'A ', [CompletionResultType]::ParameterName, 'output automatically generated references')
            [CompletionResult]::new('--auto-reference', 'auto-reference', [CompletionResultType]::ParameterName, 'output automatically generated references')
            [CompletionResult]::new('-G', 'G ', [CompletionResultType]::ParameterName, 'behave more like System V ''ptx''')
            [CompletionResult]::new('--traditional', 'traditional', [CompletionResultType]::ParameterName, 'behave more like System V ''ptx''')
            [CompletionResult]::new('-O', 'O ', [CompletionResultType]::ParameterName, 'generate output as roff directives')
            [CompletionResult]::new('--format=roff', 'format=roff', [CompletionResultType]::ParameterName, 'generate output as roff directives')
            [CompletionResult]::new('-R', 'R ', [CompletionResultType]::ParameterName, 'put references at right, not counted in -w')
            [CompletionResult]::new('--right-side-refs', 'right-side-refs', [CompletionResultType]::ParameterName, 'put references at right, not counted in -w')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'generate output as TeX directives')
            [CompletionResult]::new('--format=tex', 'format=tex', [CompletionResultType]::ParameterName, 'generate output as TeX directives')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'fold lower case to upper case for sorting')
            [CompletionResult]::new('--ignore-case', 'ignore-case', [CompletionResultType]::ParameterName, 'fold lower case to upper case for sorting')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'first field of each line is a reference')
            [CompletionResult]::new('--references', 'references', [CompletionResultType]::ParameterName, 'first field of each line is a reference')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'pwd' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'pwd'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'pwd' {
            [CompletionResult]::new('-L', 'L ', [CompletionResultType]::ParameterName, 'use PWD from environment, even if it contains symlinks')
            [CompletionResult]::new('--logical', 'logical', [CompletionResultType]::ParameterName, 'use PWD from environment, even if it contains symlinks')
            [CompletionResult]::new('-P', 'P ', [CompletionResultType]::ParameterName, 'avoid all symlinks')
            [CompletionResult]::new('--physical', 'physical', [CompletionResultType]::ParameterName, 'avoid all symlinks')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'readlink' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'readlink'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'readlink' {
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'canonicalize by following every symlink in every component of the given name recursively; all but the last component must exist')
            [CompletionResult]::new('--canonicalize', 'canonicalize', [CompletionResultType]::ParameterName, 'canonicalize by following every symlink in every component of the given name recursively; all but the last component must exist')
            [CompletionResult]::new('-e', 'e', [CompletionResultType]::ParameterName, 'canonicalize by following every symlink in every component of the given name recursively, all components must exist')
            [CompletionResult]::new('--canonicalize-existing', 'canonicalize-existing', [CompletionResultType]::ParameterName, 'canonicalize by following every symlink in every component of the given name recursively, all components must exist')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'canonicalize by following every symlink in every component of the given name recursively, without requirements on components existence')
            [CompletionResult]::new('--canonicalize-missing', 'canonicalize-missing', [CompletionResultType]::ParameterName, 'canonicalize by following every symlink in every component of the given name recursively, without requirements on components existence')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'do not output the trailing delimiter')
            [CompletionResult]::new('--no-newline', 'no-newline', [CompletionResultType]::ParameterName, 'do not output the trailing delimiter')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'suppress most error messages')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'suppress most error messages')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'suppress most error messages')
            [CompletionResult]::new('--silent', 'silent', [CompletionResultType]::ParameterName, 'suppress most error messages')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'report error message')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'report error message')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'separate output with NUL rather than newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'separate output with NUL rather than newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'realpath' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'realpath'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'realpath' {
            [CompletionResult]::new('--relative-to', 'relative-to', [CompletionResultType]::ParameterName, 'print the resolved path relative to DIR')
            [CompletionResult]::new('--relative-base', 'relative-base', [CompletionResultType]::ParameterName, 'print absolute paths unless paths below DIR')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'Do not print warnings for invalid paths')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'Do not print warnings for invalid paths')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'Only strip ''.'' and ''..'' components, but don''t resolve symbolic links')
            [CompletionResult]::new('--strip', 'strip', [CompletionResultType]::ParameterName, 'Only strip ''.'' and ''..'' components, but don''t resolve symbolic links')
            [CompletionResult]::new('--no-symlinks', 'no-symlinks', [CompletionResultType]::ParameterName, 'Only strip ''.'' and ''..'' components, but don''t resolve symbolic links')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'Separate output filenames with \0 rather than newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'Separate output filenames with \0 rather than newline')
            [CompletionResult]::new('-L', 'L ', [CompletionResultType]::ParameterName, 'resolve ''..'' components before symlinks')
            [CompletionResult]::new('--logical', 'logical', [CompletionResultType]::ParameterName, 'resolve ''..'' components before symlinks')
            [CompletionResult]::new('-P', 'P ', [CompletionResultType]::ParameterName, 'resolve symlinks as encountered (default)')
            [CompletionResult]::new('--physical', 'physical', [CompletionResultType]::ParameterName, 'resolve symlinks as encountered (default)')
            [CompletionResult]::new('-e', 'e', [CompletionResultType]::ParameterName, 'canonicalize by following every symlink in every component of the given name recursively, all components must exist')
            [CompletionResult]::new('--canonicalize-existing', 'canonicalize-existing', [CompletionResultType]::ParameterName, 'canonicalize by following every symlink in every component of the given name recursively, all components must exist')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'canonicalize by following every symlink in every component of the given name recursively, without requirements on components existence')
            [CompletionResult]::new('--canonicalize-missing', 'canonicalize-missing', [CompletionResultType]::ParameterName, 'canonicalize by following every symlink in every component of the given name recursively, without requirements on components existence')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'rm' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'rm'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'rm' {
            [CompletionResult]::new('--interactive', 'interactive', [CompletionResultType]::ParameterName, 'prompt according to WHEN: never, once (-I), or always (-i). Without WHEN, prompts always')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'ignore nonexistent files and arguments, never prompt')
            [CompletionResult]::new('--force', 'force', [CompletionResultType]::ParameterName, 'ignore nonexistent files and arguments, never prompt')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'prompt before every removal')
            [CompletionResult]::new('-I', 'I ', [CompletionResultType]::ParameterName, 'prompt once before removing more than three files, or when removing recursively. Less intrusive than -i, while still giving some protection against most mistakes')
            [CompletionResult]::new('--one-file-system', 'one-file-system', [CompletionResultType]::ParameterName, 'when removing a hierarchy recursively, skip any directory that is on a file system different from that of the corresponding command line argument (NOT IMPLEMENTED)')
            [CompletionResult]::new('--no-preserve-root', 'no-preserve-root', [CompletionResultType]::ParameterName, 'do not treat ''/'' specially')
            [CompletionResult]::new('--preserve-root', 'preserve-root', [CompletionResultType]::ParameterName, 'do not remove ''/'' (default)')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'remove directories and their contents recursively')
            [CompletionResult]::new('-R', 'R ', [CompletionResultType]::ParameterName, 'remove directories and their contents recursively')
            [CompletionResult]::new('--recursive', 'recursive', [CompletionResultType]::ParameterName, 'remove directories and their contents recursively')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'remove empty directories')
            [CompletionResult]::new('--dir', 'dir', [CompletionResultType]::ParameterName, 'remove empty directories')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'explain what is being done')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'explain what is being done')
            [CompletionResult]::new('--presume-input-tty', 'presume-input-tty', [CompletionResultType]::ParameterName, 'presume-input-tty')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'rmdir' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'rmdir'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'rmdir' {
            [CompletionResult]::new('--ignore-fail-on-non-empty', 'ignore-fail-on-non-empty', [CompletionResultType]::ParameterName, 'ignore each failure that is solely because a directory is non-empty')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'remove DIRECTORY and its ancestors; e.g.,
                  ''rmdir -p a/b/c'' is similar to rmdir a/b/c a/b a')
            [CompletionResult]::new('--parents', 'parents', [CompletionResultType]::ParameterName, 'remove DIRECTORY and its ancestors; e.g.,
                  ''rmdir -p a/b/c'' is similar to rmdir a/b/c a/b a')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'output a diagnostic for every directory processed')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'output a diagnostic for every directory processed')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'seq' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'seq'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'seq' {
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'Separator character (defaults to \n)')
            [CompletionResult]::new('--separator', 'separator', [CompletionResultType]::ParameterName, 'Separator character (defaults to \n)')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'Terminator character (defaults to \n)')
            [CompletionResult]::new('--terminator', 'terminator', [CompletionResultType]::ParameterName, 'Terminator character (defaults to \n)')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'use printf style floating-point FORMAT')
            [CompletionResult]::new('--format', 'format', [CompletionResultType]::ParameterName, 'use printf style floating-point FORMAT')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'Equalize widths of all numbers by padding with zeros')
            [CompletionResult]::new('--equal-width', 'equal-width', [CompletionResultType]::ParameterName, 'Equalize widths of all numbers by padding with zeros')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sha1sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sha1sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sha1sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sha224sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sha224sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sha224sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sha256sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sha256sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sha256sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sha3-224sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sha3-224sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sha3-224sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sha3-256sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sha3-256sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sha3-256sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sha3-384sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sha3-384sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sha3-384sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sha3-512sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sha3-512sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sha3-512sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sha384sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sha384sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sha384sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sha3sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sha3sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sha3sum' {
            [CompletionResult]::new('--bits', 'bits', [CompletionResultType]::ParameterName, 'set the size of the output (only for SHAKE)')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sha512sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sha512sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sha512sum' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'shake128sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'shake128sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'shake128sum' {
            [CompletionResult]::new('--bits', 'bits', [CompletionResultType]::ParameterName, 'set the size of the output (only for SHAKE)')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'shake256sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'shake256sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'shake256sum' {
            [CompletionResult]::new('--bits', 'bits', [CompletionResultType]::ParameterName, 'set the size of the output (only for SHAKE)')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('--binary', 'binary', [CompletionResultType]::ParameterName, 'read in binary mode (default)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'read hashsums from the FILEs and check them')
            [CompletionResult]::new('--tag', 'tag', [CompletionResultType]::ParameterName, 'create a BSD-style checksum')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('--text', 'text', [CompletionResultType]::ParameterName, 'read in text mode')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'don''t print OK for each successfully verified file')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--status', 'status', [CompletionResultType]::ParameterName, 'don''t output anything, status code shows success')
            [CompletionResult]::new('--strict', 'strict', [CompletionResultType]::ParameterName, 'exit non-zero for improperly formatted checksum lines')
            [CompletionResult]::new('--ignore-missing', 'ignore-missing', [CompletionResultType]::ParameterName, 'don''t fail or report status for missing files')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('--warn', 'warn', [CompletionResultType]::ParameterName, 'warn about improperly formatted checksum lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'end each output line with NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'shred' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'shred'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'shred' {
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'overwrite N times instead of the default (3)')
            [CompletionResult]::new('--iterations', 'iterations', [CompletionResultType]::ParameterName, 'overwrite N times instead of the default (3)')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'shred this many bytes (suffixes like K, M, G accepted)')
            [CompletionResult]::new('--size', 'size', [CompletionResultType]::ParameterName, 'shred this many bytes (suffixes like K, M, G accepted)')
            [CompletionResult]::new('--remove', 'remove', [CompletionResultType]::ParameterName, 'like -u but give control on HOW to delete;  See below')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'change permissions to allow writing if necessary')
            [CompletionResult]::new('--force', 'force', [CompletionResultType]::ParameterName, 'change permissions to allow writing if necessary')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'deallocate and remove file after overwriting')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'show progress')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'show progress')
            [CompletionResult]::new('-x', 'x', [CompletionResultType]::ParameterName, 'do not round file sizes up to the next full block;
this is the default for non-regular files')
            [CompletionResult]::new('--exact', 'exact', [CompletionResultType]::ParameterName, 'do not round file sizes up to the next full block;
this is the default for non-regular files')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'add a final overwrite with zeros to hide shredding')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'add a final overwrite with zeros to hide shredding')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'shuf' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'shuf'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'shuf' {
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'treat each number LO through HI as an input line')
            [CompletionResult]::new('--input-range', 'input-range', [CompletionResultType]::ParameterName, 'treat each number LO through HI as an input line')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'output at most COUNT lines')
            [CompletionResult]::new('--head-count', 'head-count', [CompletionResultType]::ParameterName, 'output at most COUNT lines')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'write result to FILE instead of standard output')
            [CompletionResult]::new('--output', 'output', [CompletionResultType]::ParameterName, 'write result to FILE instead of standard output')
            [CompletionResult]::new('--random-source', 'random-source', [CompletionResultType]::ParameterName, 'get random bytes from FILE')
            [CompletionResult]::new('-e', 'e', [CompletionResultType]::ParameterName, 'treat each ARG as an input line')
            [CompletionResult]::new('--echo', 'echo', [CompletionResultType]::ParameterName, 'treat each ARG as an input line')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'output lines can be repeated')
            [CompletionResult]::new('--repeat', 'repeat', [CompletionResultType]::ParameterName, 'output lines can be repeated')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('--zero-terminated', 'zero-terminated', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sleep' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sleep'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sleep' {
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sort' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sort'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sort' {
            [CompletionResult]::new('--sort', 'sort', [CompletionResultType]::ParameterName, 'sort')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'check for sorted input; do not sort')
            [CompletionResult]::new('--check', 'check', [CompletionResultType]::ParameterName, 'check for sorted input; do not sort')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'write output to FILENAME instead of stdout')
            [CompletionResult]::new('--output', 'output', [CompletionResultType]::ParameterName, 'write output to FILENAME instead of stdout')
            [CompletionResult]::new('-k', 'k', [CompletionResultType]::ParameterName, 'sort by a key')
            [CompletionResult]::new('--key', 'key', [CompletionResultType]::ParameterName, 'sort by a key')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'custom separator for -k')
            [CompletionResult]::new('--field-separator', 'field-separator', [CompletionResultType]::ParameterName, 'custom separator for -k')
            [CompletionResult]::new('--parallel', 'parallel', [CompletionResultType]::ParameterName, 'change the number of threads running concurrently to NUM_THREADS')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'sets the maximum SIZE of each segment in number of sorted items')
            [CompletionResult]::new('--buffer-size', 'buffer-size', [CompletionResultType]::ParameterName, 'sets the maximum SIZE of each segment in number of sorted items')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'use DIR for temporaries, not $TMPDIR or /tmp')
            [CompletionResult]::new('--temporary-directory', 'temporary-directory', [CompletionResultType]::ParameterName, 'use DIR for temporaries, not $TMPDIR or /tmp')
            [CompletionResult]::new('--compress-program', 'compress-program', [CompletionResultType]::ParameterName, 'compress temporary files with PROG, decompress with PROG -d; PROG has to take input from stdin and output to stdout')
            [CompletionResult]::new('--batch-size', 'batch-size', [CompletionResultType]::ParameterName, 'Merge at most N_MERGE inputs at once.')
            [CompletionResult]::new('--files0-from', 'files0-from', [CompletionResultType]::ParameterName, 'read input from the files specified by NUL-terminated NUL_FILES')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information.')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version information.')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'compare according to human readable sizes, eg 1M > 100k')
            [CompletionResult]::new('--human-numeric-sort', 'human-numeric-sort', [CompletionResultType]::ParameterName, 'compare according to human readable sizes, eg 1M > 100k')
            [CompletionResult]::new('-M', 'M ', [CompletionResultType]::ParameterName, 'compare according to month name abbreviation')
            [CompletionResult]::new('--month-sort', 'month-sort', [CompletionResultType]::ParameterName, 'compare according to month name abbreviation')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'compare according to string numerical value')
            [CompletionResult]::new('--numeric-sort', 'numeric-sort', [CompletionResultType]::ParameterName, 'compare according to string numerical value')
            [CompletionResult]::new('-g', 'g', [CompletionResultType]::ParameterName, 'compare according to string general numerical value')
            [CompletionResult]::new('--general-numeric-sort', 'general-numeric-sort', [CompletionResultType]::ParameterName, 'compare according to string general numerical value')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Sort by SemVer version number, eg 1.12.2 > 1.1.2')
            [CompletionResult]::new('--version-sort', 'version-sort', [CompletionResultType]::ParameterName, 'Sort by SemVer version number, eg 1.12.2 > 1.1.2')
            [CompletionResult]::new('-R', 'R ', [CompletionResultType]::ParameterName, 'shuffle in random order')
            [CompletionResult]::new('--random-sort', 'random-sort', [CompletionResultType]::ParameterName, 'shuffle in random order')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'consider only blanks and alphanumeric characters')
            [CompletionResult]::new('--dictionary-order', 'dictionary-order', [CompletionResultType]::ParameterName, 'consider only blanks and alphanumeric characters')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'merge already sorted files; do not sort')
            [CompletionResult]::new('--merge', 'merge', [CompletionResultType]::ParameterName, 'merge already sorted files; do not sort')
            [CompletionResult]::new('-C', 'C ', [CompletionResultType]::ParameterName, 'exit successfully if the given file is already sorted, and exit with status 1 otherwise.')
            [CompletionResult]::new('--check-silent', 'check-silent', [CompletionResultType]::ParameterName, 'exit successfully if the given file is already sorted, and exit with status 1 otherwise.')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'fold lower case to upper case characters')
            [CompletionResult]::new('--ignore-case', 'ignore-case', [CompletionResultType]::ParameterName, 'fold lower case to upper case characters')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'ignore nonprinting characters')
            [CompletionResult]::new('--ignore-nonprinting', 'ignore-nonprinting', [CompletionResultType]::ParameterName, 'ignore nonprinting characters')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'ignore leading blanks when finding sort keys in each line')
            [CompletionResult]::new('--ignore-leading-blanks', 'ignore-leading-blanks', [CompletionResultType]::ParameterName, 'ignore leading blanks when finding sort keys in each line')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'reverse the output')
            [CompletionResult]::new('--reverse', 'reverse', [CompletionResultType]::ParameterName, 'reverse the output')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'stabilize sort by disabling last-resort comparison')
            [CompletionResult]::new('--stable', 'stable', [CompletionResultType]::ParameterName, 'stabilize sort by disabling last-resort comparison')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'output only the first of an equal run')
            [CompletionResult]::new('--unique', 'unique', [CompletionResultType]::ParameterName, 'output only the first of an equal run')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('--zero-terminated', 'zero-terminated', [CompletionResultType]::ParameterName, 'line delimiter is NUL, not newline')
            [CompletionResult]::new('--debug', 'debug', [CompletionResultType]::ParameterName, 'underline the parts of the line that are actually used for sorting')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'split' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'split'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'split' {
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'put SIZE bytes per output file')
            [CompletionResult]::new('--bytes', 'bytes', [CompletionResultType]::ParameterName, 'put SIZE bytes per output file')
            [CompletionResult]::new('-C', 'C ', [CompletionResultType]::ParameterName, 'put at most SIZE bytes of lines per output file')
            [CompletionResult]::new('--line-bytes', 'line-bytes', [CompletionResultType]::ParameterName, 'put at most SIZE bytes of lines per output file')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'put NUMBER lines/records per output file')
            [CompletionResult]::new('--lines', 'lines', [CompletionResultType]::ParameterName, 'put NUMBER lines/records per output file')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'generate CHUNKS output files; see explanation below')
            [CompletionResult]::new('--number', 'number', [CompletionResultType]::ParameterName, 'generate CHUNKS output files; see explanation below')
            [CompletionResult]::new('--additional-suffix', 'additional-suffix', [CompletionResultType]::ParameterName, 'additional SUFFIX to append to output file names')
            [CompletionResult]::new('--filter', 'filter', [CompletionResultType]::ParameterName, 'write to shell COMMAND; file name is $FILE (Currently not implemented for Windows)')
            [CompletionResult]::new('--numeric-suffixes', 'numeric-suffixes', [CompletionResultType]::ParameterName, 'same as -d, but allow setting the start value')
            [CompletionResult]::new('--hex-suffixes', 'hex-suffixes', [CompletionResultType]::ParameterName, 'same as -x, but allow setting the start value')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'generate suffixes of length N (default 2)')
            [CompletionResult]::new('--suffix-length', 'suffix-length', [CompletionResultType]::ParameterName, 'generate suffixes of length N (default 2)')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'use SEP instead of newline as the record separator; ''\0'' (zero) specifies the NUL character')
            [CompletionResult]::new('--separator', 'separator', [CompletionResultType]::ParameterName, 'use SEP instead of newline as the record separator; ''\0'' (zero) specifies the NUL character')
            [CompletionResult]::new('--io-blksize', 'io-blksize', [CompletionResultType]::ParameterName, 'io-blksize')
            [CompletionResult]::new('-e', 'e', [CompletionResultType]::ParameterName, 'do not generate empty output files with ''-n''')
            [CompletionResult]::new('--elide-empty-files', 'elide-empty-files', [CompletionResultType]::ParameterName, 'do not generate empty output files with ''-n''')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'use numeric suffixes starting at 0, not alphabetic')
            [CompletionResult]::new('-x', 'x', [CompletionResultType]::ParameterName, 'use hex suffixes starting at 0, not alphabetic')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'print a diagnostic just before each output file is opened')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'sum' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'sum'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'sum' {
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'use the BSD sum algorithm, use 1K blocks (default)')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'use System V sum algorithm, use 512 bytes blocks')
            [CompletionResult]::new('--sysv', 'sysv', [CompletionResultType]::ParameterName, 'use System V sum algorithm, use 512 bytes blocks')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'tac' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'tac'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'tac' {
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'use STRING as the separator instead of newline')
            [CompletionResult]::new('--separator', 'separator', [CompletionResultType]::ParameterName, 'use STRING as the separator instead of newline')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'attach the separator before instead of after')
            [CompletionResult]::new('--before', 'before', [CompletionResultType]::ParameterName, 'attach the separator before instead of after')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'interpret the sequence as a regular expression')
            [CompletionResult]::new('--regex', 'regex', [CompletionResultType]::ParameterName, 'interpret the sequence as a regular expression')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'tail' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'tail'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'tail' {
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'Number of bytes to print')
            [CompletionResult]::new('--bytes', 'bytes', [CompletionResultType]::ParameterName, 'Number of bytes to print')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'Print the file as it grows')
            [CompletionResult]::new('--follow', 'follow', [CompletionResultType]::ParameterName, 'Print the file as it grows')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, 'Number of lines to print')
            [CompletionResult]::new('--lines', 'lines', [CompletionResultType]::ParameterName, 'Number of lines to print')
            [CompletionResult]::new('--pid', 'pid', [CompletionResultType]::ParameterName, 'With -f, terminate after process ID, PID dies')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'Number of seconds to sleep between polling the file when running with -f')
            [CompletionResult]::new('--sleep-interval', 'sleep-interval', [CompletionResultType]::ParameterName, 'Number of seconds to sleep between polling the file when running with -f')
            [CompletionResult]::new('--max-unchanged-stats', 'max-unchanged-stats', [CompletionResultType]::ParameterName, 'Reopen a FILE which has not changed size after N (default 5) iterations to see if it has been unlinked or renamed (this is the usual case of rotated log files); This option is meaningful only when polling (i.e., with --use-polling) and when --follow=name')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'Never output headers giving file names')
            [CompletionResult]::new('--quiet', 'quiet', [CompletionResultType]::ParameterName, 'Never output headers giving file names')
            [CompletionResult]::new('--silent', 'silent', [CompletionResultType]::ParameterName, 'Never output headers giving file names')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'Always output headers giving file names')
            [CompletionResult]::new('--verbose', 'verbose', [CompletionResultType]::ParameterName, 'Always output headers giving file names')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'Line delimiter is NUL, not newline')
            [CompletionResult]::new('--zero-terminated', 'zero-terminated', [CompletionResultType]::ParameterName, 'Line delimiter is NUL, not newline')
            [CompletionResult]::new('--use-polling', 'use-polling', [CompletionResultType]::ParameterName, 'Disable ''ReadDirectoryChanges'' support and use polling instead')
            [CompletionResult]::new('--retry', 'retry', [CompletionResultType]::ParameterName, 'Keep trying to open a file if it is inaccessible')
            [CompletionResult]::new('-F', 'F ', [CompletionResultType]::ParameterName, 'Same as --follow=name --retry')
            [CompletionResult]::new('--presume-input-pipe', 'presume-input-pipe', [CompletionResultType]::ParameterName, 'presume-input-pipe')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'tee' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'tee'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'tee' {
            [CompletionResult]::new('--output-error', 'output-error', [CompletionResultType]::ParameterName, 'set write error behavior')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'append to the given FILEs, do not overwrite')
            [CompletionResult]::new('--append', 'append', [CompletionResultType]::ParameterName, 'append to the given FILEs, do not overwrite')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'ignore interrupt signals (ignored on non-Unix platforms)')
            [CompletionResult]::new('--ignore-interrupts', 'ignore-interrupts', [CompletionResultType]::ParameterName, 'ignore interrupt signals (ignored on non-Unix platforms)')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'set write error behavior (ignored on non-Unix platforms)')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'test' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'test'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'test' {
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'touch' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'touch'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'touch' {
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'use [[CC]YY]MMDDhhmm[.ss] instead of the current time')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'parse argument and use it instead of current time')
            [CompletionResult]::new('--date', 'date', [CompletionResultType]::ParameterName, 'parse argument and use it instead of current time')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'use this file''s times instead of the current time')
            [CompletionResult]::new('--reference', 'reference', [CompletionResultType]::ParameterName, 'use this file''s times instead of the current time')
            [CompletionResult]::new('--time', 'time', [CompletionResultType]::ParameterName, 'change only the specified time: "access", "atime", or "use" are equivalent to -a; "modify" or "mtime" are equivalent to -m')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information.')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'change only the access time')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'change only the modification time')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'do not create any files')
            [CompletionResult]::new('--no-create', 'no-create', [CompletionResultType]::ParameterName, 'do not create any files')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'affect each symbolic link instead of any referenced file (only for systems that can change the timestamps of a symlink)')
            [CompletionResult]::new('--no-dereference', 'no-dereference', [CompletionResultType]::ParameterName, 'affect each symbolic link instead of any referenced file (only for systems that can change the timestamps of a symlink)')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'tr' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'tr'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'tr' {
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'use the complement of SET1')
            [CompletionResult]::new('-C', 'C ', [CompletionResultType]::ParameterName, 'use the complement of SET1')
            [CompletionResult]::new('--complement', 'complement', [CompletionResultType]::ParameterName, 'use the complement of SET1')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'delete characters in SET1, do not translate')
            [CompletionResult]::new('--delete', 'delete', [CompletionResultType]::ParameterName, 'delete characters in SET1, do not translate')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'replace each sequence of a repeated character that is listed in the last specified SET, with a single occurrence of that character')
            [CompletionResult]::new('--squeeze-repeats', 'squeeze-repeats', [CompletionResultType]::ParameterName, 'replace each sequence of a repeated character that is listed in the last specified SET, with a single occurrence of that character')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'first truncate SET1 to length of SET2')
            [CompletionResult]::new('--truncate-set1', 'truncate-set1', [CompletionResultType]::ParameterName, 'first truncate SET1 to length of SET2')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'true' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'true'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'true' {
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version information')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'truncate' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'truncate'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'truncate' {
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'base the size of each file on the size of RFILE')
            [CompletionResult]::new('--reference', 'reference', [CompletionResultType]::ParameterName, 'base the size of each file on the size of RFILE')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'set or adjust the size of each file according to SIZE, which is in bytes unless --io-blocks is specified')
            [CompletionResult]::new('--size', 'size', [CompletionResultType]::ParameterName, 'set or adjust the size of each file according to SIZE, which is in bytes unless --io-blocks is specified')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'treat SIZE as the number of I/O blocks of the file rather than bytes (NOT IMPLEMENTED)')
            [CompletionResult]::new('--io-blocks', 'io-blocks', [CompletionResultType]::ParameterName, 'treat SIZE as the number of I/O blocks of the file rather than bytes (NOT IMPLEMENTED)')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'do not create files that do not exist')
            [CompletionResult]::new('--no-create', 'no-create', [CompletionResultType]::ParameterName, 'do not create files that do not exist')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'tsort' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'tsort'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'tsort' {
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'unexpand' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'unexpand'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'unexpand' {
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'use comma separated LIST of tab positions or have tabs N characters apart instead of 8 (enables -a)')
            [CompletionResult]::new('--tabs', 'tabs', [CompletionResultType]::ParameterName, 'use comma separated LIST of tab positions or have tabs N characters apart instead of 8 (enables -a)')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'convert all blanks, instead of just initial blanks')
            [CompletionResult]::new('--all', 'all', [CompletionResultType]::ParameterName, 'convert all blanks, instead of just initial blanks')
            [CompletionResult]::new('--first-only', 'first-only', [CompletionResultType]::ParameterName, 'convert only leading sequences of blanks (overrides -a)')
            [CompletionResult]::new('-U', 'U ', [CompletionResultType]::ParameterName, 'interpret input file as 8-bit ASCII rather than UTF-8')
            [CompletionResult]::new('--no-utf8', 'no-utf8', [CompletionResultType]::ParameterName, 'interpret input file as 8-bit ASCII rather than UTF-8')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'uniq' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'uniq'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'uniq' {
            [CompletionResult]::new('-D', 'D ', [CompletionResultType]::ParameterName, 'print all duplicate lines. Delimiting is done with blank lines. [default: none]')
            [CompletionResult]::new('--all-repeated', 'all-repeated', [CompletionResultType]::ParameterName, 'print all duplicate lines. Delimiting is done with blank lines. [default: none]')
            [CompletionResult]::new('--group', 'group', [CompletionResultType]::ParameterName, 'show all items, separating groups with an empty line. [default: separate]')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'compare no more than N characters in lines')
            [CompletionResult]::new('--check-chars', 'check-chars', [CompletionResultType]::ParameterName, 'compare no more than N characters in lines')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'avoid comparing the first N characters')
            [CompletionResult]::new('--skip-chars', 'skip-chars', [CompletionResultType]::ParameterName, 'avoid comparing the first N characters')
            [CompletionResult]::new('-f', 'f', [CompletionResultType]::ParameterName, 'avoid comparing the first N fields')
            [CompletionResult]::new('--skip-fields', 'skip-fields', [CompletionResultType]::ParameterName, 'avoid comparing the first N fields')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'prefix lines by the number of occurrences')
            [CompletionResult]::new('--count', 'count', [CompletionResultType]::ParameterName, 'prefix lines by the number of occurrences')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'ignore differences in case when comparing')
            [CompletionResult]::new('--ignore-case', 'ignore-case', [CompletionResultType]::ParameterName, 'ignore differences in case when comparing')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'only print duplicate lines')
            [CompletionResult]::new('--repeated', 'repeated', [CompletionResultType]::ParameterName, 'only print duplicate lines')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'only print unique lines')
            [CompletionResult]::new('--unique', 'unique', [CompletionResultType]::ParameterName, 'only print unique lines')
            [CompletionResult]::new('-z', 'z', [CompletionResultType]::ParameterName, 'end lines with 0 byte, not newline')
            [CompletionResult]::new('--zero-terminated', 'zero-terminated', [CompletionResultType]::ParameterName, 'end lines with 0 byte, not newline')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'unlink' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'unlink'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'unlink' {
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'vdir' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'vdir'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'vdir' {
            [CompletionResult]::new('--format', 'format', [CompletionResultType]::ParameterName, 'Set the display format.')
            [CompletionResult]::new('-T', 'T ', [CompletionResultType]::ParameterName, 'Assume tab stops at each COLS instead of 8 (unimplemented)')
            [CompletionResult]::new('--tabsize', 'tabsize', [CompletionResultType]::ParameterName, 'Assume tab stops at each COLS instead of 8 (unimplemented)')
            [CompletionResult]::new('--hyperlink', 'hyperlink', [CompletionResultType]::ParameterName, 'hyperlink file names WHEN')
            [CompletionResult]::new('--quoting-style', 'quoting-style', [CompletionResultType]::ParameterName, 'Set quoting style.')
            [CompletionResult]::new('--time', 'time', [CompletionResultType]::ParameterName, 'Show time in <field>:
	access time (-u): atime, access, use;
	change time (-t): ctime, status.
	birth time: birth, creation;')
            [CompletionResult]::new('--hide', 'hide', [CompletionResultType]::ParameterName, 'do not list implied entries matching shell PATTERN (overridden by -a or -A)')
            [CompletionResult]::new('-I', 'I ', [CompletionResultType]::ParameterName, 'do not list implied entries matching shell PATTERN')
            [CompletionResult]::new('--ignore', 'ignore', [CompletionResultType]::ParameterName, 'do not list implied entries matching shell PATTERN')
            [CompletionResult]::new('--sort', 'sort', [CompletionResultType]::ParameterName, 'Sort by <field>: name, none (-U), time (-t), size (-S), extension (-X) or width')
            [CompletionResult]::new('--block-size', 'block-size', [CompletionResultType]::ParameterName, 'scale sizes by BLOCK_SIZE when printing them')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'Assume that the terminal is COLS columns wide.')
            [CompletionResult]::new('--width', 'width', [CompletionResultType]::ParameterName, 'Assume that the terminal is COLS columns wide.')
            [CompletionResult]::new('--color', 'color', [CompletionResultType]::ParameterName, 'Color output based on file type.')
            [CompletionResult]::new('--indicator-style', 'indicator-style', [CompletionResultType]::ParameterName, 'Append indicator with style WORD to entry names: none (default),  slash (-p), file-type (--file-type), classify (-F)')
            [CompletionResult]::new('-F', 'F ', [CompletionResultType]::ParameterName, 'Append a character to each file name indicating the file type. Also, for regular files that are executable, append ''*''. The file type indicators are ''/'' for directories, ''@'' for symbolic links, ''|'' for FIFOs, ''='' for sockets, ''>'' for doors, and nothing for regular files. when may be omitted, or one of:
	none - Do not classify. This is the default.
	auto - Only classify if standard output is a terminal.
	always - Always classify.
Specifying --classify and no when is equivalent to --classify=always. This will not follow symbolic links listed on the command line unless the --dereference-command-line (-H), --dereference (-L), or --dereference-command-line-symlink-to-dir options are specified.')
            [CompletionResult]::new('--classify', 'classify', [CompletionResultType]::ParameterName, 'Append a character to each file name indicating the file type. Also, for regular files that are executable, append ''*''. The file type indicators are ''/'' for directories, ''@'' for symbolic links, ''|'' for FIFOs, ''='' for sockets, ''>'' for doors, and nothing for regular files. when may be omitted, or one of:
	none - Do not classify. This is the default.
	auto - Only classify if standard output is a terminal.
	always - Always classify.
Specifying --classify and no when is equivalent to --classify=always. This will not follow symbolic links listed on the command line unless the --dereference-command-line (-H), --dereference (-L), or --dereference-command-line-symlink-to-dir options are specified.')
            [CompletionResult]::new('--time-style', 'time-style', [CompletionResultType]::ParameterName, 'time/date format with -l; see TIME_STYLE below')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help information.')
            [CompletionResult]::new('-C', 'C ', [CompletionResultType]::ParameterName, 'Display the files in columns.')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'Display detailed information.')
            [CompletionResult]::new('--long', 'long', [CompletionResultType]::ParameterName, 'Display detailed information.')
            [CompletionResult]::new('-x', 'x', [CompletionResultType]::ParameterName, 'List entries in rows instead of in columns.')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'List entries separated by commas.')
            [CompletionResult]::new('--zero', 'zero', [CompletionResultType]::ParameterName, 'List entries separated by ASCII NUL characters.')
            [CompletionResult]::new('-D', 'D ', [CompletionResultType]::ParameterName, 'generate output designed for Emacs'' dired (Directory Editor) mode')
            [CompletionResult]::new('--dired', 'dired', [CompletionResultType]::ParameterName, 'generate output designed for Emacs'' dired (Directory Editor) mode')
            [CompletionResult]::new('-1', '1', [CompletionResultType]::ParameterName, 'List one file per line.')
            [CompletionResult]::new('-o', 'o', [CompletionResultType]::ParameterName, 'Long format without group information. Identical to --format=long with --no-group.')
            [CompletionResult]::new('-g', 'g', [CompletionResultType]::ParameterName, 'Long format without owner information.')
            [CompletionResult]::new('-n', 'n', [CompletionResultType]::ParameterName, '-l with numeric UIDs and GIDs.')
            [CompletionResult]::new('--numeric-uid-gid', 'numeric-uid-gid', [CompletionResultType]::ParameterName, '-l with numeric UIDs and GIDs.')
            [CompletionResult]::new('-N', 'N ', [CompletionResultType]::ParameterName, 'Use literal quoting style. Equivalent to `--quoting-style=literal`')
            [CompletionResult]::new('--literal', 'literal', [CompletionResultType]::ParameterName, 'Use literal quoting style. Equivalent to `--quoting-style=literal`')
            [CompletionResult]::new('-b', 'b', [CompletionResultType]::ParameterName, 'Use escape quoting style. Equivalent to `--quoting-style=escape`')
            [CompletionResult]::new('--escape', 'escape', [CompletionResultType]::ParameterName, 'Use escape quoting style. Equivalent to `--quoting-style=escape`')
            [CompletionResult]::new('-Q', 'Q ', [CompletionResultType]::ParameterName, 'Use C quoting style. Equivalent to `--quoting-style=c`')
            [CompletionResult]::new('--quote-name', 'quote-name', [CompletionResultType]::ParameterName, 'Use C quoting style. Equivalent to `--quoting-style=c`')
            [CompletionResult]::new('-q', 'q', [CompletionResultType]::ParameterName, 'Replace control characters with ''?'' if they are not escaped.')
            [CompletionResult]::new('--hide-control-chars', 'hide-control-chars', [CompletionResultType]::ParameterName, 'Replace control characters with ''?'' if they are not escaped.')
            [CompletionResult]::new('--show-control-chars', 'show-control-chars', [CompletionResultType]::ParameterName, 'Show control characters ''as is'' if they are not escaped.')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'If the long listing format (e.g., -l, -o) is being used, print the status change time (the ''ctime'' in the inode) instead of the modification time. When explicitly sorting by time (--sort=time or -t) or when not using a long listing format, sort according to the status change time.')
            [CompletionResult]::new('-u', 'u', [CompletionResultType]::ParameterName, 'If the long listing format (e.g., -l, -o) is being used, print the status access time instead of the modification time. When explicitly sorting by time (--sort=time or -t) or when not using a long listing format, sort according to the access time.')
            [CompletionResult]::new('-B', 'B ', [CompletionResultType]::ParameterName, 'Ignore entries which end with ~.')
            [CompletionResult]::new('--ignore-backups', 'ignore-backups', [CompletionResultType]::ParameterName, 'Ignore entries which end with ~.')
            [CompletionResult]::new('-S', 'S ', [CompletionResultType]::ParameterName, 'Sort by file size, largest first.')
            [CompletionResult]::new('-t', 't', [CompletionResultType]::ParameterName, 'Sort by modification time (the ''mtime'' in the inode), newest first.')
            [CompletionResult]::new('-v', 'v', [CompletionResultType]::ParameterName, 'Natural sort of (version) numbers in the filenames.')
            [CompletionResult]::new('-X', 'X ', [CompletionResultType]::ParameterName, 'Sort alphabetically by entry extension.')
            [CompletionResult]::new('-U', 'U ', [CompletionResultType]::ParameterName, 'Do not sort; list the files in whatever order they are stored in the directory.  This is especially useful when listing very large directories, since not doing any sorting can be noticeably faster.')
            [CompletionResult]::new('-L', 'L ', [CompletionResultType]::ParameterName, 'When showing file information for a symbolic link, show information for the file the link references rather than the link itself.')
            [CompletionResult]::new('--dereference', 'dereference', [CompletionResultType]::ParameterName, 'When showing file information for a symbolic link, show information for the file the link references rather than the link itself.')
            [CompletionResult]::new('--dereference-command-line-symlink-to-dir', 'dereference-command-line-symlink-to-dir', [CompletionResultType]::ParameterName, 'Do not follow symlinks except when they link to directories and are given as command line arguments.')
            [CompletionResult]::new('-H', 'H ', [CompletionResultType]::ParameterName, 'Do not follow symlinks except when given as command line arguments.')
            [CompletionResult]::new('--dereference-command-line', 'dereference-command-line', [CompletionResultType]::ParameterName, 'Do not follow symlinks except when given as command line arguments.')
            [CompletionResult]::new('-G', 'G ', [CompletionResultType]::ParameterName, 'Do not show group in long format.')
            [CompletionResult]::new('--no-group', 'no-group', [CompletionResultType]::ParameterName, 'Do not show group in long format.')
            [CompletionResult]::new('--author', 'author', [CompletionResultType]::ParameterName, 'Show author in long format. On the supported platforms, the author always matches the file owner.')
            [CompletionResult]::new('-a', 'a', [CompletionResultType]::ParameterName, 'Do not ignore hidden files (files with names that start with ''.'').')
            [CompletionResult]::new('--all', 'all', [CompletionResultType]::ParameterName, 'Do not ignore hidden files (files with names that start with ''.'').')
            [CompletionResult]::new('-A', 'A ', [CompletionResultType]::ParameterName, 'In a directory, do not ignore all file names that start with ''.'', only ignore ''.'' and ''..''.')
            [CompletionResult]::new('--almost-all', 'almost-all', [CompletionResultType]::ParameterName, 'In a directory, do not ignore all file names that start with ''.'', only ignore ''.'' and ''..''.')
            [CompletionResult]::new('-d', 'd', [CompletionResultType]::ParameterName, 'Only list the names of directories, rather than listing directory contents. This will not follow symbolic links unless one of `--dereference-command-line (-H)`, `--dereference (-L)`, or `--dereference-command-line-symlink-to-dir` is specified.')
            [CompletionResult]::new('--directory', 'directory', [CompletionResultType]::ParameterName, 'Only list the names of directories, rather than listing directory contents. This will not follow symbolic links unless one of `--dereference-command-line (-H)`, `--dereference (-L)`, or `--dereference-command-line-symlink-to-dir` is specified.')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print human readable file sizes (e.g. 1K 234M 56G).')
            [CompletionResult]::new('--human-readable', 'human-readable', [CompletionResultType]::ParameterName, 'Print human readable file sizes (e.g. 1K 234M 56G).')
            [CompletionResult]::new('-k', 'k', [CompletionResultType]::ParameterName, 'default to 1024-byte blocks for file system usage; used only with -s and per directory totals')
            [CompletionResult]::new('--kibibytes', 'kibibytes', [CompletionResultType]::ParameterName, 'default to 1024-byte blocks for file system usage; used only with -s and per directory totals')
            [CompletionResult]::new('--si', 'si', [CompletionResultType]::ParameterName, 'Print human readable file sizes using powers of 1000 instead of 1024.')
            [CompletionResult]::new('-i', 'i', [CompletionResultType]::ParameterName, 'print the index number of each file')
            [CompletionResult]::new('--inode', 'inode', [CompletionResultType]::ParameterName, 'print the index number of each file')
            [CompletionResult]::new('-r', 'r', [CompletionResultType]::ParameterName, 'Reverse whatever the sorting method is e.g., list files in reverse alphabetical order, youngest first, smallest first, or whatever.')
            [CompletionResult]::new('--reverse', 'reverse', [CompletionResultType]::ParameterName, 'Reverse whatever the sorting method is e.g., list files in reverse alphabetical order, youngest first, smallest first, or whatever.')
            [CompletionResult]::new('-R', 'R ', [CompletionResultType]::ParameterName, 'List the contents of all directories recursively.')
            [CompletionResult]::new('--recursive', 'recursive', [CompletionResultType]::ParameterName, 'List the contents of all directories recursively.')
            [CompletionResult]::new('-s', 's', [CompletionResultType]::ParameterName, 'print the allocated size of each file, in blocks')
            [CompletionResult]::new('--size', 'size', [CompletionResultType]::ParameterName, 'print the allocated size of each file, in blocks')
            [CompletionResult]::new('--file-type', 'file-type', [CompletionResultType]::ParameterName, 'Same as --classify, but do not append ''*''')
            [CompletionResult]::new('-p', 'p', [CompletionResultType]::ParameterName, 'Append / indicator to directories.')
            [CompletionResult]::new('--full-time', 'full-time', [CompletionResultType]::ParameterName, 'like -l --time-style=full-iso')
            [CompletionResult]::new('-Z', 'Z ', [CompletionResultType]::ParameterName, 'print any security context of each file (not enabled)')
            [CompletionResult]::new('--context', 'context', [CompletionResultType]::ParameterName, 'print any security context of each file (not enabled)')
            [CompletionResult]::new('--group-directories-first', 'group-directories-first', [CompletionResultType]::ParameterName, 'group directories before files; can be augmented with a --sort option, but any use of --sort=none (-U) disables grouping')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'wc' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'wc'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'wc' {
            [CompletionResult]::new('--files0-from', 'files0-from', [CompletionResultType]::ParameterName, 'read input from the files specified by
  NUL-terminated names in file F;
  If F is - then read names from standard input')
            [CompletionResult]::new('--total', 'total', [CompletionResultType]::ParameterName, 'when to print a line with total counts;
  WHEN can be: auto, always, only, never')
            [CompletionResult]::new('-c', 'c', [CompletionResultType]::ParameterName, 'print the byte counts')
            [CompletionResult]::new('--bytes', 'bytes', [CompletionResultType]::ParameterName, 'print the byte counts')
            [CompletionResult]::new('-m', 'm', [CompletionResultType]::ParameterName, 'print the character counts')
            [CompletionResult]::new('--chars', 'chars', [CompletionResultType]::ParameterName, 'print the character counts')
            [CompletionResult]::new('-l', 'l', [CompletionResultType]::ParameterName, 'print the newline counts')
            [CompletionResult]::new('--lines', 'lines', [CompletionResultType]::ParameterName, 'print the newline counts')
            [CompletionResult]::new('-L', 'L ', [CompletionResultType]::ParameterName, 'print the length of the longest line')
            [CompletionResult]::new('--max-line-length', 'max-line-length', [CompletionResultType]::ParameterName, 'print the length of the longest line')
            [CompletionResult]::new('-w', 'w', [CompletionResultType]::ParameterName, 'print the word counts')
            [CompletionResult]::new('--words', 'words', [CompletionResultType]::ParameterName, 'print the word counts')
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}




Register-ArgumentCompleter -Native -CommandName 'yes' -ScriptBlock {
    param($wordToComplete, $commandAst, $cursorPosition)

    $commandElements = $commandAst.CommandElements
    $command = @(
        'yes'
        for ($i = 1; $i -lt $commandElements.Count; $i++) {
            $element = $commandElements[$i]
            if ($element -isnot [StringConstantExpressionAst] -or
                $element.StringConstantType -ne [StringConstantType]::BareWord -or
                $element.Value.StartsWith('-') -or
                $element.Value -eq $wordToComplete) {
                break
        }
        $element.Value
    }) -join ';'

    $completions = @(switch ($command) {
        'yes' {
            [CompletionResult]::new('-h', 'h', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('--help', 'help', [CompletionResultType]::ParameterName, 'Print help')
            [CompletionResult]::new('-V', 'V ', [CompletionResultType]::ParameterName, 'Print version')
            [CompletionResult]::new('--version', 'version', [CompletionResultType]::ParameterName, 'Print version')
            break
        }
    })

    $completions.Where{ $_.CompletionText -like "$wordToComplete*" } |
        Sort-Object -Property ListItemText
}
