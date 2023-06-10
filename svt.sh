#!/bin/bash

# This script installs svtplay-dl on Debian and Ubuntu

# Add the PGP release keys
sudo curl -s https://svtplay-dl.se/release-key.txt --output /usr/share/keyrings/svtplay-dl.txt

# Add the release channel to your APT sources
echo "deb [signed-by=/usr/share/keyrings/svtplay-dl.txt] https://apt.svtplay-dl.se/ svtplay-dl release" | sudo tee /etc/apt/sources.list.d/svtplay-dl.list

# Update and install svtplay-dl
sudo apt update
sudo apt install svtplay-dl

# For postprocessing of video files, also install ffmpeg
sudo apt install ffmpeg
