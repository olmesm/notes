# Wifi issues

I've had issues with my wifi not connecting after coming out of hibernation. I solved my issues as follows.

In your terminal:

```
$ sudo touch /etc/pm/sleep.d/10_resume_wifi
$ sudo chmod +x /etc/pm/sleep.d/10_resume_wifi
$ sudo gedit /etc/pm/sleep.d/10_resume_wifi
```

Paste the following into `10_resume_wifi`

```
#!/bin/sh

case "${1}" in
  resume|thaw)
    nmcli r wifi off && nmcli r wifi on;
esac
```

Save and Exit


### Resources

* [Can't connect to WiFi after suspend](http://askubuntu.com/questions/564556/cant-connect-to-wifi-after-suspend?lq=1)
