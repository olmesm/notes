# iOS WebKit Debug Proxy

Safari web inspector to debug ionic apps is great, however limited to the network requests it displays.

[iOS WebKit Debug Proxy](https://github.com/google/ios-webkit-debug-proxy) makes it easier to dig in to your ionic app.

1. run `ios_webkit_debug_proxy -f chrome-devtools://devtools/bundled/inspector.html`
1. [http://localhost:9222/](http://localhost:9222/)

## Mac

To install

```bash
brew install ios-webkit-debug-proxy libimobiledevice
ios_webkit_debug_proxy -f chrome-devtools://devtools/bundled/inspector.html
```

## Linux

Supported but untested - check out the github readme.

## Resources

* [How to debug remote iOS device using Chrome devtools.](https://medium.com/@nikoloza/how-to-debug-remote-ios-device-using-chrome-devtools-f44d697003a7#.mfvy49v3d)
* [iOS WebKit Debug Proxy](https://github.com/google/ios-webkit-debug-proxy)
