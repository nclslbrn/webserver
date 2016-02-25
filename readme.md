# webserver.sh

<img src="http://nclslbrn.org/github-media/webserver.sh-demo.gif">

For people who are desactivate apache and mysql auto-start (on OS start-up)
Bored to type on terminal one command for launch Apache and an other to start MySql.
It works on Ubuntu but can work on OSX with changing 'apache2' to 'apachectl' and 'mysql' to '/usr/local/mysql/support-files/mysql.server'. You can change / add others service like maridb, grunt, dropboox  
, etc.

### Installation
1. Download the script
2. Apply permission to execute:
  `$ chmod +x /path/to/virtualhost.sh`
3. OPTIONAL : make an shortcut to launch the script as an application.
   An example of shortcut for Elementary OS saved in ~/.local/share/applications/
   Change the path to the script and the icon. Saved it with the name of your choice with .desktop extension and add               permission to it.

  `[Desktop Entry]
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
  `
