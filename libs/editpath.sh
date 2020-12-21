#!/bin/sh
# change lib path

install_name_tool -id libFLAC.8.dylib libFLAC.8.dylib
install_name_tool -change /opt/local/lib/libogg.0.dylib @loader_path/libogg.0.dylib libFLAC.8.dylib

install_name_tool -id libogg.0.dylib libogg.0.dylib

install_name_tool -id libsndfile.1.dylib libsndfile.1.dylib
install_name_tool -change /opt/local/lib/libFLAC.8.dylib @loader_path/libFLAC.8.dylib libsndfile.1.dylib
install_name_tool -change /opt/local/lib/libogg.0.dylib @loader_path/libogg.0.dylib libsndfile.1.dylib
install_name_tool -change /opt/local/lib/libvorbis.0.dylib @loader_path/libvorbis.0.dylib libsndfile.1.dylib
install_name_tool -change /opt/local/lib/libvorbisenc.2.dylib @loader_path/libvorbisenc.2.dylib libsndfile.1.dylib

install_name_tool -id libvorbis.0.dylib libvorbis.0.dylib
install_name_tool -change /opt/local/lib/libogg.0.dylib @loader_path/libogg.0.dylib libvorbis.0.dylib

install_name_tool -id libvorbisenc.2.dylib libvorbisenc.2.dylib
install_name_tool -change /opt/local/lib/libvorbis.0.dylib @loader_path/libvorbis.0.dylib libvorbisenc.2.dylib
install_name_tool -change /opt/local/lib/libogg.0.dylib @loader_path/libogg.0.dylib libvorbisenc.2.dylib