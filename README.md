# CPU Temperature Monitoring Script

This script monitors the average CPU temperature and sends a desktop notification if it exceeds a specified threshold.

## Installation

1. Clone the repository or copy the script to your local machine:

   ```bash
   git clone https://github.com/MdFakrulIslamTaraque/CPU_temperature_monitoring_script.git
   ```
2. Go tho the directory and make the script executable:
    ```bash
    chmod +x cpu_temp.sh
    ```
## Usage
1. Open the cpu_temp.sh script in a text editor.
2. Modify the `threshold` variable to set your desired temperature threshold.
3. Save the script.

## Dependencies
+ This script requires the following dependencies:

    * `lm-sensors` : A command-line tool used to monitor hardware sensors, including CPU temperature.
    * `notify-send` : A command-line tool used to send desktop notifications.
## Setup
1. Ensure that lm-sensors and notify-send are installed on your system:

    ```bash
    sudo apt-get update
    sudo apt-get install -y lm-sensors libnotify-bin
    ```
2. Configure lm-sensors:

    ```bash
    sudo sensors-detect
    ```
    Follow the prompts and choose the default options unless you have specific preferences or requirements.
3. Add the script to your cron jobs to run it periodically. For example, to run it every minute:
    ```bash
    crontab -e
    ```
    Add the following line to the cron file:
    ```bash
    * * * * * /path/to/cpu_temp.sh >> /path/to/cron.log 2>&1
    ```
    Replace /path/to/cpu_temp.sh with the actual path to the script file and also replace the path of cron.log file where the error logs from cron will be added in append mode.
4. Save and exit the cron file.

## Checking Cron Logs
To check the logs generated by the cron job, you can view the contents of the cron.log file:
    
    cat /path/to/cron.log

This will display any output or error messages produced by the cron job, which can be helpful for troubleshooting and monitoring.

## Notes
+ Make sure to adjust the paths and permissions as necessary.
+ This script assumes that lm-sensors and notify-send are available in your distribution's package repository. If not, install them using the appropriate package manager.

This README provides an overview of the project, instructions for installation, usage, setup, and notes for further customization or troubleshooting. Adjust the content as needed for your specific project and audience.

