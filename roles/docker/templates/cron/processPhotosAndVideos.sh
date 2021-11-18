DIR="/tmp/cron/processPhotosAndVideos-`date +%s}`"

mkdir -p "$DIR"
cd "$DIR"

git clone https://github.com/dustinjohnson13/photo_and_video_processing.git 2>&1
cd photo_and_video_processing

. ./functions.sh && verifyRequiredSoftwareExists
. ./functions.sh && importPhotosAndVideos
. ./functions.sh && createPar2FilesForMiscVideos
