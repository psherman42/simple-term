# simple-term
Easy to use CLI based UART terminal program
```
./term.sh /dev/serial0 115200
```

Device might be `/dev/ttyAMA0`, depending on state of `/boot/cmdline.txt`

and if `/boot/config.txt` : `dtoverlay=[pi3-]disable-bt` has been set.

![SimpleTerm](https://user-images.githubusercontent.com/36460742/184531061-d63deebf-061f-41b8-8b69-95e41ea14af5.jpg)
