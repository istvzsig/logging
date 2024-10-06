# README

## Overview

This script provides a simple logging utility that allows you to log messages with different severity levels to both the terminal and a log file. It uses color codes to differentiate between various types of log messages, making it easier to read and understand the output.

## Features

- **Color-Coded Logging**: Different colors for informational, warning, success, error, and miscellaneous messages.
- **Log Rotation**: Automatically renames the old log file to `log_old.log` when a new log file is created.
- **Timestamped Entries**: Each log entry is timestamped for better tracking of events.
- **Log Directory Management**: Creates a log directory if it doesn't already exist.

## Color Codes

The following color codes are defined for different log levels:

- **Informational Messages**: Blue (`COLOR_INFO`)
- **Warning Messages**: Yellow (`COLOR_WARNING`)
- **Success Messages**: Green (`COLOR_SUCCESS`)
- **Error Messages**: Red (`COLOR_ERROR`)
- **Miscellaneous Messages**: Magenta (`COLOR_MISC`)
- **Debug Messages**: Cyan (`COLOR_DEBUG`)
- **Default Messages**: White (`COLOR_DEFAULT`)
- **No Color**: Reset to default (`NO_COLOR`)

## Usage

To use the logging functions, simply call the appropriate function with your message as an argument. Here are the available logging functions:

- `log_info "Your informational message here"`
- `log_warning "Your warning message here"`
- `log_success "Your success message here"`
- `log_process "Your processing message here"`
- `log_error "Your error message here"`
- `log_api_call "Your API call message here"`

### Example

```bash
log_info "This is an informational message."
log_warning "This is a warning message."
log_success "This is a success message."
log_process "This is a processing message."
log_error "This is an error message."
log_api_call "This is a log API call message."
```

## Log File Location

The log files are stored in the `./log` directory. The log file is named with a timestamp format `log_YYYYMMDD_HHMMSS.log`. The most recent log file will be named `log.log`, and the previous log file will be renamed to `log_old.log`.

## Requirements

- Bash shell
- Basic understanding of shell scripting

## License

This script is open-source and can be modified and distributed under the terms of your choice. Please ensure to give appropriate credit if you use or modify this script.

## Conclusion

This logging utility is a simple yet effective way to manage logs in your shell scripts. By using color-coded messages and automatic log rotation, it enhances the readability and organization of log data.
