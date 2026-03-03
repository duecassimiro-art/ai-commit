# AI Commit - Project Documentation

## Overview

AI Commit is a command-line tool that generates intelligent git commit messages using local Ollama AI models. It analyzes your staged changes and creates meaningful commit messages following best practices.

## Author Information

**Himanshu Kumar**
- GitHub: [@himanshu231204](https://github.com/himanshu231204)
- LinkedIn: [himanshu231204](https://www.linkedin.com/in/himanshu231204)
- Twitter/X: [@himanshu231204](https://twitter.com/himanshu231204)
- Email: himanshu231204@gmail.com

## Support the Project

- ⭐ Star the repository
- ☕ [Buy me a coffee](https://www.buymeacoffee.com/himanshu231204)
- 💝 [Sponsor on GitHub](https://github.com/sponsors/himanshu231204)

## Quick Links

- **Repository**: https://github.com/himanshu231204/ai-commit
- **Issues**: https://github.com/himanshu231204/ai-commit/issues
- **Discussions**: https://github.com/himanshu231204/ai-commit/discussions
- **Wiki**: https://github.com/himanshu231204/ai-commit/wiki

## Installation

### Quick Install
```bash
git clone https://github.com/himanshu231204/ai-commit.git
cd ai-commit
bash install.sh
```

### Manual Install
```bash
git clone https://github.com/himanshu231204/ai-commit.git
cd ai-commit
pip install -e .
```

## Usage

```bash
# Stage your changes
git add .

# Generate commit message
ai-commit
```

## Features

- 🤖 AI-powered commit message generation
- 🔒 100% local and private
- 💰 Free (uses local Ollama)
- ⚡ Fast generation
- 🎨 Multiple commit styles
- 🌐 Works offline

## Technical Stack

- **Language**: Python 3.8+
- **Dependencies**: requests
- **AI Backend**: Ollama
- **License**: MIT

## Project Structure

```
ai-commit/
├── ai_commit.py              # Main application
├── setup.py                  # Package configuration
├── requirements.txt          # Dependencies
├── install.sh                # Installation script
├── README.md                 # User documentation
├── CONTRIBUTING.md           # Contribution guidelines
├── LICENSE                   # MIT License
├── .gitignore                # Git ignore rules
└── .github/
    └── workflows/
        └── ci.yml            # GitHub Actions CI
```

## How It Works

1. **Analyze**: Reads git diff of staged changes
2. **Generate**: Sends diff to local Ollama model
3. **Present**: Shows generated commit message
4. **Interactive**: User can accept, regenerate, edit, or cancel
5. **Commit**: Creates git commit with chosen message

## Supported Models

- llama2 (recommended)
- codellama (code-optimized)
- mistral (fast)
- phi (lightweight)
- llama3 (most powerful)
- Any Ollama model

## Commit Message Styles

### Conventional Commits
```
feat(auth): add user login functionality
fix(api): resolve timeout issue
docs(readme): update installation steps
```

### Semantic
```
Add user login functionality
Fix timeout issue in API
Update installation steps in README
```

### Detailed
```
Add user authentication system

- Implement JWT-based authentication
- Add login and logout endpoints
- Create user session management
```

## Development

### Setup Development Environment
```bash
git clone https://github.com/himanshu231204/ai-commit.git
cd ai-commit
pip install -e .
```

### Running Tests
```bash
# Coming soon
pytest tests/
```

### Code Style
- Follow PEP 8
- Use type hints
- Add docstrings
- Write clean, readable code

## Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

### Quick Contribution Guide
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## Roadmap

- [x] Basic commit message generation
- [x] Multiple commit styles
- [x] Interactive CLI
- [ ] Configuration file support
- [ ] Custom prompt templates
- [ ] Git hooks integration
- [ ] VSCode extension
- [ ] Multiple language support
- [ ] Batch commit support
- [ ] Commit history analysis

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Acknowledgments

- **Ollama** - For local LLM runtime
- **Git** - Version control system
- **Python** - Programming language
- **Community** - Contributors and users

## Support

- **Bug Reports**: [GitHub Issues](https://github.com/himanshu231204/ai-commit/issues)
- **Feature Requests**: [GitHub Discussions](https://github.com/himanshu231204/ai-commit/discussions)
- **Email**: himanshu231204@gmail.com

## Statistics

![GitHub stars](https://img.shields.io/github/stars/himanshu231204/ai-commit?style=social)
![GitHub forks](https://img.shields.io/github/forks/himanshu231204/ai-commit?style=social)
![GitHub issues](https://img.shields.io/github/issues/himanshu231204/ai-commit)
![GitHub pull requests](https://img.shields.io/github/issues-pr/himanshu231204/ai-commit)
![Python version](https://img.shields.io/badge/python-3.8+-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

---

**Made with ❤️ by [Himanshu Kumar](https://github.com/himanshu231204)**

If you find this project useful, please consider giving it a ⭐ on GitHub!
