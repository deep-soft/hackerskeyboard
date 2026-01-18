#!/bin/bash
# del_langs.sh
#pushd hackerskeyboard
del_langs_list="bins/del_langs_list.txt";
langs_folder_base="./app/src/main/res";
if [ -f $del_langs_list ]; then
  langs_list=$(cat $del_langs_list);
  for lang_folder in $langs_list; do
#    rm -rf $langs_folder_base/$lang_folder;
    rm -rvf $langs_folder_base/$lang_folder;
    if [ $? == 0 ]; then
      echo "ok: ["$langs_folder_base/$lang_folder"]";
    else
      echo "fail: ["$langs_folder_base/$lang_folder"]";
    fi
  done
fi
#popd
