# generelt
export EDITOR=nano
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# xdg
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export VSCODE_EXTENSIONS="$XDG_DATA_HOME/vscode"
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages" 
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"

# java
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java -Dawt.useSystemAAFontSettings=gasp"
export JDK_JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=gasp -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
export JAVA_FONTS=/usr/share/fonts/TTF
export JAVA_HOME=/usr/lib/jvm/default

# wine
export WINEPREFIX=$HOME/.wine/wine
export WINEARCH=win64
