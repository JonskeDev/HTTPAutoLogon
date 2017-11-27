# HTTPAutoLogon

## Requirements:
Wget for windows
  http://gnuwin32.sourceforge.net/packages/wget.htm
  
## Installation:
Unpack to c:\HTTPAutoLogon
Run setup.bat with admin rights
Restart computer
 
## How does it work?
Every 60 second wget makes a exist check against www.example.com, if hidden behind a 401 Authentication it will try to login with the user credentiels provided.

## Known issues:
- Log do not filter, always writes out when doing spider
- Log is deleted if exceeds 5mb but not incremental.
- No included wget
- service.vbs requires path (so can only install to c:/ for now)
- Log file size regulation needs improvment
- no check of wget return
