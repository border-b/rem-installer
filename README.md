# Rem Installer Script

A simple bash script to automate the installation of [rem](https://github.com/jasonjmcghee/rem) on macOS.

## Overview

This script automates the process of:
- Downloading the rem v0.1.14 disk image
- Mounting the disk image
- Installing rem to your Applications folder
- Cleaning up temporary files
- Launching the application

## Prerequisites

- macOS operating system (sonoma 14.0.1 or later)
- Terminal access
- Administrative privileges (for installing to Applications folder)

## Installation

1. Clone the repository
2. Make the script executable:
```bash
chmod +x script.sh
```
3. Run the script:
```bash
./script.sh
```

## Post-Installation

After installation, you'll need to:
1. Grant Screen Recording permission when prompted
2. Click the brain icon in the menu bar
3. Click "Start Remembering" to begin using rem


## Notes

- This script installs version 0.1.14 of rem
- The application will be installed to your `/Applications` folder
- The script automatically launches rem after installation