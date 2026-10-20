# Homebrew tap for Seamless Glance

This tap installs [Seamless Glance](https://github.com/fells-code/seamless-glance),
a terminal-native, read-only dashboard for AWS: findings-first triage, account
and cost overviews, and quick pivots into the AWS CLI and console.

## Install

```bash
brew tap fells-code/seamless
brew install seamless-glance
```

Or directly:

```bash
brew install fells-code/seamless/seamless-glance
```

Run it with `glance` (or `seamless-glance`). Upgrade with
`brew upgrade seamless-glance`.

The formula installs the prebuilt binaries published with each
[Seamless Glance release](https://github.com/fells-code/seamless-glance/releases)
for macOS (arm64, x86_64) and Linux (arm64, x86_64). Other install options, the
controls, AWS credential setup and the full feature list are in the
[Seamless Glance README](https://github.com/fells-code/seamless-glance#readme).

## Verifying what you install

- Homebrew checks every download against the SHA-256 pinned in
  [`Formula/seamless-glance.rb`](Formula/seamless-glance.rb) and refuses to
  install a binary that does not match.
- For a manual download, compare the binary's checksum with the
  `SHA256SUMS.txt` attached to the same release on
  https://github.com/fells-code/seamless-glance/releases, for example
  `shasum -a 256 seamless-glance-1.3.0-aarch64-apple-darwin`.

## License

Seamless Glance is free and open source under the
[Apache License, Version 2.0](https://github.com/fells-code/seamless-glance/blob/main/LICENSE).
There is no trial and no license key. This tap is licensed under Apache-2.0 as
well, see [LICENSE](LICENSE).

## Issues

Report bugs and feature requests on
[fells-code/seamless-glance](https://github.com/fells-code/seamless-glance/issues).
Problems with the tap itself can be filed here.
