from setuptools import setup, find_packages

with open("README.md", "r", encoding="utf-8") as fh:
    long_description = fh.read()

setup(
    name="ai-commit",
    version="0.1.0",
    author="Himanshu Kumar",
    author_email="himanshu231204@gmail.com",
    description="Generate AI-powered git commit messages using local Ollama",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/himanshu231204/ai-commit",
    packages=find_packages(),
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Intended Audience :: Developers",
        "Topic :: Software Development :: Version Control :: Git",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Python :: 3.11",
        "Programming Language :: Python :: 3.12",
    ],
    python_requires=">=3.8",
    install_requires=[
        "requests>=2.28.0",
    ],
    entry_points={
        "console_scripts": [
            "ai-commit=ai_commit:main",
        ],
    },
    keywords="git commit ai ollama llm developer-tools cli",
    project_urls={
        "Bug Reports": "https://github.com/himanshu231204/ai-commit/issues",
        "Source": "https://github.com/himanshu231204/ai-commit",
        "Documentation": "https://github.com/himanshu231204/ai-commit#readme",
    },
)
