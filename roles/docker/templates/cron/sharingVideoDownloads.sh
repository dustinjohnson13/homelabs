YOUTUBE='https://www.youtube.com'
BASE_DIR='/data/archives/video/sharing'
DOWNLOAD='yt-dlp --extract-audio --audio-format mp3 --ignore-errors --download-archive downloaded.txt'

cd "$BASE_DIR/jocko_podcast" && $DOWNLOAD "$YOUTUBE/channel/UCkqcY4CAuBFNFho6JgygCnA/videos"
cd "$BASE_DIR/JordanPetersonVideos" && $DOWNLOAD "$YOUTUBE/channel/UCL_f53ZEJxp8TtlOkHwMV9Q"
cd "$BASE_DIR/powerfuljre" && $DOWNLOAD "$YOUTUBE/user/PowerfulJRE/videos"
cd "$BASE_DIR/sterling_and_stone" && $DOWNLOAD "$YOUTUBE/user/SterlingandStone/videos"