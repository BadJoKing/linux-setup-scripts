# linux-setup-scripts
Made this thing so I wouldn't have to type everything by hand. Made this public because I couldn't be arsed to log into my github every time I install another linux distro. I am not in any way responsible if any of the packages installed by the script(s) in here break your machine. It was your choice trusting a random install script written by a 16-year-old to just know what's right.
Also don't @ me if the code is about as terryble as this pun just now. I know and I have no intention to fix it.
## If you're running...
* ...mint, Pop!_OS or any other Ubuntu based distro you can just use the script from the mint folder. Just remember to set its permissions so that it can be run as administrator
* ...manjaro the setup_manjaro.sh file might work. Might also not, I don't care. 
## Useful setup tipps I eencountered
### for setting up a Canon Printer (Canon i-Sensys mf8050cn in my case) on Endeavouros / Arch / probably Manjaro, too
You'll need to have the following packages:
```
system-config-printer
ufrii-print
cndrvcups-lb-bin # Beware, the installation of this package takes ages, like at least half an hour even on fast systems, because they put it chock-full of test cases for stuff I don't even know how to pronounce
```
So, basically what you have to do is, see if you can see your printer if you go into the software "Configure printers" (the 1st package from above) under "Add new printer" -> "Network Printers" -> the name of the printer in the side bar on the left. You might have to resize your window to fit the whole name, but at the end, in parentheses there should be some ip address. Something along the lines of 192.168.x.x. 
Now the next thing you'll have to do is execute ```sudo cnsetuputil2```, go to "Add", choose your printer, click on "socket" and enter the IP address from before into the field "Hostname or IP-Address". Then click "Register" and you can print now.

PS: About the cndrvcups-lb-bin package. You might or might not actually need this. I haven't tried it without the package yet and I'm not planning to, unless I'm being forced to reinstall linux in the foreseeable future. 
