#!/usr/bin/env bash
DEFAULT_="44444444"
NAME_="TESTED"
OKE_=$(pwd)
# created by widhisec
zip -r $NAME_ *
unzip $NAME_ -d "${OKE}/oke"
mv "$NAME_.zip" "${NAME_}.apk" 
keytool -genkey -v -keystore my-release-key.keystore -alias my-key-alias -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=com.telkomsel.roli, OU=ID, O=APK, L=Unknown, S=Unknown, C=XK" -storepass "${DEFAULT_}"
apksigner sign -ks my-release-key.keystore --ks-key-alias my-key-alias --ks-pass "pass:${DEFAULT_}" ${NAME_}.apk 
#> signed.apk
zipalign -p -f 4 $NAME_.apk aligned.apk
