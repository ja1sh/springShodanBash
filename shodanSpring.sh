#!/bin/bash                                                                                                        
line="$1"                                                                                                          
echo 'Scanning for' $line                                                                                          
shodan search org:$line http.favicon.hash:116323821 --fields ip_str,port --separator " " | awk '{print $1":"$2}' | while read host do ;do ffuf -u http://$host/FUZZ -mc 200 -w /usr/share/seclists/Discovery/Web-Content/spring-boot.txt ;done | tee -a /root/Downloads/bugbounty/$line-Spring_FFUF.txt
