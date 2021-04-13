# ecats-phase3-evaluation
This repo is meant to hold the artifacts used in the evaluation for the final report of the ECATS project of the DARPA SSITH program.

Example commands:
~/cheribuild$ ./vcu118-run.py --num-cores 1 --bitfile ~/cheri_toooba_experimental.bit --ltxfile ~/cheri_toooba_experimental.ltx --bios ~/bbl-cheri --kernel ~/kernel-riscv64-hybrid.CHERI-GFE-NODEBUG --gdb /opt/riscv/bin/riscv64-unknown-elf-gdb --openocd /usr/bin/openocd

On the command line in cheribsd:
dhclient xae0; mkdir /root/.ssh; cp /etc/ssh/ssh_host_rsa_key.pub /root/.ssh/authorized_keys

On my Linux host:
scp -r -i ../key.txt benches root@192.168.0.51:/tmp/

(Where key.txt is a copy of /etc/ssh/ssh_host_rsa_key from freeBSD on the FPGA)

Then back on FreeBSD:
cd /tmp/benches/riscv; sh run_all.sh riscv64; cd ../cheri; sh run_all.sh riscv64-purecap


Then back on Linux host:
scp -r -i ../key.txt root@192.168.0.51:/tmp/benches/**/*.csv .
awk 'NR%2==0' mibench-20210407-17_*-statcounters.csv > riscv_mibench.csv
awk 'NR%2==0' mibench-20210407-18_*-statcounters.csv > purecap_mibench.csv

