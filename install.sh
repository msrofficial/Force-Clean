#!/bin/bash

Boost Setup Tool

Author: MD Sakibur Rahman

Website: https://msrsakibur.netlify.app

GitHub: https://github.com/msrofficial

clear

Logo

cat << "EOF"

$$$$$$\                                      
$$  _____|                                     
$$ |    $$$$$$\   $$$$$$\   $$$$$$$\  $$$$$$\  
$$$$$\ $$  __$$\ $$  __$$\ $$  _____|$$  __$$\ 
$$  __|$$ /  $$ |$$ |  \__|$$ /      $$$$$$$$ |
$$ |   $$ |  $$ |$$ |      $$ |      $$   ____|
$$ |   \$$$$$$  |$$ |      \$$$$$$\ \$$$$$$$\ 
\__|    \______/ \__|       \_______|\_______|
                                               
                                               
                                               
 $$$$$$\  $$\                                  
$$  __$$\ $$ |                                 
$$ /  \__|$$ | $$$$$$\   $$$$$$\  $$$$$$$\     
$$ |      $$ |$$  __$$\  \____$$\ $$  __$$\    
$$ |      $$ |$$$$$$$$ | $$$$$$$ |$$ |  $$ |   
$$ |  $$\ $$ |$$   ____|$$  __$$ |$$ |  $$ |   
\$$$$$$  |$$ |\$$$$$$$\ \$$$$$$$ |$$ |  $$ |   
 \______/ \__| \_______| \_______|\__|  \__|   
                                               
                                               
                                               
             MD Sakibur Rahman
EOF

echo -e "\nWelcome to the Boost Tool Setup by MSR"
echo "----------------------------------------"
echo "1. Setup this tool so 'boost' command runs the script"
echo "0. Exit"
echo -n "Enter your choice (1/0): "
read choice

if [ "$choice" = "1" ]; then
  SCRIPT_PATH="$HOME/boost.sh"
  cat << 'SCRIPT' > "$SCRIPT_PATH"
#!/system/bin/sh

# Force-stop all non-critical apps
for pkg in $(pm list packages | cut -f2 -d:); do
  case $pkg in
    com.android.systemui|\
    com.android.phone|\
    com.android.dialer|\
    com.android.settings|\
    com.google.android.gms|\
    com.google.android.gsf|\
    com.android.launcher|\
    com.android.packageinstaller|\
    com.google.android.inputmethod.latin|\
    com.termux)
      echo "Skipping critical app: $pkg"
      ;;
    *)
      am force-stop $pkg
      echo "Force-stopped: $pkg"
      ;;
  esac
done

# Clean cache for all installed apps
for pkg in $(pm list packages | cut -f2 -d:); do
  cache_path="/data/data/$pkg/cache"
  if [ -d "$cache_path" ]; then
    echo "Cleaning: $pkg"
    rm -rf "$cache_path"/* 2>/dev/null
  fi
done

echo "All apps cleaned and force-stopped."
SCRIPT

  chmod +x "$SCRIPT_PATH"

  # Detect shell config
  if [ -n "$ZSH_VERSION" ]; then
    SHELL_RC="$HOME/.zshrc"
  elif [ -n "$BASH_VERSION" ]; then
    SHELL_RC="$HOME/.bashrc"
  else
    SHELL_RC="$HOME/.profile"
  fi

  echo "alias boost='$SCRIPT_PATH'" >> "$SHELL_RC"
  echo "alias added to $SHELL_RC"
  echo "Run 'source $SHELL_RC' or restart Termux to use 'boost' command."
else
  echo "Setup cancelled."
fi

