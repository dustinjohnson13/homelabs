COMPLETED_DIR="{{ completed_downloads_dir }}"
TV_DIR="{{ tv_dir }}"
DIR="/tmp/moveTVShows-`date +%s}`"

mkdir -p "$DIR"
cd "$DIR"

git clone https://github.com/dustinjohnson13/moveTVShows.git 2>&1
cd moveTVShows

chmod -R 777 "$COMPLETED_DIR"
./gradlew run -PtvShowDirectory="$TV_DIR" -PcompletedDownloadsDirectory="$COMPLETED_DIR"