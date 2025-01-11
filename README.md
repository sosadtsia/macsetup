# macsetup
Helps to setup the macbook with packages and tools.

## Prerequisites

```
brew bundle
```

## Deployment

To set up your development environment, follow these steps:

1. Clone the repository:
    ```bash
    git clone git@github.com:sosadtsia/macsetup.git
    cd macsetup
    ```

2. Install Homebrew dependencies, tools with asdf and vscode:
    ```bash
    task deployment
    ```

3. Uninstall Homebrew dependencies, tools with asdf and vscode:
    ```bash
    task destroy
    ```