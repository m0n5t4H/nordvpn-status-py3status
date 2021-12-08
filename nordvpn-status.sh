#!/bin/bash
#
# simple script to display nordvpn status
# 
#

OUTPUT=$(nordvpn status | grep Status | tr -d ' ' | cut -d ':' -f2)

if [ "$OUTPUT" = "Connected" ]; then                            # Output Display
  printf "Connected "     # show connected status
  #printf "$(nordvpn status | grep ser | cut -d ':' -f2) 歷"     # show server connect
  #printf "$(nordvpn status | grep Cou | cut -d ':' -f2) "     # connected country
  #printf "$(nordvpn status | grep City | cut -d ':' -f2) "    # city
  #printf "$(nordvpn status | grep Ser | cut -d ':' -f2) 旅"     # display Server IP
  #printf "$(nordvpn status | grep tec | cut -d ':' -f2) "     # connected tech (nordlynx)
  #printf "$(nordvpn status | grep pro | cut -d ':' -f2) "     # Protocol
  #printf "$(nordvpn status | grep Up | cut -d ':' -f2) "      # Uptime
else
   printf "vpn "
fi
