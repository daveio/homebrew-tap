# Agents Guide for daveio/homebrew-tap

This document provides essential context for AI agents working in this repository.

## Project Overview

This is a **Homebrew Tap** repository containing formula and cask definitions. It allows users to install software using `brew install daveio/tap/<formula>`.

## Code Organization

- **`Casks/`**: Contains Ruby files defining Homebrew Casks (GUI applications).
- **`.github/workflows/`**: CI/CD pipelines (GitHub Actions).
- **`.trunk/`**: Configuration for the [Trunk](https://trunk.io/) meta-linter.
- **`README.md`**: Usage instructions for the tap.

## Essential Commands

### Installation & Usage

- **Install a cask**: `brew install daveio/tap/<cask-name>`
- **Tap the repo**: `brew tap daveio/tap`

### Development & Verification

- **Linting**: This project uses `trunk` to manage linters.
  - Run checks: `trunk check`
  - Format code: `trunk fmt`
- **Linters configured**:
  - `rubocop` (Ruby)
  - `markdownlint` (Markdown)
  - `yamllint` (YAML)
  - `actionlint` (GitHub Actions)
  - `checkov`, `trufflehog` (Security)

## Style & Conventions

### Ruby (Casks)

- **Indentation**: 2 spaces (enforced by `.editorconfig` and `rubocop`).
- **Syntax**: Standard Homebrew Cask DSL.
  - Structure: `cask 'name' do ... end`
  - Required fields: `version`, `sha256`, `url`, `name`, `desc`, `homepage`.
  - Check `Casks/vue-designer.rb` for a representative example.
- **Formatting**: Adhere to `rubocop` rules.

### Configuration Files

- **YAML/JSON**: 2 space indentation usually, but check `.editorconfig` which specifies 2 spaces as default.

## CI/CD Workflows

- **Claude Code Review**: automatically reviews PRs using `anthropics/claude-code-action`.
- **DevSkim**: Performs security analysis on code changes.
- **Trunk**: Likely runs pre-commit or CI checks for linting.

## Gotchas

- **File Naming**: Cask files must match the cask token name (e.g., `vue-designer` -> `vue-designer.rb`).
- **Checksums**: When updating versions, `sha256` checksums must be updated for all supported architectures (`arm` and `intel`).
