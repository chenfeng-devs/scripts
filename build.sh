#!/bin/bash

#removals
rm -rf .repo/local_manifests

#sync
repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs --depth=1
git clone https://github.com/chenfeng-devs/local_manifests.git -b lineage .repo/local_manifests
if [ -f /opt/crave/resync.sh ]; then
  /opt/crave/resync.sh
else
  repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
fi


export BUILD_USERNAME=phhgsi
export BUILD_HOSTNAME=crave

#build
. build/envsetup.sh
breakfast chenfeng
mka installclean
mka bacon
