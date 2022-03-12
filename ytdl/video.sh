#!/bin/bash
archiveVideo() {
  content=$1
  if [ -f ${content} ]
    then
      yt-dlp --netrc --format "(bestvideo[vcodec^=av01][height>=1080]/bestvideo)+(bestaudio[acodec^=opus]/bestaudio)/best" --verbose --write-thumbnail --embed-thumbnail --write-description --add-metadata --no-overwrites --no-continue --ignore-errors --sleep-requests 1 --sleep-interval 5 --max-sleep-interval 30 --force-ipv4 --write-subs -sub-format "srt" --output "%(title)s - %(uploader)s - %(upload_date)s/%(title)s.%(ext)s" --merge-output-format "mkv" --batch-file ${content}
    else
      yt-dlp --netrc --format "(bestvideo[vcodec^=av01][height>=1080]/bestvideo)+(bestaudio[acodec^=opus]/bestaudio)/best" --verbose --write-thumbnail --embed-thumbnail --write-description --add-metadata --no-overwrites --no-continue --ignore-errors --sleep-requests 1 --sleep-interval 5 --max-sleep-interval 30 --force-ipv4 --write-subs -sub-format "srt" --output "%(title)s - %(uploader)s - %(upload_date)s/%(title)s.%(ext)s" --merge-output-format "mkv" ${content}
    fi
}

if [ -z ${1} ]
  then
    echo "Usage: ./video.sh <url/file>"
    exit 1
  else
    archiveVideo "${1}"
fi
