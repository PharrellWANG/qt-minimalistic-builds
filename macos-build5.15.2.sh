#!/bin/bash
# download pkg from https://www.qt.io/offline-installers
tar -xzvf qt-everywhere-src-5.15.2.tar.gz
cd ~/Downloads/qt-everywhere-src-5.15.2
prefix_folder=~/Qt/Qt5.15.2
./configure -debug-and-release -opensource \
    -confirm-license -platform macx-clang QMAKE_APPLE_DEVICE_ARCHS="x86_64 x86_64h" \
    -opengl desktop -no-iconv -no-dbus -no-icu \
    -no-fontconfig -no-freetype -qt-harfbuzz \
    -qt-doubleconversion -nomake examples -nomake tests \
    -skip qt3d -skip qtactiveqt -skip qtcanvas3d -skip qtconnectivity \
    -skip qtdatavis3d -skip qtdoc -skip qtgamepad \
    -skip qtgraphicaleffects -skip qtlocation -skip qtnetworkauth \
    -skip qtpurchasing -skip qtquickcontrols -skip qtquickcontrols2 \
    -skip qtremoteobjects -skip qtscxml -skip qtsensors -skip qtserialbus \
    -skip qtserialport -skip qtspeech -skip qtvirtualkeyboard \
    -skip qtwebview -skip qtscript -skip qtwebengine -mp -optimize-size \
    -D "JAS_DLL=0" -static -feature-relocatable -ltcg -prefix $prefix_folder