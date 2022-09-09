#!/bin/sh
# configure these two !!
osudir=$HOME/games/osu/
downloaddir=$HOME/downloads

songdir=$osudir/Songs
skindir=$osudir/Skins

for file in $downloaddir/*.osz; do
  mv "$file" $songdir
done

for file in $downloaddir/*.osk; do
  filename=$(basename -- "$file")
  no_ext_name="${filename%.*}"
  mkdir ./"$no_ext_name"
  mv ./"$filename" ./"$no_ext_name"
  cd ./"$no_ext_name"
  7z x ./"$filename" > /dev/null 2>&1
  rm ./"$filename"
  cd ..
  mv ./"$no_ext_name" $skindir
done

