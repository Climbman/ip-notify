ip-notify
=========

This is a simple bash script for helping you to keep track of your server's/PC's
global IP address in situations when having static IP is not an option.

__Requires _curl_ to work__

## How it works and how to use it
This script works by (optionally) requesting a service behind the `url1` for your IP
address and sending it to the `url2` via http POST:
```
./ip-notify.sh "url1" "url2"
```

For example:
```
./ip-notify.sh "http://ipinfo.io/ip" "https://yourcustomendpoint.example.com"
```

The idea is that the service behind the `url2` is available via public hostname
and lets you to view POST requests you've sent to it. For example, https://pipedream.com/.