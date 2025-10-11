#!/bin/bash
# Spotify Anddea
source src/build/utils.sh

# Download
dl_gh "revanced-patches" "anddea" "latest"
dl_gh "revanced-cli" "inotia00" "latest"

# Patch Spotify
get_patches_key "Spotjfy-anddea"
get_apkpure "com.spotify.music" "spotify-arm64-v8a" "spotify-music-and-podcasts-for-android/com.spotify.music"
patch "spotify-arm64-v8a" "anddea"
