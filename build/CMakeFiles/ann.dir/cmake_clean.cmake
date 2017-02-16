FILE(REMOVE_RECURSE
  "CMakeFiles/ann"
  "CMakeFiles/ann-complete"
  "ann-prefix/src/ann-stamp/ann-install"
  "ann-prefix/src/ann-stamp/ann-mkdir"
  "ann-prefix/src/ann-stamp/ann-download"
  "ann-prefix/src/ann-stamp/ann-update"
  "ann-prefix/src/ann-stamp/ann-patch"
  "ann-prefix/src/ann-stamp/ann-configure"
  "ann-prefix/src/ann-stamp/ann-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ann.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
