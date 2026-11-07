# cargo-bash

A lightweight, **Cargo-inspired package manager and build tool for Bash projects**, entirely driven by a single `bootstrap.sh` script.

## Features

* **Global CLI Availability:** Install it once to your `PATH` and use it across any project directory.
* **Familiar CLI Workflow:** Includes Cargo-like lifecycle commands such as `run` and `new`.
* **Zero-Dependency Setup:** No compilation or heavy language runtimes required—just pure Bash.
* **Isolated Project Management:** Handles project dependencies locally without polluting your system paths.g your system paths.

## Quick Start

Get a new project up and running in seconds:

```bash
# 1. Download the bootstrapper into a new directory
mkdir my-bash-project && cd my-bash-project
curl -sSL https://githubusercontent.com -o bootstrap.sh

# 2. cd into your project folder
cd <Your-project-directory>

# 3. Initialise a new project structure
bash bootstrap.sh -create <your-project-name> .

# 3. Build and execute your app
bash bootstrap.sh -r
```

## Project Structure

Your project layout matches standard conventions:

```text
my-bash-project/
├── Bootstrap.toml        # Project metadata and configuration
├── src/
   └── main.sh     # Application entry point
   └── utils/      # Any other accompaniement scripts go here
```

## Command Reference

Run these commands using your local bootstrapper script:

* **`bash bootstrap.sh new <project-name>`** – Scaffolds a new project framework.
* **`bash bootstrap.sh run`** – Builds and runs the main script entry point.

## License

This project is open-source and available under the **MIT License**.
