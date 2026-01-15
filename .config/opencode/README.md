# OpenCode Config

## LSP Setup

### Julia

Config contains Julia LSP config.

To make it actually work, need to install LSP globally in a separate environment.

Use this command

```bash
julia -e 'using Pkg; Pkg.activate("@lsp", shared=true); Pkg.add(["LanguageServer", "SymbolServer"])'
```
