FILE(REMOVE_RECURSE
  "CMakeFiles/LU"
  "CMakeFiles/LU-complete"
  "LU-prefix/src/LU-stamp/LU-install"
  "LU-prefix/src/LU-stamp/LU-mkdir"
  "LU-prefix/src/LU-stamp/LU-download"
  "LU-prefix/src/LU-stamp/LU-update"
  "LU-prefix/src/LU-stamp/LU-patch"
  "LU-prefix/src/LU-stamp/LU-configure"
  "LU-prefix/src/LU-stamp/LU-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/LU.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
