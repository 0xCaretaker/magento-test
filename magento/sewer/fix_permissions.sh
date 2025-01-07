#!/bin/bash

# Script to set ownership and permissions for specific Magento directories.

# Exit immediately if a command exits with a non-zero status
set -e

# Define directories to operate on
TARGET_DIRS=(
    "/var/www/html/var/"
    "/var/www/html/generated/"
    "/var/www/html/pub/static/"
    "/var/www/html/pub/media/"
)

# Set ownership to www-data user and group
echo "Changing ownership of target directories..."
chown -R www-data:www-data "${TARGET_DIRS[@]}"

# Set directory permissions to 770
echo "Setting directory permissions to 770..."
find "${TARGET_DIRS[@]}" -type d -exec chmod 770 {} \;

# Set file permissions to 660
echo "Setting file permissions to 660..."
find "${TARGET_DIRS[@]}" -type f -exec chmod 660 {} \;

echo "Permissions and ownership successfully updated!"
