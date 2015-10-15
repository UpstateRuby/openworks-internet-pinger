#!/bin/bash

s1=$(nslookup google.com | grep google.com)

if [[ $s1 = *[!\ ]* ]]; then
  curl -H "Content-Type: application/json" -H "Authorization: Token openworksauthtoken" https://openworks-status-api.herokuapp.com/things.json
else
  echo dns not working
fi

