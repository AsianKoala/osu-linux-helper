# osu-linux-helper
osu! helper for linux for new songs &amp; skins.  

Detects any new songs/skins in your downloads directory, and moves them your osu installation directory.  

## Setup
1. Install the p7zip package if not already installed.

#### Arch 
```
yay -S p7zip
```


2. Configure these two variables in the script.
```
$ osudir
$ downloaddir
```

If using a custom skin/song folder, change the following variables
```
$ songdir
$ skindir
```

3. Run
```
./osuhelper.sh
```
