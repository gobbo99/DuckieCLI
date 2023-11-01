#  DUCKDNS API CLI 

## Overview

Simple command line tool with various options for quickly updating binded ip addresses for your duckdns records. One line in cli to update multiple domains with given IP.

## Options

  ***-d, --domains*** Enter domains that will be updated with new IP address[required]

 ***-ip, --ip***      Enter ip that will be updated for duckdns domain records[required]

  ***-a, --token***   Enter authentication token

  ***--help***        Show this message and exit.

## Example command
Example #1

```bash./update_ip.sh -d domain1 -d domain2 -ip 12.34.56.78```

Example #2

```bash./update_ip.sh -d domain1 -d domain2 -ip 87.65.43.21 --token some123token```
## Updates

This module will be upgraded

