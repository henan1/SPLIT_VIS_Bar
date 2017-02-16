FILE(REMOVE_RECURSE
  "CMakeFiles/kmlocal"
  "CMakeFiles/kmlocal-complete"
  "kmlocal-prefix/src/kmlocal-stamp/kmlocal-install"
  "kmlocal-prefix/src/kmlocal-stamp/kmlocal-mkdir"
  "kmlocal-prefix/src/kmlocal-stamp/kmlocal-download"
  "kmlocal-prefix/src/kmlocal-stamp/kmlocal-update"
  "kmlocal-prefix/src/kmlocal-stamp/kmlocal-patch"
  "kmlocal-prefix/src/kmlocal-stamp/kmlocal-configure"
  "kmlocal-prefix/src/kmlocal-stamp/kmlocal-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/kmlocal.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
