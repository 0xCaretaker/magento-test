service varnish restart
echo 'flushdb' 2>&1 | redis-cli -h 127.0.0.1 -p 6379 -n 1
echo 'flushdb' 2>&1 | redis-cli -h 127.0.0.1 -p 6379 -n 0
php bin/magento c:f
php bin/magento c:c
chown -R www-data:www-data var/ pub/static/ generated/ pub/media/
chmod -R 0777 var/ pub/static/ generated/ pub/media/
