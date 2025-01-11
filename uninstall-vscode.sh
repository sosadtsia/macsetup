#!/bin/bash

# Step 1: List the installed VS Code extensions and save them to a file
echo "Listing installed VS Code extensions..."
code --list-extensions > extensions.txt

# Step 2: Display the list of installed extensions
echo "Installed extensions:"
cat extensions.txt

# Step 3: Create a script to uninstall each extension
echo "Creating uninstall script..."
cat << 'EOF' > uninstall_extensions.sh
#!/bin/bash
# Loop through each extension listed in extensions.txt and uninstall it
while read extension; do
  echo "Uninstalling $extension..."
  code --uninstall-extension $extension
done < extensions.txt
EOF

# Step 4: Make the uninstall script executable
echo "Making the uninstall script executable..."
chmod +x uninstall_extensions.sh

# Step 5: Run the uninstall script
echo "Running the uninstall script..."
./uninstall_extensions.sh

# Step 6: Uninstall Visual Studio Code
echo "Uninstalling Visual Studio Code..."
sudo rm -rf /Applications/Visual\ Studio\ Code.app

# Step 7: Remove VS Code configuration files
echo "Removing VS Code configuration files..."
rm -rf ~/Library/Application\ Support/Code
rm -rf ~/.vscode

echo "Uninstallation complete."
