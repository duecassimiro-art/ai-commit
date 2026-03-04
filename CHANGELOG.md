# Changelog

All notable changes to AI Commit will be documented in this file.

## [0.1.0] - 2024-03-05

### Added
- Initial release
- AI-powered commit message generation using local Ollama
- Support for multiple commit styles (Conventional, Semantic, Detailed)
- Interactive CLI with colored output
- Multiple Ollama model support
- Cross-platform support (Linux, macOS, Windows)
- Privacy-first local AI processing
- Offline capability

### Features
- Command-line interface
- Beautiful terminal UI
- Error handling and validation
- Git repository validation
- Interactive user prompts

---

## How to Update Version

1. Update version in `setup.py` and `pyproject.toml`
2. Add changes to this CHANGELOG
3. Commit: `git commit -m "chore: bump version to X.Y.Z"`
4. Tag: `git tag -a vX.Y.Z -m "Release vX.Y.Z"`
5. Push: `git push origin main --tags`
6. Build and publish to PyPI
