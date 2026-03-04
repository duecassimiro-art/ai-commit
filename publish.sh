#!/bin/bash
# Quick PyPI Publishing Script

set -e

echo "🚀 AI Commit - PyPI Publisher"
echo "=============================="

# Install tools
echo "📦 Installing build tools..."
pip install --upgrade build twine

# Clean
echo "🧹 Cleaning old builds..."
rm -rf build/ dist/ *.egg-info/

# Build
echo "🔨 Building package..."
python3 -m build

# Check
echo "🔍 Checking package..."
twine check dist/*

# Ask where to upload
echo ""
echo "Where to upload?"
echo "1) TestPyPI (test first)"
echo "2) PyPI (production)"
read -p "Choice [1-2]: " choice

if [ "$choice" == "1" ]; then
    echo "📤 Uploading to TestPyPI..."
    twine upload -r testpypi dist/*
    echo "✅ Test with: pip install --index-url https://test.pypi.org/simple/ ai-commit-cli"
elif [ "$choice" == "2" ]; then
    echo "⚠️  Uploading to PRODUCTION PyPI!"
    read -p "Confirm (yes/no): " confirm
    if [ "$confirm" == "yes" ]; then
        twine upload dist/*
        echo "✅ Done! Install with: pip install ai-commit-cli"
    fi
fi
