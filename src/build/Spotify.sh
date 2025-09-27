#!/bin/bash
# Spotify Anddea
source src/build/utils.sh

# Download
dl_gh "revanced-patches" "anddea" "latest"
dl_gh "revanced-cli" "inotia00" "latest"

# Patch Spotify
get_patches_key "Spotjfy-anddea"
j="i"
get_apkpure "com.spot${j}fy.music" "spotjfy-arm64-v8a" "spot${j}fy-music-and-podcasts-for-android/com.spot${j}fy.music"
patch "spotjfy-arm64-v8a" "anddea"
