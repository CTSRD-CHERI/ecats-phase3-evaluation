#!/bin/sh
STATCOUNTERS_PROGNAME=${STATCOUNTERS_PROGNAME}-encode ${COUNT_STATS} ./security-rijndael input_small.asc /dev/null e 1234567890ABCDEFFEDCBA09876543211234567890ABCDEFFEDCBA0987654321
STATCOUNTERS_PROGNAME=${STATCOUNTERS_PROGNAME}-decode ${COUNT_STATS} ./security-rijndael output_small.enc /dev/null d 1234567890ABCDEFFEDCBA09876543211234567890ABCDEFFEDCBA0987654321

