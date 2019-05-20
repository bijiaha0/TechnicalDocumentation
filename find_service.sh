#!/usr/bin/env bash
echo "facade_log---------------------------------------------find!"
ps -elf | grep facade_log
echo "facade_data---------------------------------------------find!"
ps -elf | grep facade_data
echo "facade_balance---------------------------------------------find!"
ps -elf | grep facade_balance
echo "facade_app------------------------------------------------find!"
ps -elf | grep facade_app
echo "facade_sso------------------------------------------------find!"
ps -elf | grep facade_sso
echo "service_app-----------------------------------------------find!"
ps -elf | grep service_app
echo "service_app-----------------------------------------------find!"
ps -elf | grep service_sso