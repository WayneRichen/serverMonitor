# serverMonitor
Automatic monitoring of website service status.

Automatically restart the service when the service is down.

Support monitoring the following services:
- Elasticsearch
- Nginx
- PHP-fpm
- MariaDB
- Redis

## Usage
Add this script to the crontab.
```
*/1 * * * * /path/to/serverMonitor/serverMonitor.sh
```
