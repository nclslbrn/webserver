# webserver.sh

<img src="http://nclslbrn.org/github-media/webserver.sh-demo.gif">
<p>
For people who desactivate apache and mysql auto-start (on OS start-up), bored to type on terminal one command to launch Apache and an other to start MySql and then open browser.
</p>
<p>
This script start services (Apache and mysql) and then launch a browser at http://localhost. It work on Ubuntu but can also work on OSX (el capitan) with changing 'service apache2' to 'apachectl' and 'service mysql' to '/usr/local/mysql/support-files/mysql.server'. You can change / add others service like maridb, dropboox, etc.
</p>

-------

### Installation

1. Download the script `git clone https://github.com/nclslbrn/webserver.git`
2. Apply permission to execute:
  `$ chmod +x /path/to/webserver/webserver.sh`
3. OPTIONAL : make an shortcut to launch the script as an application.
   An example of shortcut for Elementary OS saved in ~/.local/share/applications/
   Change the path to the script and the icon. Saved it with the name of your choice with .desktop extension and add permission to it.
```
  [Desktop Entry]
    Name=lamp
    GenericName=lamp
    X-GNOME-FullName=lamp
    Comment=Open services of your LAMP server
    Exec=gksudo sh /path/to/the/script/webserver/webserver.sh start
    Icon=/usr/share/icons/elementary/mimes/64/application-x-sqlite2.svg
    Terminal=false
    Type=Application
    StartupNotify=true
    Categories=Programing;Development;Electronics
    X-Ayatana-Desktop-Shortcuts=Start;Stop;Restart

  [Start Shortcut Group]
    Name=Start
    Exec=gksudo sh /path/to/the/script/webserver/webserver.sh start
    TargetEnvironment=Unity

  [Stop Shortcut Group]
    Name=Stop
    Exec=gksudo sh /path/to/the/script/webserver/webserver.sh stop
    TargetEnvironment=Unity

  [Restart Shortcut Group]
    Name=Restart
    Exec=gksudo sh /path/to/the/script/webserver/webserver.sh restart
    TargetEnvironment=Unity
```

### Usage
Start :
`sudo sh /path/to/webserver.sh start`

Stop :
`sudo sh /path/to/webserver.sh stop`

Restart :
`sudo sh /path/to/webserver.sh restart`

Browser will open http://localhost only on start command.
### License

Licensed under What the Fuck You Want to Public License
<a href="http://www.wtfpl.net/"><img
       src="http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-4.png"
       width="80" height="15" alt="WTFPL" /></a>
