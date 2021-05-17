#!/bin/sh
cd /home/user/src/
mkdir ~/build && cd ~/build
qmake -r ~/src/other-pro/ultracopier-little.pro ANDROID_EXTRA_LIBS+=$ANDROID_DEV/lib/libcrypto.so ANDROID_EXTRA_LIBS+=$ANDROID_DEV/lib/libssl.so
make -j16
make install INSTALL_ROOT=/home/user/build/dist/
androiddeployqt --input android-libultracopier.so-deployment-settings.json --output dist/ --android-platform 28 --deployment bundled --gradle --release
