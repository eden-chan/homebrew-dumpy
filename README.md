# Dumpy

A quick terminal journaling tool that lets you quickly capture your thoughts using Vim.

## Installation

```bash
brew tap eden-chan/dumpy
brew install dumpy
```

## Usage

Simply run:

```bash
dumpy
```

This will:
1. Open Vim for you to write your thoughts
2. Save your entry to `thoughts.jsonl` upon saving and exiting
3. Each entry includes:
   - Your text
   - Timestamp of when it was saved

All entries are stored in JSONL format (one JSON object per line) for easy processing.

## File Location

Your thoughts are saved to `thoughts.jsonl` in your current directory.

## Requirements

- Vim
- Bun runtime (automatically installed via Homebrew)

## Development

1. Clone the repository
2. Make your changes
3. Test locally:
```bash
brew install --build-from-source Formula/dumpy.rb
```

## License

MIT
