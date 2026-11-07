# cargo-bash

A lightweight, **Cargo-inspired package manager and build tool for Bash projects**, entirely driven by a single `bootstrap.sh` script.

## Features

* **Zero-Dependency Bootstrap:** No compilation or complex setups—just run `bootstrap.sh`.
* **Familiar CLI Workflow:** Includes Cargo-like lifecycle commands such as `new`, `build`, `run`, and `test`.
* **Isolated Environment:** Handles project dependencies locally without polluting your system paths.

## Quick Start

Get a new project up and running in seconds:

```bash
# 1. Download the bootstrapper into a new directory
mkdir my-bash-project && cd my-bash-project
curl -sSL https://githubusercontent.com -o bootstrap.sh

# 2. Initialise a new project structure
bash bootstrap.sh new .

# 3. Build and execute your app
bash bootstrap.sh run
```

## Project Structure

Your project layout matches standard conventions:

```text
my-bash-project/
├── bootstrap.sh    # The core runner and manager script
├── App.toml        # Project metadata and configuration
├── src/
│   └── main.sh     # Application entry point
└── tests/
    └── test.sh     # Test scripts
```

## Command Reference

Run these commands using your local bootstrapper script:

* **`bash bootstrap.sh new <path>`** – Scaffolds a new project framework.
* **`bash bootstrap.sh build`** – Compiles, links, or validates source files.
* **`bash bootstrap.sh run`** – Builds and runs the main script entry point.
* **`bash bootstrap.sh test`** – Executes unit or integration tests.

## License

This project is open-source and available under the **MIT License**.
