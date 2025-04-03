# File & Directory Management Script

This project is a Bash script that provides a menu-driven interface for managing files and directories. It includes functions for listing files, creating backups, counting files, checking disk usage, searching for files, and compressing files. The script is modular and imports functions from separate script files.

## Features

- **List Files**: Displays files in the current directory.
- **Backup Files**: Backs up specified files.
- **Count Files**: Counts the number of files in a directory.
- **Disk Usage**: Shows disk space usage.
- **Search Files**: Finds files based on a search term.
- **Compress Files**: Compresses files and directories using `zip`.
- **Script Files**: Save user activities.
- **User-Friendly**: Clears the screen between selections and prompts users to press a key to continue.

## Dependencies

### Linux (Specific Ubuntu, for other distributions might be diffrences.)
1. Open a Terminal.
2. Install required dependencies.
  ```sh
  sudo apt update
  sudo apt install zip unzip -y
  ```

### Windows (Using WSL)
1. Install WSL if not already installed.
  - Open `terminal` or `PowerShell` as Administrator and run.
    ```sh
    wsl --install
    ```
  - Ensure that Ubuntu is the default in WSL on Windows.
    ```sh
    wsl --set-default Ubuntu
    ``` 
  - Restart your computer if neccessary.
  - If have any issue or something, [click this](https://learn.microsoft.com/en-us/windows/wsl/install)
2. Open WSL and install required packages.
  - Open a `terminal` or `PowerShell`
    ```sh
    wsl
    sudo apt update
    sudo apt install zip unzip -y
    ```
  - Exit from WSL: 
    ```sh 
    exit
    ```

### MacOS
1. Open a terminal.
2. Install Homebrew if not already installed.
3. Install required dependencies.
   ```sh
   brew install zip unzip 
   ```
## Installation
After installing the required dependencies, follow these steps to run the project:
1. Clone this repository.
   ```sh
   git clone https://github.com/Nhaaa4/Operating-System-Project.git
   ```
2. Navigate to the project directory.
   ```sh
   cd Operating-System-Project
   ```
3. Open WSL
  ```sh
  wsl
  ```
4. Ensure the script has execute permissions.
   ```sh
   chmod +x ./main.sh ./scripts/*.sh
   ```
5. Run the scripts.
   ```sh
   ./main.sh
   ```

**Note**: If you can not run this project on windows, you should install some packages. Follow below:
```sh
sudo apt update
sudo apt install dos2unix
dos2unix scripts/list_files.sh
dos2unix scripts/backup.sh
dos2unix scripts/count_files.sh
dos2unix scripts/disk_usage.sh
dos2unix scripts/search.sh
dos2unix scripts/compress.sh
dos2unix scripts/logger.sh  
dos2unix main.sh
```

## Usage

- The script presents a menu with numbered options.
- Select an option by entering its number and following the prompts.
- After executing a function, press any key to return to the menu.

## Folder Structure

```
file-management-script/
│-- main.sh             # Main script file
│-- scripts/            # Directory for function scripts
│   │-- list_files.sh   # Function for listing files
│   │-- backup.sh       # Function for backup
│   │-- count_files.sh  # Function for counting files
│   │-- disk_usage.sh   # Function for disk usage
│   │-- search.sh       # Function for searching files
│   │-- compress.sh     # Function for compression
|-- logs/               # Directory for save activities
|   |-- script.log      # Save user log
|-- LICENSE
│-- README.md           # Documentation
```

## Example Output

```
+--------------------------------------------+
|       FILE & DIRECTORY MANAGEMENT          |
+--------------------------------------------+
1. List files
2. Backup files
3. Count files
4. Disk usage
5. Search for files
6. Compress files
7. Exit
Select an option: _
```

## Contributing

If you'd like to contribute, feel free to fork the repository and submit a pull request.
For any inquiries or collaboration, you can contact us at:
- Email: panhasovan51@gmail.com
- Github: [Nhaaa4](https://github.com/Nhaaa4)

## License

This project is licensed under the MIT License.

