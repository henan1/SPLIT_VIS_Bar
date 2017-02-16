FILE(REMOVE_RECURSE
  "CMakeFiles/glui"
  "CMakeFiles/glui-complete"
  "glui-prefix/src/glui-stamp/glui-install"
  "glui-prefix/src/glui-stamp/glui-mkdir"
  "glui-prefix/src/glui-stamp/glui-download"
  "glui-prefix/src/glui-stamp/glui-update"
  "glui-prefix/src/glui-stamp/glui-patch"
  "glui-prefix/src/glui-stamp/glui-configure"
  "glui-prefix/src/glui-stamp/glui-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/glui.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
