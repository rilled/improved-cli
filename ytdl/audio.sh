#!/bin/bash
archiveAudio() {
  content=$1
  if [ -f ${content} ]
    then
      yt-dlp --format "(bestaudio[acodec^=opus]/bestaudio)/best" --extractor-args youtube:player_client=android --throttled-rate 100K --write-thumbnail --embed-thumbnail --write-description --add-metadata --no-overwrites --no-continue --ignore-errors --sleep-requests 1 --sleep-interval 5 --max-sleep-interval 30 --force-ipv4 --extract-audio --output "%(title)s - %(uploader)s - %(upload_date)s/%(title)s.%(ext)s" --merge-output-format "mkv" --batch-file ${content}
    else
      yt-dlp --format "(bestaudio[acodec^=opus]/bestaudio)/best" --extractor-args youtube:player_client=android --throttled-rate 100K --write-thumbnail --embed-thumbnail --write-description --add-metadata --no-overwrites --no-continue --ignore-errors --sleep-requests 1 --sleep-interval 5 --max-sleep-interval 30 --force-ipv4 --extract-audio --output "%(title)s - %(uploader)s - %(upload_date)s/%(title)s.%(ext)s" --merge-output-format "mkv" ${content}
  fi
}

if [ -z ${1} ]
  then
    echo "Usage: ./audio.sh <url/file>"
    exit 1
  else
    archiveAudio "${1}"
fi
