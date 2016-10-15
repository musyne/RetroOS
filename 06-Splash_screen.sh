sudo apt-get install fbi

sudo cp asplashscreen to /etc/init.d/
sudo cp splash.jpg to /etc/
sudo chmod +x /etc/init.d/asplashscreen

sudo update-rc.d asplashscreen defaults
