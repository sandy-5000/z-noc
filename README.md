# PowerShell Script: Restrict Execution and Modify Environment Variables

This PowerShell script performs the following tasks:
1. **Restricts execution** to only allow running from the directory where the script is located.
2. **Sets a user-level environment variable (`3DOTS`)** to the script's directory.
3. **Modifies the `PATH` environment variable** to include a subfolder (`cmds`) within the directory set by `3DOTS`, if it is not already present.

## Prerequisites

- **PowerShell**: This script requires PowerShell to be installed on your system.
- **Execution Policy**: By default, PowerShell restricts script execution for security reasons. You may need to change the execution policy to allow the script to run.

## How to Run the Script

### 1. Open PowerShell
- Press `Win + X` and select **Windows PowerShell** (or **Windows Terminal** if PowerShell is your default).
- Alternatively, search for **PowerShell** in the Start menu and open it.

### 2. Download the Repository
```powershell
git clone <repository-url>
cd <repository-name>
```

### 3. Set Execution Policy (If Needed)
By default, PowerShell restricts script execution for security. If you encounter an error when trying to run the script, you may need to change the execution policy.

To allow scripts to run, execute the following command in the PowerShell window **(as Administrator)**:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### 4. Run the `setup.ps1`
```powershell
./setup.ps1
```
