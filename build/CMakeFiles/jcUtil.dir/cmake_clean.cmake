FILE(REMOVE_RECURSE
  "CMakeFiles/jcUtil"
  "CMakeFiles/jcUtil-complete"
  "jcUtil-prefix/src/jcUtil-stamp/jcUtil-install"
  "jcUtil-prefix/src/jcUtil-stamp/jcUtil-mkdir"
  "jcUtil-prefix/src/jcUtil-stamp/jcUtil-download"
  "jcUtil-prefix/src/jcUtil-stamp/jcUtil-update"
  "jcUtil-prefix/src/jcUtil-stamp/jcUtil-patch"
  "jcUtil-prefix/src/jcUtil-stamp/jcUtil-configure"
  "jcUtil-prefix/src/jcUtil-stamp/jcUtil-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/jcUtil.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
