#!/bin/bash
domain=$1
mkdir -p output/$domain
assetfinder --subs-only $domain > output/$domain/assetfinder.txt
sublist3r -d $domain -o output/$domain/sublister.txt
cat output/$domain/assetfinder.txt output/$domain/sublister.txt | sort -u >  output/$domain/all_subdomains.txt
cat output/$domain/all_subdomains.txt | httprobe > output/$domain/live_subdomains.txt
