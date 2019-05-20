#!/bin/sh
echo "------------------------"
echo "---ceno service starting---"
echo "------------------------"

echo "init service--------------------------------------------------------------ok!"
# clear .dsa .rsa .sf
zip -d facade_log_jar/facade_log.jar 'META-INF/*.DSA' 'META-INF/*.RSA' 'META-INF/*.SF'
echo "facade_log cleared!-------------------------------------------------------ok!";
zip -d facade_data_jar/facade_data.jar 'META-INF/*.DSA' 'META-INF/*.RSA' 'META-INF/*.SF'
echo "facade_data cleared!-------------------------------------------------------ok!";
zip -d facade_balance_jar/facade_balance.jar 'META-INF/*.DSA' 'META-INF/*.RSA' 'META-INF/*.SF'
echo "facade_balance cleared!----------------------------------------------------ok!";
zip -d facade_app_jar/facade_app.jar 'META-INF/*.DSA' 'META-INF/*.RSA' 'META-INF/*.SF'
echo "facade_app cleared!-------------------------------------------------------ok!"
zip -d facade_sso_jar/facade_sso.jar 'META-INF/*.DSA' 'META-INF/*.RSA' 'META-INF/*.SF'
echo "facade_sso cleared!-------------------------------------------------------ok!";
zip -d service_app_jar/service_app.jar 'META-INF/*.DSA' 'META-INF/*.RSA' 'META-INF/*.SF'
echo "service_app cleared!------------------------------------------------------ok!"
zip -d service_sso_jar/service_sso.jar 'META-INF/*.DSA' 'META-INF/*.RSA' 'META-INF/*.SF'
echo "service_sso cleared!------------------------------------------------------ok!"

echo "start service-------------------------------------------------------------ok!"
nohup sudo java -jar facade_log_jar/facade_log.jar > log/facade_log.log &
echo "facade_data start!--------------------------------------------------------ok!"
nohup sudo java -jar facade_data_jar/facade_data.jar > log/facade_data.log &
echo "facade_data start!--------------------------------------------------------ok!"
nohup sudo java -jar facade_balance_jar/facade_balance.jar > log/facade_balance.log &
echo "facade_balance start!-----------------------------------------------------ok!"
nohup sudo java -jar facade_app_jar/facade_app.jar > log/facade_app.log &
echo "facade_app start!---------------------------------------------------------ok!"
nohup sudo java -jar facade_sso_jar/facade_sso.jar > log/facade_sso.log &
echo "facade_sso start!---------------------------------------------------------ok!";
nohup sudo java -jar service_app_jar/service_app.jar > log/service_app.log &
echo "service_app start!--------------------------------------------------------ok!"
nohup sudo java -jar service_sso_jar/service_sso.jar > log/service_sso.log &
echo "service_sso start!--------------------------------------------------------ok!"
