#!/usr/bin/env bash

# Run this script pointing to all libraries required to package them for the Lambda.

terraform init

cp -r /Users/alaiy/Documents/Projects/etl_Stuff/aws_spotify_etl/venv/lib/python3.8/site-packages/spotipy ../lambda_payloads/spotify_analysis/
cp -r /Users/alaiy/Documents/Projects/etl_Stuff/aws_spotify_etl/venv/lib/python3.8/site-packages/requests ../lambda_payloads/spotify_analysis/

cp /Users/alaiy/Documents/Projects/etl_Stuff/aws_spotify_etl/get_artists.py ../lambda_payloads/spotify_analysis/
cp /Users/alaiy/Documents/Projects/etl_Stuff/aws_spotify_etl/config/playlists.py ../lambda_payloads/spotify_analysis/config/
cp /Users/alaiy/Documents/Projects/etl_Stuff/aws_spotify_etl/tools/playlists.py ../lambda_payloads/spotify_analysis/tools/

cd ../lambda_payloads/spotify_analysis/

zip -r ../../payload.zip *

cd ../../.tf/

terraform plan

