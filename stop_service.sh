#!/usr/bin/env bash



FACADE_LOG="facade_log"
echo "----------------------------------------------------------finding service $FACADE_LOG"
FACADE_LOG_ID=`ps -ef | grep "$FACADE_LOG" | grep -v "$0" | grep -v "grep" | awk '{print $2}'`
echo "----------------------------------------------------------killing service $FACADE_LOG"
for id in $FACADE_LOG_ID
do
kill -9 $id
echo "----------------------------------------------------------killed $id"
done
echo "----------------------------------------------------------killed service $FACADE_LOG"



FACADE_DATA="facade_data"
echo "----------------------------------------------------------finding service $FACADE_DATA"
FACADE_DATA_ID=`ps -ef | grep "$FACADE_DATA" | grep -v "$0" | grep -v "grep" | awk '{print $2}'`
echo "----------------------------------------------------------killing service $FACADE_DATA"
for id in $FACADE_DATA_ID
do
kill -9 $id
echo "----------------------------------------------------------killed $id"
done
echo "----------------------------------------------------------killed service $FACADE_DATA"



FACADE_BALANCE="facade_balance"
echo "----------------------------------------------------------finding service $FACADE_BALANCE"
FACADE_BALANCE_ID=`ps -ef | grep "$FACADE_BALANCE" | grep -v "$0" | grep -v "grep" | awk '{print $2}'`
echo "----------------------------------------------------------killing service $FACADE_BALANCE"
for id in $FACADE_BALANCE_ID
do
kill -9 $id
echo "----------------------------------------------------------killed $id"
done
echo "----------------------------------------------------------killed service $FACADE_BALANCE"



FACADE_SSO="facade_sso"
echo "----------------------------------------------------------finding service $FACADE_SSO"
FACADE_SSO_ID=`ps -ef | grep "$FACADE_SSO" | grep -v "$0" | grep -v "grep" | awk '{print $2}'`
echo "----------------------------------------------------------killing service $FACADE_SSO"
for id in $FACADE_SSO_ID
do
kill -9 $id
echo "----------------------------------------------------------killed $id"
done
echo "----------------------------------------------------------killed service $FACADE_SSO"


FACADE_APP="facade_app"
echo "----------------------------------------------------------finding service $FACADE_APP"
FACADE_APP_ID=`ps -ef | grep "$FACADE_APP" | grep -v "$0" | grep -v "grep" | awk '{print $2}'`
echo "----------------------------------------------------------killing service $FACADE_APP"
for id in $FACADE_APP_ID
do
kill -9 $id
echo "----------------------------------------------------------killed $id"
done
echo "----------------------------------------------------------killed service $FACADE_APP"

SERVICE_APP="service_app"
echo "----------------------------------------------------------finding service $SERVICE_APP"
SERVICE_APP_ID=`ps -ef | grep "$SERVICE_APP" | grep -v "$0" | grep -v "grep" | awk '{print $2}'`
echo "----------------------------------------------------------killing service $SERVICE_APP"
for id in $SERVICE_APP_ID
do
kill -9 $id
echo "----------------------------------------------------------killed $id"
done
echo "----------------------------------------------------------killed service $SERVICE_APP"


SERVICE_SSO="service_sso"
echo "----------------------------------------------------------finding service $SERVICE_SSO"
SERVICE_SSO_ID=`ps -ef | grep "$SERVICE_SSO" | grep -v "$0" | grep -v "grep" | awk '{print $2}'`
echo "----------------------------------------------------------killing service $SERVICE_SSO"
for id in $SERVICE_SSO_ID
do
kill -9 $id
echo "----------------------------------------------------------killed $id"
done
echo "----------------------------------------------------------killed service $SERVICE_SSO"