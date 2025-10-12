#!/bin/bash
# Revanced build for Instagram only
source ./src/build/utils.sh

# Download requirements
revanced_dl() {
    dl_gh "revanced-patches revanced-cli" "revanced" "latest"
}

revanced_dl

# Patch Instagram:
# Arm64-v8a
get_patches_key "instagram"
get_apkpure "com.instagram.android" "instagram-arm64-v8a" "instagram-android/com.instagram.android" "Bundle"
patch "instagram-arm64-v8a" "revanced"
