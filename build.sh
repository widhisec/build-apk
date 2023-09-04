#!/usr/bin/env bash
DEFAULT_="44444444"
 NAME_="oke.apk"
OKE_=$(pwd)
# created by widhisec
# unzip ${NAME_}  -d ${OKE_}/oke
# zip -r $NAME_ *
# # python3  << BR 
# # import lief
# # native = lief.parse(libpath)
# # native.add_library("libgadget.so")
# # native.write()
# # BR
#  mv oke.zip oke.apk
#  keytool -genkey -v -keystore my-release-key.keystore -alias my-key-alias -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=com.telkomsel.roli, OU=ID, O=APK, L=Unknown, S=Unknown, C=XK" -storepass "${DEFAULT_}"
#  apksigner sign -ks my-release-key.keystore --ks-key-alias my-key-alias --ks-pass "pass:${DEFAULT_}" ${NAME_}
# # #> signed.apk
#  zipalign -p -f 4 ${NAME_} aligned.apk
