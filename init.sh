# Folders and Samba share
mkdir Joypads Roms

# Kodi
sudo apt-get install kodi

# Stuff
sudo apt-get install -y libudev-dev libasound2-dev libdbus-1-dev libraspberrypi0 libraspberrypi-bin libraspberrypi-dev
sudo apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-date-time-dev libboost-locale-dev libfreeimage-dev libfreetype6-dev libeigen3-dev libcurl4-openssl-dev libasound2-dev cmake g++-4.7

# SDL
wget http://libsdl.org/release/SDL2-2.0.1.tar.gz
tar xvfz SDL2-2.0.1.tar.gz
rm SDL2-2.0.1.tar.gz
pushd SDL2-2.0.1
./configure --disable-video-opengl --host=arm-raspberry-linux-gnueabihf
make
sudo make install
popdrm -rf SDL2-2.0.1

# Emulation Statio
git clone https://github.com/RetroPie/EmulationStation
cd EmulationStation
cmake -DCMAKE_CXX_COMPILER=g++-4.7 .
make
sudo make install

# FBI / Bootscreen

sudo apt-get install fbi
Copy asplashscreen to /etc/init.d/
Copy splash.jpg to /etc/
Chmod+x
sudo update-rc.d asplashscreen defaults
