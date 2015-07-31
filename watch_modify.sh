watchFile='.*\.py$\|.*\.html$\|.*\.js$'

execlude=".env" 

do_task() {
    echo "do some work!"
}

watchFile(){
    if [ $# -eq 0 ]; then
        echo "Usage: watchFile 'Directory'"
        exit 0
    fi
    if [ ! -d "/tmp/md5" ]; then
        mkdir -p "/tmp/md5"
    fi
    md5Path=/tmp/md5/$(basename $1).md5 
    md5sumPath=/tmp/md5/$(basename $1).md5sum
    find $1 \( -path $1$execlude -o -path $1.git -o -path $1build \) -prune\
        -o -regex "$watchFile" -exec md5sum {} >> $md5Path \; 
    if [ $? -ne 0 ]; then
        echo "erro in md5sum"
    fi
    nowMd5sum="$(md5sum $md5Path)"

    if [ -f $md5sumPath ]; then
        lastMd5sum="$(awk 'END{print}' $md5sumPath)"
    fi

    echo "$nowMd5sum" >> $md5sumPath
    echo "" > $md5Path
    echo "last md5sum:  $lastMd5sum"
    echo "now md5sum:   $nowMd5sum"
    if [ "$lastMd5sum" != "$nowMd5sum" ]; then
        do_task
    fi
    unset lastMd5sum nowMd5sum md5Path md5sumPath
}

monitor(){
    while [ 1 ]
    do 
        watchFile $1
        sleep 2
    done
}

monitor $1
