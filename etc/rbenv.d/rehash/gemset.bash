shopt -s nullglob
OLDIFS="$IFS"
IFS=$' \t\n'
gemset_bin=(${RBENV_ROOT}/versions/*/gemsets/*/bin/*)
IFS="$OLDIFS"

cd "$SHIM_PATH"
make_shims ${gemset_bin[@]}
cd "$CUR_PATH"
