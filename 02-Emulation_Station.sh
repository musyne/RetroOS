# Install dependencies for SDL2
sudo apt-get install -y libudev-dev libasound2-dev libdbus-1-dev libraspberrypi0 libraspberrypi-bin libraspberrypi-dev

# Install dependencies for EmulationStation
sudo apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-date-time-dev libboost-locale-dev libfreeimage-dev libfreetype6-dev libeigen3-dev libcurl4-openssl-dev libasound2-dev cmake g++-4.7

# Compile and install SDL2
wget http://libsdl.org/release/SDL2-2.0.1.tar.gz
tar xvfz SDL2-2.0.1.tar.gz
rm SDL2-2.0.1.tar.gz
pushd SDL2-2.0.1
# "--disable-video-opengl" is used to disable the software implementation of desktop OpenGL on the Pi
# "--host=*" is used to force the Raspberry Pi host. See issue #395 on GitHub for details on why.
./configure --disable-video-opengl --host=arm-raspberry-linux-gnueabihf
make
sudo make install
popd
rm -rf SDL2-2.0.1

# Compile and install EmulationStation
git clone https://github.com/RetroPie/EmulationStation
cd EmulationStation
cmake -DCMAKE_CXX_COMPILER=g++-4.7 .
make
sudo make install
