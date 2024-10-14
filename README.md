```markdown
# File Navigator Script

This is a simple batch script designed to search for a specified file across multiple drives on a Windows system. The script allows users to choose whether to open the found file or continue searching for other instances.

## Features

- Searches for a specified file in all available drives (C: to Z:).
- Ignores certain system folders to avoid unnecessary searches.
- Prompts the user to open the found file or continue searching.
- Displays informative messages throughout the search process.


```
## Usage
To use this script, follow these steps:

1. **First Step (Very Important)**:
   1. Download this folder or download the code inside it.
   2. Create a folder named `Scripts` under Users (Usually `C:\Users\YourUsername`) [If you downloaded the folder, make sure it goes under `Users\YourUsername`]
   3. Add the path `C:\Users\YourUsername\Scripts` to `Environment variables`
        1. Open the search bar and type `Edit the system environment variables`
        2. Click on `Environment Variables`
        3. SELECT `Path` under `System Variables`, then click `edit`
        4. Create a `new` path: `C:\Users\YourUsername\Scripts` (copy and paste like this)
        5. Press all the ok boxes after this step

2. **Run the Script**:
   Open Command Prompt and navigate to the directory where the script is located. Use the following command:
   ```bash
   nav.bat [filename] or nav [filename]
   ```

   Replace `[filename]` with the name of the file you want to search for. You should include the file extension (e.g., `example.txt`).

## Example

To search for a file named `document.pdf`, you would run:
```bash
nav.bat document.pdf
nav document.pdf
```

## Important Notes

- The script will check all available drives from C: to Z:. Could you make sure that at least one of these drives exists on your system?
You can add folders you don't want to include (to save time searching).
- The following folders are ignored during the search:
  ```bash
  - Program Files
  - Program Files (x86)
  - Windows
  - ProgramData
  - System Volume Information
  - PerfLogs
  ```
To add user-defined folders:
Go to the code and add the desired folder name in the `ignore_folder` defining line.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue.

## Acknowledgments

Thank you for using this script! If you have any questions or suggestions, feel free to reach out.
