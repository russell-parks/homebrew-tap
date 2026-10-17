# Russell Parks' Homebrew tap

## Codex fork

Prebuilt macOS arm64 packages of [russell-parks/codex](https://github.com/russell-parks/codex), including reusable named worktrees, external account recovery, the SQLite log-sink workaround, and local telemetry.

| Formula | Version |
| --- | --- |
| `codex-fork` | 0.163.0 |
| `codex-fork@0.162` | 0.162.1 |
| `codex-fork@0.163` | 0.163.0 |

Install the default fork build:

```sh
brew tap russell-parks/tap
brew install russell-parks/tap/codex-fork
export PATH="$(brew --prefix russell-parks/tap/codex-fork)/bin:$PATH"
codex --version
```

Add the `export PATH` line to your shell configuration to keep that selection.
All formulae are keg-only, so installation preserves any existing upstream Codex command.

Install and run a specific release:

```sh
brew install russell-parks/tap/codex-fork@0.162
"$(brew --prefix russell-parks/tap/codex-fork@0.162)/bin/codex" --version

brew install russell-parks/tap/codex-fork@0.163
"$(brew --prefix russell-parks/tap/codex-fork@0.163)/bin/codex" --version
```

The versioned formulae can coexist. Their runtime helpers and resources stay together under each formula's `libexec` directory. Each recipe pins a SHA-256 checksum of its fork release archive.

The current archives support Apple Silicon Macs. Release provenance and checksums accompany the assets in the fork repository's GitHub releases.

## Documentation

See `brew help`, `man brew`, or [Homebrew's documentation](https://docs.brew.sh).
