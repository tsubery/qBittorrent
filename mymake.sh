#/bin/bash -ex
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build -j$(nproc)
sudo cp ./build/qbittorrent $(which qbittorrent)
sudo setcap 'cap_net_bind_service=+eip' $(which qbittorrent)
sudo setcap -v 'cap_net_bind_service=+eip' $(which qbittorrent)
