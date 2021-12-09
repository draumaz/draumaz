export STEAM_COMPAT_DATA_PATH="$HOME/.steam/steam/steamapps/compatdata/$1" 
export STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/.steam/steam" 
export WINEPREFIX="$HOME/.steam/steam/steamapps/compatdata/$1/pfx"
"$HOME/.steam/root/steamapps/common/Proton - Experimental/proton" run $2 > /tmp/tmp_prorun 2>&1;
rm /tmp/tmp_prorun
