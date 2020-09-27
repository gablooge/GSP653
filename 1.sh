#!/bin/bash
gcloud auth revoke --all

while [[ -z "$(gcloud config get-value core/account)" ]]; 
do echo "waiting login" && sleep 2; 
done

while [[ -z "$(gcloud config get-value project)" ]]; 
do echo "waiting project" && sleep 2; 
done


export PROJECT_ID=$(gcloud info --format='value(config.project)')



open "https://console.cloud.google.com/apis/library/maps-backend.googleapis.com?q=Maps%20JavaScript%20API&project=$PROJECT_ID"

open "https://console.cloud.google.com/apis/credentials?project=$PROJECT_ID"




