# Get weather for current location

export MOSCOWLOCATION='55.73550,37.60579'

wetter() {  
    local LOCALE=$(echo ${LANG:-en} | cut -c1-2)
    if [ $# -eq 0 ]; then
        local LOCATION=$(curl -s ipinfo.io/loc)
    else
        local LOCATION=$1
    fi
    curl -s "$LOCALE.wttr.in/$LOCATION"
}

# Create a new directory and enter it
function mk() {
    mkdir -p "$@" && cd "$@"
}

# display $PATH as one directory per line
function path() {
    sed 's/:/\n/g' <<< "$PATH"
}
