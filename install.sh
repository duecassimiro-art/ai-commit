#!/bin/bash

# AI Commit - Installation Script
# Author: Himanshu Kumar
# GitHub: https://github.com/himanshu231204/ai-commit

set -e

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Print banner
echo -e "${CYAN}${BOLD}"
echo "╔═══════════════════════════════════════════╗"
echo "║                                           ║"
echo "║      AI Commit - Installation Script     ║"
echo "║         by Himanshu Kumar                 ║"
echo "║                                           ║"
echo "╚═══════════════════════════════════════════╝"
echo -e "${NC}"

# Check if Python is installed
echo -e "${BLUE}Checking Python installation...${NC}"
if ! command -v python3 &> /dev/null; then
    echo -e "${RED}❌ Python 3 is not installed${NC}"
    echo -e "${YELLOW}Please install Python 3.8 or higher from https://www.python.org${NC}"
    exit 1
fi

PYTHON_VERSION=$(python3 --version | awk '{print $2}')
echo -e "${GREEN}✓ Python ${PYTHON_VERSION} found${NC}"

# Check if pip is installed
echo -e "${BLUE}Checking pip installation...${NC}"
if ! command -v pip3 &> /dev/null; then
    echo -e "${RED}❌ pip is not installed${NC}"
    echo -e "${YELLOW}Installing pip...${NC}"
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3 get-pip.py
    rm get-pip.py
fi
echo -e "${GREEN}✓ pip found${NC}"

# Check if git is installed
echo -e "${BLUE}Checking Git installation...${NC}"
if ! command -v git &> /dev/null; then
    echo -e "${RED}❌ Git is not installed${NC}"
    echo -e "${YELLOW}Please install Git from https://git-scm.com${NC}"
    exit 1
fi

GIT_VERSION=$(git --version | awk '{print $3}')
echo -e "${GREEN}✓ Git ${GIT_VERSION} found${NC}"

# Check if Ollama is installed
echo -e "${BLUE}Checking Ollama installation...${NC}"
if ! command -v ollama &> /dev/null; then
    echo -e "${YELLOW}⚠️  Ollama is not installed${NC}"
    echo -e "${CYAN}Would you like to install Ollama now? [y/N]${NC}"
    read -r install_ollama
    
    if [[ "$install_ollama" =~ ^[Yy]$ ]]; then
        echo -e "${BLUE}Installing Ollama...${NC}"
        curl -fsSL https://ollama.ai/install.sh | sh
        echo -e "${GREEN}✓ Ollama installed${NC}"
    else
        echo -e "${YELLOW}⚠️  You'll need to install Ollama manually later${NC}"
        echo -e "${CYAN}Visit: https://ollama.ai${NC}"
    fi
else
    echo -e "${GREEN}✓ Ollama found${NC}"
fi

# Install AI Commit
echo ""
echo -e "${BLUE}Installing AI Commit...${NC}"

# Install dependencies
echo -e "${CYAN}Installing dependencies...${NC}"
pip3 install -r requirements.txt

# Install the package
echo -e "${CYAN}Installing AI Commit...${NC}"
pip3 install -e .

echo -e "${GREEN}✓ AI Commit installed successfully!${NC}"

# Check if Ollama is running
echo ""
echo -e "${BLUE}Checking Ollama server...${NC}"
if curl -s http://localhost:11434/api/tags > /dev/null 2>&1; then
    echo -e "${GREEN}✓ Ollama server is running${NC}"
    
    # List available models
    echo -e "${CYAN}Available models:${NC}"
    curl -s http://localhost:11434/api/tags | python3 -c "import sys, json; models = json.load(sys.stdin).get('models', []); [print(f\"  - {m['name']}\") for m in models]" 2>/dev/null || echo "  (Unable to list models)"
else
    echo -e "${YELLOW}⚠️  Ollama server is not running${NC}"
    echo -e "${CYAN}Would you like to start Ollama and pull a model? [y/N]${NC}"
    read -r start_ollama
    
    if [[ "$start_ollama" =~ ^[Yy]$ ]]; then
        echo -e "${BLUE}Starting Ollama server...${NC}"
        ollama serve > /dev/null 2>&1 &
        sleep 2
        
        echo -e "${BLUE}Pulling llama2 model (this may take a few minutes)...${NC}"
        ollama pull llama2
        echo -e "${GREEN}✓ Model downloaded${NC}"
    else
        echo -e "${YELLOW}⚠️  Remember to start Ollama before using AI Commit:${NC}"
        echo -e "${CYAN}   ollama serve${NC}"
        echo -e "${CYAN}   ollama pull llama2${NC}"
    fi
fi

# Success message
echo ""
echo -e "${GREEN}${BOLD}"
echo "╔═══════════════════════════════════════════╗"
echo "║                                           ║"
echo "║      ✓ Installation Complete!            ║"
echo "║                                           ║"
echo "╚═══════════════════════════════════════════╝"
echo -e "${NC}"

echo -e "${CYAN}Quick Start:${NC}"
echo "  1. Go to a git repository"
echo "  2. Stage some changes: ${YELLOW}git add .${NC}"
echo "  3. Run: ${YELLOW}ai-commit${NC}"
echo ""
echo -e "${CYAN}Documentation:${NC}"
echo "  - GitHub: ${YELLOW}https://github.com/himanshu231204/ai-commit${NC}"
echo "  - README: ${YELLOW}cat README.md${NC}"
echo ""
echo -e "${CYAN}Need help?${NC}"
echo "  - GitHub Issues: https://github.com/himanshu231204/ai-commit/issues"
echo "  - Email: himanshu231204@gmail.com"
echo ""
echo -e "${GREEN}Happy committing! 🚀${NC}"
echo -e "${CYAN}Made with ❤️ by Himanshu Kumar${NC}"
