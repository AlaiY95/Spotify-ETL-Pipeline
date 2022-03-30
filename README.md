# Spotify-ETL-Pipeline

## Usage 
Python script (main.py) uses Spotify API to build a data dictionary of your favourite playlist, which is then extracted, transformed and results stored in AWS S3 or locally.

Terraform is used to automate pipeline by building AWS infrastructure. The scripts build:
    - Set up role, policy and attach policy to role (IAM policies / roles)
    - Lambda function with python script (analysis)
    - Set up CloudWatch to trigger lambda function weekly

## Installation 

#### Pre-Requisites
[Python](https://www.python.org/downloads/), [Terraform](https://www.terraform.io/downloads.html) and [Spotipy](https://spotipy.readthedocs.io/en/2.13.0/).


## Improvements:
- Develop a front end login page where users can add their personal spotify ID and personal playlist or playlist of their choice for analysis on their music listening activity.
