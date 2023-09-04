#!/usr/bin/env bash
DEFAULT_="44444444"
NAME_="go.apk"
OKE_=$(pwd)
# created by widhisec
 unzip ${NAME_}  -d ${OKE_}/oke

# when(){
# python3 -c '
# import lief
# import sys
# import frida
# native = lief.parse(sys.argv[1])
# native.add_library(sys.argv[2]) # Inject frida library as a dependency in the library
# native.write(sys.argv[1])
# ' "frida_gadgetx86_64.so" "lib"
# }
# when
# cp ok.js.so libgadget.config.so frida_gadgetx86_64.so /mnt/d/project/test/oke/lib/x86_64
#frida_gadgetx86_64.so lib
#  
 cd oke
zip -r $NAME_ *
 keytool -genkey -v -keystore my-release-key.keystore -alias my-key-alias -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=com.android.launcher, OU=ID, O=APK, L=Unknown, S=Unknown, C=XK" -storepass "${DEFAULT_}"
 apksigner sign -ks my-release-key.keystore --ks-key-alias my-key-alias --ks-pass "pass:${DEFAULT_}" ${NAME_}
#  # #> signed.apk
 zipalign -p -f 4 ${NAME_} aligned.apk
# rm -rf *.zip
