# Alias Generator

A web-based tool to generate and download custom bash/zsh aliases to boost your terminal productivity. Select from hundreds of carefully crafted aliases organized by category.

## 🚀 Usage

* Visit [alias-generator.mdminhazulhaque.io](https://alias-generator.mdminhazulhaque.io/) and choose which aliases you want to download.
* Click "Download Aliases" to get a `.sh` file with your selected aliases
* Source the file in your shell profile:
  ```bash
  # For bash users
  echo "source /path/to/aliases_*.sh" >> ~/.bashrc
  
  # For zsh users  
  echo "source /path/to/aliases_*.sh" >> ~/.zshrc
  ```
* Reopen your terminal emulator or run `source ~/.bashrc` / `source ~/.zshrc` to load the aliases

## 📁 Adding New Aliases

You can easily contribute new aliases by adding files to the `lib/alias.d/` directory:

### 1. Create a new alias file
Create a new `.alias` file in `lib/alias.d/` with a descriptive name:
```bash
touch lib/alias.d/myCategory.alias
```

### 2. Add your aliases
Each line should contain one alias in the format `alias name='command'`:
```bash
# lib/alias.d/python.alias
alias py='python3'
alias pip='pip3'
alias venv='python3 -m venv'
alias serve='python3 -m http.server'
alias json='python3 -m json.tool'
```

### 3. File format rules
- One alias per line
- Use the format: `alias name='command'`
- Comments start with `#` and are ignored
- Empty lines are ignored
- File must have `.alias` extension

### 4. Example categories
Current categories include:
- `git.alias` - Git shortcuts
- `docker.alias` - Docker commands
- `ls.alias` - File listing variants
- `network.alias` - Network utilities
- And many more...

## 🛠️ Building and Development

### Prerequisites
```bash
pip install flask slugify
```

### Running locally
```bash
# Generate static HTML
python3 app.py > index.html

# Or run as Flask app (uncomment route in app.py)
python3 app.py
```

### Project structure
```
├── app.py              # Flask application
├── lib/
│   ├── alias.py        # Alias loading logic
│   └── alias.d/        # Alias definition files
│       ├── git.alias
│       ├── docker.alias
│       └── ...
├── templates/
│   └── index.html      # Main template
└── output.html         # Generated static file
```

## 🤝 Contributing

We welcome contributions! Here are several ways you can help:

### 1. Add new aliases
- Create new `.alias` files in `lib/alias.d/`
- Follow the format guidelines above
- Submit a pull request

### 2. Report issues
- Found a bug? [Open an issue](https://github.com/mdminhazulhaque/alias-generator/issues)
- Have an idea for improvement? [Create a feature request](https://github.com/mdminhazulhaque/alias-generator/issues)
- Missing aliases for your favorite tool? [Request new categories](https://github.com/mdminhazulhaque/alias-generator/issues)

### 3. Improve the web interface
- Enhance the UI/UX
- Add new features
- Fix responsive design issues
- Improve accessibility

### 4. Documentation
- Improve this README
- Add code comments
- Create usage examples

### Contribution workflow
1. Fork the repository
2. Create a feature branch: `git checkout -b feature/new-aliases`
3. Make your changes and test them
4. Commit your changes: `git commit -m "Add Python development aliases"`
5. Push to your fork: `git push origin feature/new-aliases`
6. Submit a pull request

## 📝 License

This project is open source. Feel free to use, modify, and distribute.

## 🙋‍♂️ Support

- **Issues**: [GitHub Issues](https://github.com/mdminhazulhaque/alias-generator/issues)
- **Discussions**: Use GitHub Issues for questions and discussions
- **Author**: [Md. Minhazul Haque](https://github.com/mdminhazulhaque)