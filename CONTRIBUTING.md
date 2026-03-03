# Contributing to AI Commit

Thank you for your interest in contributing to AI Commit! 🎉

## Ways to Contribute

- 🐛 Report bugs
- 💡 Suggest new features
- 📝 Improve documentation
- 🔧 Submit code changes
- ⭐ Star the repository
- 🌐 Translate documentation

## Getting Started

1. **Fork the repository**
   ```bash
   # Click "Fork" on GitHub, then:
   git clone https://github.com/YOUR_USERNAME/ai-commit.git
   cd ai-commit
   ```

2. **Create a branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make your changes**
   - Write clean, readable code
   - Follow Python PEP 8 style guidelines
   - Add comments where necessary

4. **Test your changes**
   ```bash
   # Make sure the tool works
   python ai_commit.py
   ```

5. **Commit your changes** (use ai-commit if you want! 😄)
   ```bash
   git add .
   git commit -m "feat: add your feature description"
   ```

6. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```

7. **Create a Pull Request**
   - Go to the original repository
   - Click "New Pull Request"
   - Select your fork and branch
   - Describe your changes

## Development Setup

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/ai-commit.git
cd ai-commit

# Install in development mode
pip install -e .

# Install development dependencies
pip install requests pytest flake8 black
```

## Code Style

- Follow PEP 8 guidelines
- Use meaningful variable names
- Add docstrings to functions and classes
- Keep functions focused and small
- Comment complex logic

Example:
```python
def generate_commit_message(diff: str) -> str:
    """
    Generate a commit message from git diff.
    
    Args:
        diff: The git diff string
        
    Returns:
        Generated commit message
    """
    # Your code here
```

## Commit Message Guidelines

Use conventional commit format:

- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation changes
- `style:` - Code style changes (formatting, etc.)
- `refactor:` - Code refactoring
- `test:` - Adding tests
- `chore:` - Maintenance tasks

Examples:
```
feat: add support for custom Ollama models
fix: resolve connection timeout issue
docs: update installation instructions
```

## Reporting Bugs

When reporting bugs, include:

1. **Description** - Clear description of the issue
2. **Steps to Reproduce** - How to reproduce the bug
3. **Expected Behavior** - What should happen
4. **Actual Behavior** - What actually happens
5. **Environment**:
   - OS (Windows/Mac/Linux)
   - Python version
   - Ollama version
   - AI Commit version

Example:
```markdown
**Description**
AI Commit fails to connect to Ollama server

**Steps to Reproduce**
1. Start Ollama with `ollama serve`
2. Run `ai-commit`
3. Error appears

**Expected Behavior**
Should connect to Ollama

**Actual Behavior**
Connection timeout error

**Environment**
- OS: Ubuntu 22.04
- Python: 3.10
- Ollama: 0.1.14
```

## Suggesting Features

When suggesting features:

1. **Clear Title** - Descriptive title
2. **Use Case** - Why is this needed?
3. **Proposed Solution** - How should it work?
4. **Alternatives** - Other solutions considered?

## Pull Request Process

1. **Update documentation** - Update README if needed
2. **Test thoroughly** - Make sure everything works
3. **One feature per PR** - Keep PRs focused
4. **Describe changes** - Explain what and why
5. **Be responsive** - Respond to review comments

## Code Review

All submissions require review. We'll:

- Check code quality
- Test functionality
- Ensure documentation is updated
- Verify no breaking changes

## Community Guidelines

- Be respectful and inclusive
- Help others learn
- Give constructive feedback
- Follow the Code of Conduct

## Questions?

- Open an [Issue](https://github.com/himanshu231204/ai-commit/issues)
- Start a [Discussion](https://github.com/himanshu231204/ai-commit/discussions)
- Email: himanshu231204@gmail.com

## Recognition

Contributors will be:
- Added to README
- Mentioned in release notes
- Given credit in commit messages

Thank you for contributing! 🙏

---

**Made with ❤️ by [Himanshu Kumar](https://github.com/himanshu231204)**
