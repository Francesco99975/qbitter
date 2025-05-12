# Qbitter

**Qbitter** is a cross-platform Flutter application for managing torrent download tasks via the **Qbittal** server. With Qbitter, users can easily connect to a Qbittal server, configure recurring download patterns, and trigger torrent downloads manually or on a scheduled basis.

## Features

- **Cross-Platform**: Available on Linux, Windows, and Android.
- **Server Authentication**: Securely connects to the Qbittal server using the server URL and password.
- **Pattern Management**: Add, edit, and remove download patterns that Qbittal will periodically check and execute.
- **Manual Execution**: Run any defined download pattern instantly, bypassing the scheduled interval.
- **Real-Time Status**: View the status of each pattern and monitor download activities through the Qbittal API.

### Related Projects

Qbitter is built as a companion app to [Qbittal](https://github.com/Francesco99975/qbittal), which serves as the backend for managing and executing torrent download tasks. To get the most out of Qbitter, ensure you have Qbittal set up and running.

---

## Table of Contents

1. [Getting Started](#getting-started)
2. [Installation](#installation)
3. [Configuration](#configuration)
4. [Usage](#usage)
5. [Supported Platforms](#supported-platforms)
6. [License](#license)

---

## Getting Started

These instructions will guide you through setting up and using Qbitter to connect with your Qbittal server and manage torrent download tasks.

## Installation

### Prerequisites

- A running instance of the [Qbittal](https://github.com/Francesco99975/qbittal) server
- Access to the Qbittal server URL and password

### Installing on Android

To install Qbitter on Android, download the APK from the [releases](https://github.com/Francesco99975/qbitter/releases) section on GitHub.

### Installing on Windows

1. Download the latest release from the [releases](https://github.com/Francesco99975/qbitter/releases) section on GitHub.
2. Extract the ZIP file to a desired location.
3. Run the `qbitter.exe` file to start the application.

### Installing on Linux

1. Download the latest release from the [releases](https://github.com/Francesco99975/qbitter/releases) section on GitHub.
2. Install the APPIMAGE to your system.


## Configuration

When you open Qbitter for the first time, you will be prompted to enter your **Qbittal server URL** and **password**. This information is used to securely connect to the Qbittal API.

Example configuration:
- **Server URL**: `http://localhost:8081`
- **Password**: `your_password`

## Usage

### Connecting to Qbittal

1. Open Qbitter and enter the **Server URL** and **Password** to connect.
2. Once connected, you’ll be able to view and manage all patterns configured on the Qbittal server.

### Adding Patterns

1. Click on the "Add Icon Button on the bottom right" button to create a new pattern.
2. Specify the source website (e.g., "The Pirate Bay", "Nyaa", etc.).
3. Specify the desired search pattern (e.g., a series name, a movie title, etc.).
4. Specify the desired features of your torrent (e.g., resolution, quality, etc.).
5. Specify the desired download location on the server that is running qbittorrent.
6. Set the recurrence interval (e.g., daily, weekly) to define how often Qbittal should check for new torrents matching this pattern.
7. Submit the pattern.

### Manual Execution

- To manually trigger a pattern, select it from your list and click "Play Button" on the right of the pattern. This will immediately initiate a search and download for the specified pattern on the Qbittal server.

### Monitoring Status

Qbitter allows you to see the status of each download task. Check the pattern list for indicators showing which tasks are currently scheduled, running, or completed.

## Supported Platforms

Qbitter is currently available on the following platforms:

- **Linux**
- **Windows**
- **Android**

## License

This project is licensed under the BSD 3-Clause License. See the [LICENSE](LICENSE) file for more details.


Enjoy managing your downloads with **Qbitter**!

