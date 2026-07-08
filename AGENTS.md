# AGENTS.md

This file is for coding agents working in the `homebrew-seamless` repository.

## Purpose

`homebrew-seamless` is the Homebrew tap for Seamless Glance, the terminal-native
AWS operations dashboard. It hosts the formula that installs the released
binary on macOS via `brew tap fells-code/seamless && brew install seamless-glance`.

The product source lives in `seamless-glance`, and the release binaries are
published from `seamless-glance-distro`. This tap only points Homebrew at those
releases, so its job is to stay accurately in sync with them.

## Working Standards (fells-code baseline)

These rules apply to every repository in the fells-code org. Repo-specific
guidance may extend them but must not contradict them.

### Attribution
- Commit and open PRs solely under the repository owner's identity. Never
  commit under an agent or assistant identity.
- Never attribute work to an AI assistant: no `Co-Authored-By: Claude` (or any
  assistant) trailers, no "Generated with" / "Created with Claude" notes, and no
  assistant branding or emoji anywhere in commit messages, PR or issue titles
  and descriptions, changesets, code comments, or docs.

### Comments
- Comment only when the code genuinely needs explaining: a non-obvious reason, a
  gotcha, or an invariant. Never narrate what the code plainly does.

### TODOs
- Every `TODO`/`FIXME` must reference a ticket, e.g. `# TODO(#123): ...`.
  Do not leave a bare TODO. If no ticket exists, create one first.

### Commits & branches
- Conventional Commits (`feat:`, `fix:`, `chore:`, `docs:`, `ci:`, `test:`).
- Descriptive branch names (`feat/...`, `fix/...`); never a `claude/` or other
  tool-generated prefix.

### Public-facing text
- No em dashes in commit messages, code comments, PR or issue text, changesets,
  or docs. Use a comma, parentheses, or a separate sentence.

### Before declaring work done
- All checks that apply must pass before you open a PR or call the work done.
  For this tap that means `brew audit --strict --online Formula/*.rb`,
  `brew style Formula/*.rb`, and a real `brew install` of the changed formula.
  Run them and report the real output; do not open a PR while any check is
  failing.
- Match the surrounding code's style, naming, and comment density.

## Layout

```text
Formula/
  seamless-glance.rb   the tap formula (version, per-arch url + sha256, install)
README.md              tap install/usage docs
```

## Releasing a New Version

When Seamless Glance publishes a new release from `seamless-glance-distro`:

1. Bump `version` in `Formula/seamless-glance.rb`.
2. Update each per-architecture `url` to the new release asset.
3. Update each matching `sha256` to the new asset checksum.
4. Run `brew audit`/`brew style` and install the formula locally to confirm it
   resolves and runs.

Keep the tap version, URLs, and checksums exactly aligned with the published
distro release; a mismatch breaks installs for everyone.
