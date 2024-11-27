# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	export XDG_CURRENT_DESKTOP=sway
	export QT_QPA_PLATFORM=wayland
  export QT_QPA_PLATFORMTHEME=gtk2
	export CLUTTER_BACKEND=wayland
	export SDL_VIDEODRIVER=wayland

	export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
	export TDESKTOP_DISABLE_GTK_INTEGRATION=1
	
	export _JAVA_AWT_WM_NONREPARENTING=1
	export MOZ_ENABLE_WAYLAND=1
	#export GTK_THEME=Adwaita:dark
	#export gtk-icon-theme-name="Papirus-Dark"


	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

	export ANDROID_HOME=$HOME/Android/Sdk
	export ANDROID_SDK_ROOT=$HOME/Android/Sdk
	export PATH=$PATH:$ANDROID_HOME/tools
	export PATH=$PATH:$ANDROID_HOME/platform-tools
	export PATH=$PATH:/usr/lib/jvm/java-8-openjdk/jre
	export PATH=$PATH:/usr/lib/jvm/java-17-openjdk/bin
	export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/jre
	#exec sway
fi
