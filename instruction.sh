#!/usr/bin/env bash
$url = "https://raw.githubusercontent.com/indianprogrammer/google-backup/master"
sudo wget -O key.json $url/key.json
sudo wget -O gcloud-snapshot.sh $url/gcloud-snapshot.sh
sudo chmod 777 gcloud-snapshot.sh
gcloud auth activate-service-account  --key-file=key.json
/bin/sh gcloud-snapshot.sh