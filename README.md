# Shodan Bash Script for Enumerating Spring Applications in the Wild

## Prerequisites:
* Shodan CLI: sudo apt install python3-shodan
* ffuf: go get http://github.com/ffuf/ffuf
* spring-boot.txt wordlist from seclists: wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/spring-boot.txt

## Usage:
* chmod +x shodanSpring.sh
* ./shodanSpring.sh <redacted>
  
## Bonus:
You can also modify the shodan search sorting results by SSL instead of ORG.
For ORG:
`... shodan search org:$line`

For SSL: (more flase positives results though!)
`... shodan search ssl:$line`


### Credits:
[@K4r1it0](https://twitter.com/K4r1it0)
[@Madrobot_](https://twitter.com/Madrobot_)

### Drop Suggestions:
[ja1sharma](https://twitter.com/ja1sharma)
