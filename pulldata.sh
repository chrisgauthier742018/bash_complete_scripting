#!/usr/bin/bash

ERROR_FILE="syslog"
OUTPUT_FILE="bad_data"

grep -i "errors" ${ERROR_FILE}  >> ${OUTPUT_FILE}
grep -i "warnings" ${ERROR_FILE} >> ${OUTPUT_FILE}
grep -i "fail" ${ERROR_FILE}	>> ${OUTPUT_FILE}
