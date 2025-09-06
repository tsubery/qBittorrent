#/bin/bash -ex
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build -j$(nproc)
sudo cp ./build/qbittorrent $(which qbittorrent)
sudo ~/bin/boot.sh
