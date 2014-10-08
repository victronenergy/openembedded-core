# Update the patch level of bash 4.2
#
# Created: 2014-09-28 to fix 'Shellshock' vulnerabilities

# Make sure the PR gets 'bumped' so that use of this append after the base recipe has
# been built will result in a rebuild.
PRINC := "${@int(PRINC)  1}"

SRC_URI_append = " \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-011;apply=yes;striplevel=0;name=patch011 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-012;apply=yes;striplevel=0;name=patch012 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-013;apply=yes;striplevel=0;name=patch013 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-014;apply=yes;striplevel=0;name=patch014 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-015;apply=yes;striplevel=0;name=patch015 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-016;apply=yes;striplevel=0;name=patch016 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-017;apply=yes;striplevel=0;name=patch017 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-018;apply=yes;striplevel=0;name=patch018 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-019;apply=yes;striplevel=0;name=patch019 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-020;apply=yes;striplevel=0;name=patch020 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-021;apply=yes;striplevel=0;name=patch021 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-022;apply=yes;striplevel=0;name=patch022 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-023;apply=yes;striplevel=0;name=patch023 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-024;apply=yes;striplevel=0;name=patch024 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-025;apply=yes;striplevel=0;name=patch025 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-026;apply=yes;striplevel=0;name=patch026 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-027;apply=yes;striplevel=0;name=patch027 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-028;apply=yes;striplevel=0;name=patch028 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-029;apply=yes;striplevel=0;name=patch029 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-030;apply=yes;striplevel=0;name=patch030 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-031;apply=yes;striplevel=0;name=patch031 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-032;apply=yes;striplevel=0;name=patch032 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-033;apply=yes;striplevel=0;name=patch033 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-034;apply=yes;striplevel=0;name=patch034 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-035;apply=yes;striplevel=0;name=patch035 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-036;apply=yes;striplevel=0;name=patch036 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-037;apply=yes;striplevel=0;name=patch037 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-038;apply=yes;striplevel=0;name=patch038 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-039;apply=yes;striplevel=0;name=patch039 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-040;apply=yes;striplevel=0;name=patch040 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-041;apply=yes;striplevel=0;name=patch041 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-042;apply=yes;striplevel=0;name=patch042 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-043;apply=yes;striplevel=0;name=patch043 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-044;apply=yes;striplevel=0;name=patch044 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-045;apply=yes;striplevel=0;name=patch045 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-046;apply=yes;striplevel=0;name=patch046 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-047;apply=yes;striplevel=0;name=patch047 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-048;apply=yes;striplevel=0;name=patch048 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-049;apply=yes;striplevel=0;name=patch049 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-050;apply=yes;striplevel=0;name=patch050 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-051;apply=yes;striplevel=0;name=patch051 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-052;apply=yes;striplevel=0;name=patch052 \
    ${GNU_MIRROR}/bash/bash-4.2-patches/bash42-053;apply=yes;striplevel=0;name=patch053 \
    "

SRC_URI[patch011.md5sum] = "58deacf3d57cbd75575444ff6a3b0806"
SRC_URI[patch011.sha256sum] = "a491ae359a7ebbd7321aede561728289d71e1fc84777f402766a8afd4d261532"
SRC_URI[patch012.md5sum] = "72d5059820015231483bb7415d09e9db"
SRC_URI[patch012.sha256sum] = "354433f1d2da02f1b9652cd20a5b85bbfb5bc2aaf79c42461ebd929d89b9b7b8"
SRC_URI[patch013.md5sum] = "608336ebe215984ef126e3c29d2d3409"
SRC_URI[patch013.sha256sum] = "3412c5c6cbbce6c88592604aec054d8182ce64410038b5ecea69fc3968cf85ea"
SRC_URI[patch014.md5sum] = "ed19da878e3f630834c62b9d9dcc6fce"
SRC_URI[patch014.sha256sum] = "b5a678e609858532735f94faedb5fabce00dfd6577a4e9ec5eec85fe682c8b33"
SRC_URI[patch015.md5sum] = "2d07daba0b8ca8f876d2aa052ff594b4"
SRC_URI[patch015.sha256sum] = "2d876a8304bdf3d664e87e0a8d73bc4ccc100a9dd8c0d054e8649472d8748a98"
SRC_URI[patch016.md5sum] = "53d246537e1fffd1aaa02ba5c056211c"
SRC_URI[patch016.sha256sum] = "2895ccbcf7fc98da73a8fa3ba7440aaf2bfaef6c0af8bdd3a9c39403cf03e2a6"
SRC_URI[patch017.md5sum] = "304fd129a58fee2d8a34f8b4704db0aa"
SRC_URI[patch017.sha256sum] = "73552444498c761d6073dd67ccfe043b36ef24bb418c266d91d9750884daee7f"
SRC_URI[patch018.md5sum] = "6921a0b4228fe89b6537a5c29f027c89"
SRC_URI[patch018.sha256sum] = "e2a9457172370d454d31b84bbcba758ee6394316dbe755374553b52aadbb494d"
SRC_URI[patch019.md5sum] = "1195d85447f3d048d2c9bcd075fa765c"
SRC_URI[patch019.sha256sum] = "a8b7cd02207656976016d93cab48e073cb5da002ceb27b7a63fc5ea62007eb56"
SRC_URI[patch020.md5sum] = "b09000bba08da6ac753124593850cdf7"
SRC_URI[patch020.sha256sum] = "494773f0d0078cb35372d24caa523b00d8fdbbaed71e41dc14c9e47579da3c6f"
SRC_URI[patch021.md5sum] = "09d3f96a16b881334cfaee0cf320b47e"
SRC_URI[patch021.sha256sum] = "a887a97be226575ecf483be2c76655bd6d1edde1cdfe199c27bd2e6baf32badc"
SRC_URI[patch022.md5sum] = "597bf71a2aac6feb510b7505cdd3d4f7"
SRC_URI[patch022.sha256sum] = "9dcdf69df7f8cd2ba88d18c45a0d8f55fbe4f0e273411179db94dd6198b85c6b"
SRC_URI[patch023.md5sum] = "3fab459b4e09daea529cacad025b13b3"
SRC_URI[patch023.sha256sum] = "5dc11394f1a6c887373c081396efd4f4cc04492696722c57a4811c207965f0bf"
SRC_URI[patch024.md5sum] = "4ad8d11e72afc6090e701073ff034cf4"
SRC_URI[patch024.sha256sum] = "99c826bdd33bee281d0a9191550d62a24d0b256cd41c90afd10abd63a66b99e6"
SRC_URI[patch025.md5sum] = "c7d2493e44490f01dd20bdc8feb0a6a7"
SRC_URI[patch025.sha256sum] = "0db0646fd7a559d5702911192bdd387acbbc61cf3c29a34007c3ec840e275515"
SRC_URI[patch026.md5sum] = "9f19c199dd8d1fa9254eebe738759272"
SRC_URI[patch026.sha256sum] = "e7e90cfaabbce3b4b9c699994e9d9ea4a2f084fd9f37788a80b0b70b47d323d2"
SRC_URI[patch027.md5sum] = "a6ed82daf034587aee2f2581ba5fe829"
SRC_URI[patch027.sha256sum] = "0c1f6b7256fcc17f42c05f9bbb4138f8e8bb67e79c622c3485711b6f37f7ed42"
SRC_URI[patch028.md5sum] = "da9265aa2527fd4a7481baa3e0550287"
SRC_URI[patch028.sha256sum] = "204226de39ba81aaf3dd5a29cd59de052ec9f648538bb9e7f1c8150852b1ed7a"
SRC_URI[patch029.md5sum] = "ec444d229e8899fbaaf6fc7de2d82ae6"
SRC_URI[patch029.sha256sum] = "d0b08c0817bc5acdb28b466727622a8422ca4d61188313cf162443b7f338f581"
SRC_URI[patch030.md5sum] = "b4bc1c4dc1b508ff9cdfc44f1a5039b5"
SRC_URI[patch030.sha256sum] = "12594366591a136d8ccdcb8e218010f2ddab6be28a7f96d0ed32ca927e44afae"
SRC_URI[patch031.md5sum] = "89390ff6a3c2ef7e09dd4b8b097a8e56"
SRC_URI[patch031.sha256sum] = "55f38c4d34775fbb063510c4222b195d998dd86f88288b64a6103e3812f8d9f9"
SRC_URI[patch032.md5sum] = "eee08003395c417f677d1a4bf8c548ee"
SRC_URI[patch032.sha256sum] = "e3a8b563dbb1e5cb7ca85a53515da8b2941213973496d48c4cc5a11c604791ed"
SRC_URI[patch033.md5sum] = "2fe070dd6d75d8ff16f269184a16e9c4"
SRC_URI[patch033.sha256sum] = "f5d12790d69fdfb2f47ac86fa1ea1ecc088880141570273f38dfd3fa4a46434b"
SRC_URI[patch034.md5sum] = "4e610506c1711bf3483b965800ac3d5d"
SRC_URI[patch034.sha256sum] = "01c1f332101389cedf347c7736102966722a3b213900954e5d625bbc2f1e41b8"
SRC_URI[patch035.md5sum] = "7cd9bfdf7cbfd45274d07620ee94c8d9"
SRC_URI[patch035.sha256sum] = "cecde463b038b4849635ff0993d9b264fc92403e7ae0accb52c7877aeaed78df"
SRC_URI[patch036.md5sum] = "9c3142956064d175a880bcb186e51ef9"
SRC_URI[patch036.sha256sum] = "fe293a1bc92ac4d272ae9b9a0de3afef7c06145a2b52337a09cacccc5305aafa"
SRC_URI[patch037.md5sum] = "c10692f447d4966c879f8fb8d7c8ebc9"
SRC_URI[patch037.sha256sum] = "c7578cddd3bb2430689c740f58a03403800726dcd1268b28f91bf37f368e1674"
SRC_URI[patch038.md5sum] = "9ef3c308cde413e95866c1266cfb4e98"
SRC_URI[patch038.sha256sum] = "b8c9a81bdf206be58ba491dfad80373b3348af769e80aaf72f7611ddbbbe6d57"
SRC_URI[patch039.md5sum] = "cd48f57a404498d4e5c73a3501c4b1a5"
SRC_URI[patch039.sha256sum] = "f4f9300a60321a5088ae9e54052a64c4d3e876f9a3a17ca104d58fa38b9c1791"
SRC_URI[patch040.md5sum] = "00a2371b6c05acbfce6bc850c6d982f8"
SRC_URI[patch040.sha256sum] = "b265f9caf3c7321f95bc8e0b9e2c46bd86c226f00f05e823699aafb83c4aaa6c"
SRC_URI[patch041.md5sum] = "7bc4942a66ca4024ee964db7ede07896"
SRC_URI[patch041.sha256sum] = "05cc1951bd9f6624088dd6067486ff47f1825e333273d7df5f1b06b23baaf5eb"
SRC_URI[patch042.md5sum] = "1cf7701017ebfc8e129de92c8f8b798c"
SRC_URI[patch042.sha256sum] = "faaa5c1f456517b258b2a65eaa664dd6a01eeff73c8ca4447c3a6de371bbf304"
SRC_URI[patch043.md5sum] = "9e61168fca692d8d1a733c389a63712e"
SRC_URI[patch043.sha256sum] = "dc2683840f3e890a9c5f85338366ff6cd923285e558eb46aa818a03fa67c5c57"
SRC_URI[patch044.md5sum] = "b4b11d64b45ea9ec50dcc74c6c3861f6"
SRC_URI[patch044.sha256sum] = "10d32d6c9ccdedb1d826f46468631d475f9dcf983fac087766e16df7b99766e6"
SRC_URI[patch045.md5sum] = "1661bcc83c4715f54368877452ff2247"
SRC_URI[patch045.sha256sum] = "ddb7eff0f59d394a483b09feec3771d9026f81ba90afac32846a19b172b2986d"
SRC_URI[patch046.md5sum] = "1b68157ac0f7140e1ceafbbad4a14fee"
SRC_URI[patch046.sha256sum] = "95c1323b68c0ecc0ca09565ef2d5218625ced3957b702e04c8bcaad9e7b3816d"
SRC_URI[patch047.md5sum] = "10fbe341bd6b5dd1e94c2384f24e98b4"
SRC_URI[patch047.sha256sum] = "c1979201d0345011c419a1c82407cd2a00c60a0c75b7f07e145d17f3718daf7a"
SRC_URI[patch048.md5sum] = "87c31c1ace423d3ce8d1e26ba13bc724"
SRC_URI[patch048.sha256sum] = "751a5d2330b21ac9aba7323acbbc91c948285f30a4bb41f56796f9a36b983d24"
SRC_URI[patch049.md5sum] = "07083eeb372bd8215050a8146acc1efd"
SRC_URI[patch049.sha256sum] = "901cd74cdd9f3e9bb5cc907d563e3d4dcdf9d5f6a751e85b706a958f51bc510e"
SRC_URI[patch050.md5sum] = "d7b28ed8e839463f4554d67afb4f15e9"
SRC_URI[patch050.sha256sum] = "1a19b84455e83b46fcaa27759a5dd643dde2e11ceacd1e84e351970ea04d8ba6"
SRC_URI[patch051.md5sum] = "7dfd10542744c75aa1fd9be7109573bb"
SRC_URI[patch051.sha256sum] = "3e15347bc23a116b8ee898acec9d0ac744612ce9bbc0096fff47c4cf1149051c"
SRC_URI[patch052.md5sum] = "9136b4c94fe3d3eddbdbb512cad6d306"
SRC_URI[patch052.sha256sum] = "f098fa7148f76c80ec82c704a1aab6ae246960a7ce05624ecc8844fa1561dc0c"
SRC_URI[patch053.md5sum] = "ca14c1a40098ff586619cabb6ee560ce"
SRC_URI[patch053.sha256sum] = "20e693d7543885c8da78db873782e56206f522d27da2c953103f23b950ffd3de"