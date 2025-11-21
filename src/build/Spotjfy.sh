#!/bin/bash
# Revanced build for Instagram only
source ./src/build/utils.sh

# Download requirements
revanced_dl() {
    dl_gh "revanced-patches revanced-cli" "revanced" "latest"
}


revanced_dl
# Patch Spotjfy Arm64-v8a
j="i"
get_patches_key "Spotjfy-revanced"
get_apkpure "com.spot"$j"fy.music" "spotjfy-arm64-v8a" "spot"$j"fy-music-and-podcasts-for-android/com.spot"$j"fy.music"
patch "spotjfy-arm64-v8a" "revanced"
