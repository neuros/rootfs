# This file is written almost directly from the devices.txt file kept at
# http://www.lanana.org/docs/device-list/devices.txt, as of 30 August 2004
# Type Perms User Group Major Minor Inc Count Base
#
# USB devices have their own configuration file.
#

c $KMEM                  1   1  1   1 mem
c $KMEM                  1   2  1   1 kmem
c $ALLWRITE              1   3  1   1 null
c $KMEM                  1   4  1   1 port
c $ALLWRITE              1   5  1   1 zero
c $ROOT                  1   6  1   1 core
c $ALLWRITE              1   7  1   1 full
c $ALLREAD               1   8  1   1 random
c $ALLREAD               1   9  1   1 urandom
c $ALLREAD               1  10  1   1 aio
c $ROOT                  1  11  1   1 kmsg

b $STORAGE               1   0  1 128 ram%d
b $STORAGE               1 250  1   1 initrd

c $PTY                   2   0  1  16 ptyp%x
c $PTY                   2  16  1  16 ptyq%x
c $PTY                   2  32  1  16 ptyr%x
c $PTY                   2  48  1  16 ptys%x
c $PTY                   2  64  1  16 ptyt%x
c $PTY                   2  80  1  16 ptyu%x
c $PTY                   2  96  1  16 ptyv%x
c $PTY                   2 112  1  16 ptyw%x
c $PTY                   2 128  1  16 ptyx%x
c $PTY                   2 144  1  16 ptyy%x
c $PTY                   2 160  1  16 ptyz%x
c $PTY                   2 176  1  16 ptya%x
c $PTY                   2 192  1  16 ptyb%x
c $PTY                   2 208  1  16 ptyc%x
c $PTY                   2 224  1  16 ptyd%x
c $PTY                   2 240  1  16 ptye%x

b $FLOPPY                2   0  1   4 fd%d 0
b $FLOPPY                2 128  1   4 fd%d 4

b $FLOPPY                2   4  1   4 fd%dd360  0
b $FLOPPY                2  20  1   4 fd%dh360  0
b $FLOPPY                2  48  1   4 fd%dh410  0
b $FLOPPY                2  64  1   4 fd%dh420  0
b $FLOPPY                2  24  1   4 fd%dh720  0
b $FLOPPY                2  80  1   4 fd%dh880  0
b $FLOPPY                2   8  1   4 fd%dh1200 0
b $FLOPPY                2  40  1   4 fd%dh1440 0
b $FLOPPY                2  56  1   4 fd%dh1476 0
b $FLOPPY                2  72  1   4 fd%dh1494 0
b $FLOPPY                2  92  1   4 fd%dh1660 0

b $FLOPPY                2  12  1   4 fd%du360  0
b $FLOPPY                2  16  1   4 fd%du720  0
b $FLOPPY                2 120  1   4 fd%du800  0
b $FLOPPY                2  52  1   4 fd%du820  0
b $FLOPPY                2  68  1   4 fd%du830  0
b $FLOPPY                2  84  1   4 fd%du1040 0
b $FLOPPY                2  88  1   4 fd%du1120 0
b $FLOPPY                2  28  1   4 fd%du1440 0
b $FLOPPY                2 124  1   4 fd%du1660 0
b $FLOPPY                2  44  1   4 fd%du1680 0
b $FLOPPY                2  60  1   4 fd%du1722 0
b $FLOPPY                2  76  1   4 fd%du1743 0
b $FLOPPY                2  96  1   4 fd%du1760 0
b $FLOPPY                2 116  1   4 fd%du1840 0
b $FLOPPY                2 100  1   4 fd%du1920 0
b $FLOPPY                2  32  1   4 fd%du2880 0
b $FLOPPY                2 104  1   4 fd%du3200 0
b $FLOPPY                2 108  1   4 fd%du3520 0
b $FLOPPY                2 112  1   4 fd%du3840 0

b $FLOPPY                2 132  1   4 fd%dd360  4
b $FLOPPY                2 148  1   4 fd%dh360  4
b $FLOPPY                2 176  1   4 fd%dh410  4
b $FLOPPY                2 192  1   4 fd%dh420  4
b $FLOPPY                2 152  1   4 fd%dh720  4
b $FLOPPY                2 208  1   4 fd%dh880  4
b $FLOPPY                2 136  1   4 fd%dh1200 4
b $FLOPPY                2 168  1   4 fd%dh1440 4
b $FLOPPY                2 184  1   4 fd%dh1476 4
b $FLOPPY                2 200  1   4 fd%dh1494 4
b $FLOPPY                2 220  1   4 fd%dh1660 4

b $FLOPPY                2 140  1   4 fd%du360  4
b $FLOPPY                2 144  1   4 fd%du720  4
b $FLOPPY                2 248  1   4 fd%du800  4
b $FLOPPY                2 180  1   4 fd%du820  4
b $FLOPPY                2 196  1   4 fd%du830  4
b $FLOPPY                2 212  1   4 fd%du1040 4
b $FLOPPY                2 216  1   4 fd%du1120 4
b $FLOPPY                2 156  1   4 fd%du1440 4
b $FLOPPY                2 252  1   4 fd%du1660 4
b $FLOPPY                2 172  1   4 fd%du1680 4
b $FLOPPY                2 188  1   4 fd%du1722 4
b $FLOPPY                2 204  1   4 fd%du1743 4
b $FLOPPY                2 224  1   4 fd%du1760 4
b $FLOPPY                2 244  1   4 fd%du1840 4
b $FLOPPY                2 228  1   4 fd%du1920 4
b $FLOPPY                2 160  1   4 fd%du2880 4
b $FLOPPY                2 232  1   4 fd%du3200 4
b $FLOPPY                2 236  1   4 fd%du3520 4
b $FLOPPY                2 240  1   4 fd%du3840 4

b $FLOPPY                2   4  1   4 fd%dCompaQ 0
b $FLOPPY                2 132  1   4 fd%dCompaQ 4

c $PTY                   3   0  1  16 ttyp%x
c $PTY                   3  16  1  16 ttyq%x
c $PTY                   3  32  1  16 ttyr%x
c $PTY                   3  48  1  16 ttys%x
c $PTY                   3  64  1  16 ttyt%x
c $PTY                   3  80  1  16 ttyu%x
c $PTY                   3  96  1  16 ttyv%x
c $PTY                   3 112  1  16 ttyw%x
c $PTY                   3 128  1  16 ttyx%x
c $PTY                   3 144  1  16 ttyy%x
c $PTY                   3 160  1  16 ttyz%x
c $PTY                   3 176  1  16 ttya%x
c $PTY                   3 192  1  16 ttyb%x
c $PTY                   3 208  1  16 ttyc%x
c $PTY                   3 224  1  16 ttyd%x
c $PTY                   3 240  1  16 ttye%x

# See fs/partitions/check.c in the kernel sources for the source of this
# limitation.
b $STORAGE               3   0  1  33 hda
b $STORAGE               3  64  1  33 hdb

b $STORAGE               4   0  1   1 root
l                                     systty tty0
c $TTY                   4   0  1  64 tty%d
c $SERIAL                4  64  1 192 ttyS%d

c $ALLWRITE              5   0  1   1 tty
c $CONSOLE               5   1  1   1 console
c $ALLWRITE              5   2  1   1 ptmx
c $SERIAL                5  64  1 192 cua%d

c $PRINTER               6   0  1   4 lp%d

c $VCSA                  7   0  1  64 vcs
c $VCSA                  7 128  1  64 vcsa

b $STORAGE               7   0  1 256 loop%d

b $STORAGE               8   0  1  16 sda
b $STORAGE               8  16  1  16 sdb
b $STORAGE               8  32  1  16 sdc
b $STORAGE               8  48  1  16 sdd
b $STORAGE               8  64  1  16 sde
b $STORAGE               8  80  1  16 sdf
b $STORAGE               8  96  1  16 sdg
b $STORAGE               8 112  1  16 sdh
b $STORAGE               8 128  1  16 sdi
b $STORAGE               8 144  1  16 sdj
b $STORAGE               8 160  1  16 sdk
b $STORAGE               8 176  1  16 sdl
b $STORAGE               8 192  1  16 sdm
b $STORAGE               8 208  1  16 sdn
b $STORAGE               8 224  1  16 sdo
b $STORAGE               8 240  1  16 sdp

c $STORAGE               9   0  1  32 st%d
c $STORAGE               9  32  1  32 st%dl
c $STORAGE               9  64  1  32 st%dm
c $STORAGE               9  96  1  32 st%da
c $STORAGE               9 128  1  32 nst%d
c $STORAGE               9 160  1  32 nst%dl
c $STORAGE               9 192  1  32 nst%dm
c $STORAGE               9 224  1  32 nst%da

b $STORAGE               9   0  1  32 md%d

c $CONSOLE              10   0  1   1 logibm
c $CONSOLE              10   1  1   1 psaux
c $CONSOLE              10   2  1   1 inportbm
c $CONSOLE              10   3  1   1 atibm
c $CONSOLE              10   4  1   1 jbm
c $CONSOLE              10   4  1   1 amigamouse
c $CONSOLE              10   5  1   1 atarimouse
c $CONSOLE              10   6  1   1 sunmouse
c $CONSOLE              10   7  1   1 amigamouse1
c $CONSOLE              10   8  1   1 smouse
c $CONSOLE              10   9  1   1 pc110pad
c $CONSOLE              10  10  1   1 adbmouse
c $CONSOLE              10  11  1   1 vrtpanel

# Where did 12 go?

c $CONSOLE              10  13  1   1 vpcmouse
c $CONSOLE              10  14  1   1 touchscreen/ucb1x00
c $CONSOLE              10  15  1   1 touchscreen/mk712

c $CONSOLE              10 128  1   1 beep
c $ROOT                 10 129  1   1 modreq
c $ROOT                 10 130  1   1 watchdog
c $ROOT                 10 131  1   1 temperature
c $ROOT                 10 132  1   1 hwtrap
c $ROOT                 10 133  1   1 exttrp
c $ROOT                 10 134  1   1 apm_bios
c $ALLREAD              10 135  1   1 rtc

# Where did 136, 137, and 138 go?

c $ROOT                 10 139  1   1 openprom
c $ROOT                 10 140  1   1 relay8
c $ROOT                 10 141  1   1 relay16
c $ROOT                 10 142  1   1 msr
c $ROOT                 10 143  1   1 pciconf
c $ROOT                 10 144  1   1 nvram
c $CONSOLE              10 145  1   1 hfmodem
c $CONSOLE              10 146  1   1 graphics
c $CONSOLE              10 147  1   1 opengl
c $CONSOLE              10 148  1   1 gfx
c $CONSOLE              10 149  1   1 input/mouse
c $CONSOLE              10 150  1   1 input/keyboard
c $CONSOLE              10 151  1   1 led
c $ROOT                 10 152  1   1 kpoll
c $ROOT                 10 153  1   1 mergemem
c $CONSOLE              10 154  1   1 pmu
c $SERIAL               10 155  1   1 isictl
c $ROOT                 10 156  1   1 lcd
c $ROOT                 10 157  1   1 ac
c $ROOT                 10 158  1   1 nwbutton
c $ROOT                 10 159  1   1 nwdebug
c $ROOT                 10 160  1   1 nwflash
c $ROOT                 10 161  1   1 userdma
c $ROOT                 10 162  1   1 smbus
c $CONSOLE              10 163  1   1 lik
c $ROOT                 10 164  1   1 ipmo
c $ROOT                 10 165  1   1 vmmon
c $ROOT                 10 166  1   1 i2o/ctl
c $SERIAL               10 167  1   1 specialix_sxctl
c $SERIAL               10 168  1   1 tcldrv
c $SERIAL               10 169  1   1 specialix_rioctl
c $ROOT                 10 170  1   1 thinkpad/thinkpad
c $ROOT                 10 171  1   1 srripc
c $ROOT                 10 172  1   1 usemaclone
c $ROOT                 10 173  1   1 ipmikcs
c $ROOT                 10 174  1   1 uctrl
c $ALLREAD              10 175  1   1 agpgart
c $ALLREAD              10 176  1   1 gtrsc
c $SERIAL               10 177  1   1 cbm
c $ROOT                 10 178  1   1 jsflash
c $ROOT                 10 179  1   1 xsvc
c $CONSOLE              10 180  1   1 vrbuttons
c $ROOT                 10 181  1   1 toshiba
c $ROOT                 10 182  1   1 perfctr
c $ROOT                 10 183  1   1 hwrng

c $ROOT                 10 184  1   1 cpu/microcode

# Where did 185 go?

c $ROOT                 10 186  1   1 atomicps
c $ROOT                 10 187  1   1 irnet
c $ROOT                 10 188  1   1 smbusbios
c $ROOT                 10 189  1   1 ussp_ctl
c $ROOT                 10 190  1   1 crash
c $ROOT                 10 191  1   1 pcl181
c $ROOT                 10 192  1   1 nas_xbus
c $ROOT                 10 193  1   1 d7s
c $ROOT                 10 194  1   1 zkshim
c $CONSOLE              10 195  1   1 elographics/e2201

# Where did 196 and 197 go?

c $ROOT                 10 198  1   1 sexec
c $CONSOLE              10 199  1   1 scanners/cuecat
c $ROOT                 10 200  1   1 net/tun
c $ROOT                 10 201  1   1 button/gulpb
c $ROOT                 10 202  1   1 emd/ctl

# Where did 203 go?

c $CONSOLE              10 204  1   1 video/em8300
c $CONSOLE              10 205  1   1 video/em8300_mv
c $CONSOLE              10 206  1   1 video/em8300_ma
c $CONSOLE              10 207  1   1 video/em8300_sp
c $ROOT                 10 208  1   1 compaq/cpqphpc
c $ROOT                 10 209  1   1 compaq/cpqrid
c $ROOT                 10 210  1   1 impi/bt
c $ROOT                 10 211  1   1 impi/smic
c $ROOT                 10 212  1   1 watchdogs/0
c $ROOT                 10 213  1   1 watchdogs/1
c $ROOT                 10 214  1   1 watchdogs/2
c $ROOT                 10 215  1   1 watchdogs/3
c $ROOT                 10 216  1   1 fujitsu/apanel
c $ROOT                 10 217  1   1 ni/natmotn
c $ROOT                 10 218  1   1 kchuid
c $ROOT                 10 219  1   1 modems/mwave
c $ROOT                 10 220  1   1 mptctl
c $ROOT                 10 221  1   1 mvista/hssdsi
c $ROOT                 10 222  1   1 mvista/hasi
c $ROOT                 10 223  1   1 input/uinput
c $ROOT                 10 224  1   1 tpm
c $ROOT                 10 225  1   1 pps
c $ROOT                 10 226  1   1 systrace
c $ROOT                 10 227  1   1 mcelog
c $ROOT                 10 228  1   1 hpet
c $ROOT                 10 229  1   1 fuse
c $ROOT                 10 230  1   1 midishare

# SPARC only
c $CONSOLE              11   0  1   1 kbd
# PA-RISC only
# c $SERIAL               11   0  1   4 ttyB%d
b $STORAGE              11   0  1  32 scd%d

c $STORAGE              12   2  1   1 ntpqic11
c $STORAGE              12   3  1   1 tpqic11
c $STORAGE              12   4  1   1 ntpqic24
c $STORAGE              12   5  1   1 tpqic24
c $STORAGE              12   6  1   1 ntpqic120
c $STORAGE              12   7  1   1 tpqic120
c $STORAGE              12   8  1   1 ntpqic150
c $STORAGE              12   9  1   1 tpqic150

b $STORAGE              12   0  1   8 dos_cd%d

c $CONSOLE              13   0  1  32 input/js%d
c $CONSOLE              13  32  1  31 input/mouse%d
c $CONSOLE              13  63  1   1 input/mice
c $CONSOLE              13  64  1  32 input/event%d

b $STORAGE              13   0  1  64 xda
b $STORAGE              13  64  1  64 xdb

c $CONSOLE              14   0  1   1 mixer
c $CONSOLE              14   1  1   1 sequencer
c $CONSOLE              14   2  1   1 midi00
c $CONSOLE              14   3  1   1 dsp
c $CONSOLE              14   4  1   1 audio

# Where did 5 go?

c $CONSOLE              14   6  1   1 sndstat
c $CONSOLE              14   7  1   1 audioctl
c $CONSOLE              14   8  1   1 sequencer2

c $CONSOLE              14  16  1   1 mixer1
c $CONSOLE              14  17  1   1 patmgr0
c $CONSOLE              14  18  1   1 midi01
c $CONSOLE              14  19  1   1 dsp1
c $CONSOLE              14  20  1   1 audio1

c $CONSOLE              14  33  1   1 patmgr1
c $CONSOLE              14  34  1   1 midi02
c $CONSOLE              14  50  1   1 midi03

b $STORAGE              14   0  1  17 dos_hda
b $STORAGE              14  64  1  17 dos_hdb
b $STORAGE              14 128  1  17 dos_hdc
b $STORAGE              14 192  1  17 dos_hdd

l                                     js0 input/js0
l                                     js1 input/js1
l                                     js2 input/js2
l                                     js3 input/js3

# Replaced with symlinks to input core joystick devices (see usb).
#c $CONSOLE              15   0  1 128 js%d
#c $CONSOLE              15 128  1 128 djs%d

b $STORAGE              15   0  1   1 sonycd

c $CONSOLE              16   0  1   1 gs4500
b $STORAGE              16   0  1   1 gscd

c $SERIAL               17   0  1  16 ttyH%d
b $STORAGE              17   0  1   1 optcd

c $SERIAL               18   0  1  16 cuh%d
b $STORAGE              18   0  1   1 sjcd

c $SERIAL               19   0  1  33 ttyC%d
b $STORAGE              19   0  1   8 double%d
b $STORAGE              19 128  1   8 cdouble%d

c $SERIAL               20   0  1  32 cub%d
b $STORAGE              20   0  1   1 hitcd

c $STORAGE              21   0  1 256 sg%d
b $STORAGE              21   0  1  64 mfma
b $STORAGE              21  64  1  64 mfmb

c $SERIAL               22   0  1  32 ttyD%d
b $STORAGE              22   0  1  33 hdc
b $STORAGE              22  64  1  33 hdd

c $SERIAL               23   0  1  32 cud%d
b $STORAGE              23   0  1   1 mcd

c $SERIAL               24   0  1 256 ttyE%d
b $STORAGE              24   0  1   1 cdu535

c $SERIAL               25   0  1 256 cue%d
b $STORAGE              25   0  1   4 sbpcd%d 0

c $CONSOLE              26   0  1   1 wvisfgrab
b $STORAGE              26   0  1   4 sbpcd%d 4

c $STORAGE              27   0  1   4 qft%d
c $STORAGE              27   4  1   4 nqft%d
c $STORAGE              27  16  1   4 zqft%d
c $STORAGE              27  20  1   4 nzqft%d
c $STORAGE              27  32  1   4 rawqft%d
c $STORAGE              27  36  1   4 nrawqft%d
b $STORAGE              27   0  1   4 sbpcd%d 8

c $ROOT                 28   0  1   4 staliomem%d
c $PRINTER              28   0  1   4 slm%d
b $STORAGE              28   0  1   4 sbpcd%d 12

# This next set's commented out because it conflicts with the Apple Desktop
# Bus driver, which appears to be the more correct of the two.
# b $STORAGE              28   0  1  16 ada
# b $STORAGE              28  16  1  16 adb
# b $STORAGE              28  32  1  16 adc
# b $STORAGE              28  48  1  16 add
# b $STORAGE              28  64  1  16 ade
# b $STORAGE              28  80  1  16 adf
# b $STORAGE              28  96  1  16 adg
# b $STORAGE              28 112  1  16 adh
# b $STORAGE              28 128  1  16 adi
# b $STORAGE              28 144  1  16 adj
# b $STORAGE              28 160  1  16 adk
# b $STORAGE              28 176  1  16 adl
# b $STORAGE              28 192  1  16 adm
# b $STORAGE              28 208  1  16 adn
# b $STORAGE              28 224  1  16 ado
# b $STORAGE              28 240  1  16 adp

c $CONSOLE              29   0  1  32 fb%d
b $STORAGE              29   0  1   1 aztcd

c $ROOT                 30   0  1   1 socksys
c $ROOT                 30   1  1   1 spx
c $ROOT                 30  32  1   1 inet/ip
c $ROOT                 30  33  1   1 inet/icmp
c $ROOT                 30  34  1   1 inet/ggp
c $ROOT                 30  35  1   1 inet/ipip
c $ROOT                 30  36  1   1 inet/tcp
c $ROOT                 30  37  1   1 inet/egp
c $ROOT                 30  38  1   1 inet/pup
c $ROOT                 30  39  1   1 inet/udp
c $ROOT                 30  40  1   1 inet/idp
c $ROOT                 30  41  1   1 inet/rawip
l                                     ip    inet/ip
l                                     icmp  inet/icmp
l                                     ggp   inet/ggp
l                                     ipip  inet/ipip
l                                     tcp   inet/tcp
l                                     egp   inet/egp
l                                     pup   inet/pup
l                                     udp   inet/udp
l                                     idp   inet/idp
l                                     rawip inet/rawip
l                                     inet/arp udp
l                                     inet/rip udp
l                                     nfsd socksys
l                                     X0R null

b $STORAGE              30   0  1   1 cm205cd

c $CONSOLE              31   0  1   1 mpu401data
c $CONSOLE              31   1  1   1 mpu401stat
b $STORAGE              31   0  1   8 rom%d
b $STORAGE              31   8  1   8 rrom%d
b $STORAGE              31  16  1   8 flash%d
b $STORAGE              31  24  1   8 rflash%d

c $SERIAL               32   0  1  16 ttyX%d
b $STORAGE              32   0  1   1 cm206cd

c $SERIAL               33   0  1  16 cux%d
b $STORAGE              33   0  1  33 hde
b $STORAGE              33  64  1  33 hdf

c $ROOT                 34   0  1  16 scc%d
b $STORAGE              34   0  1  33 hdg
b $STORAGE              34  64  1  33 hdh

c $CONSOLE              35   0  1   4 midi%d
c $CONSOLE              35  64  1   4 rmidi%d
c $CONSOLE              35 128  1   4 smpte%d
b $STORAGE              35   0  1   1 slram

c $ROOT                 36   0  1   1 route
c $ROOT                 36   1  1   1 skip
c $ROOT                 36   2  1   1 fwmonitor
c $ROOT                 36  16  1  16 tap%d
b $STORAGE              36   0  1  64 eda
b $STORAGE              36  64  1  64 edb

c $STORAGE              37   0  1 128 ht%d
c $STORAGE              37 128  1 128 nht%d
b $STORAGE              37   0  1   1 z2ram

c $ROOT                 38   0  1  16 mlanai%d

c $ROOT                 39   0  1  16 ml16pa-a%d
c $ROOT                 39  16  1   1 ml16pa-d
c $ROOT                 39  17  1   3 ml16pa-c%d
c $ROOT                 39  32  1  16 ml16pb-a%d
c $ROOT                 39  48  1   1 ml16pb-d
c $ROOT                 39  49  1   3 ml16pb-c%d

c $CONSOLE              40   0  1   1 mmetfgrab

# Obsolete (see devices.txt).
#b $ROOT                 40   0  1  16 eza

c $ROOT                 41   0  1   1 yamm
b $STORAGE              41   0  1   1 bpcd

# Stay away from major 42!  Don't add any entries which use it!  I mean it!

c $SERIAL               43   0  1  64 ttyI%d
b $STORAGE              43   0  1 128 nb%d

c $SERIAL               44   0  1  64 cui%d
b $STORAGE              44   0  1  16 ftla
b $STORAGE              44  16  1  16 ftlb
b $STORAGE              44  32  1  16 ftlc
b $STORAGE              44  48  1  16 ftld
b $STORAGE              44  64  1  16 ftle
b $STORAGE              44  80  1  16 ftlf
b $STORAGE              44  96  1  16 ftlg
b $STORAGE              44 112  1  16 ftlh
b $STORAGE              44 128  1  16 ftli
b $STORAGE              44 144  1  16 ftlj
b $STORAGE              44 160  1  16 ftlk
b $STORAGE              44 176  1  16 ftll
b $STORAGE              44 192  1  16 ftlm
b $STORAGE              44 208  1  16 ftln
b $STORAGE              44 224  1  16 ftlo
b $STORAGE              44 240  1  16 ftlp

c $ROOT                 45   0  1  64 isdn%d
c $ROOT                 45  64  1  64 isdnctrl%d
c $ROOT                 45 128  1  64 ippp%d
c $ROOT                 45 255  1   1 isdninfo
b $STORAGE              45   0  1  16 pda
b $STORAGE              45  16  1  16 pdb
b $STORAGE              45  32  1  16 pdc
b $STORAGE              45  48  1  16 pdd

c $SERIAL               46   0  1  16 ttyR%d
b $STORAGE              46   0  1   4 pcd%d

c $SERIAL               47   0  1  16 cur%d
b $STORAGE              47   0  1   4 pf%d

c $SERIAL               48   0  1  16 ttyL%d
c $SERIAL               49   0  1  16 cul%d

c $SERIAL               51   0  1  16 bc%d

c $ROOT                 52   0  1   4 dcbri%d

c $ROOT                 53   0  1   3 pd_bdm%d
c $ROOT                 53   3  1   3 icd_bdm%d

c $SERIAL               54   0  1   3 holter%d

c $ROOT                 55   0  1   1 dsp56k

c $ROOT                 56   0  1   1 adb
b $STORAGE              56   0  1  33 hdi
b $STORAGE              56  64  1  33 hdj

c $SERIAL               57   0  1  16 ttyP%d
b $STORAGE              57   0  1  33 hdk
b $STORAGE              57  64  1  33 hdl

c $SERIAL               58   0  1  16 cup%d

c $ROOT                 59   0  1   1 firewall

# Conflicts with parallel-port disks (see devices.txt).
#b $STORAGE              59   0  1   8 pda%d
#b $STORAGE              59   0  1   8 rpda%d

# Here there be dragons.

c $ROOT                 64   0  1   1 enskip
b $STORAGE              64   0  1   1 scramdisk/master
b $STORAGE              64   1  1 254 scramdisk/%d

c $ROOT                 65   0  1   4 plink%d
c $ROOT                 65  64  1   4 rplink%d
c $ROOT                 65 128  1   4 plink%dd
c $ROOT                 65 192  1   4 rplink%dd
b $STORAGE              65   0  1  16 sdq
b $STORAGE              65  16  1  16 sdr
b $STORAGE              65  32  1  16 sds
b $STORAGE              65  48  1  16 sdt
b $STORAGE              65  64  1  16 sdu
b $STORAGE              65  80  1  16 sdv
b $STORAGE              65  96  1  16 sdw
b $STORAGE              65 112  1  16 sdx
b $STORAGE              65 128  1  16 sdy
b $STORAGE              65 144  1  16 sdz
b $STORAGE              65 160  1  16 sdaa
b $STORAGE              65 176  1  16 sdab
b $STORAGE              65 192  1  16 sdac
b $STORAGE              65 208  1  16 sdad
b $STORAGE              65 224  1  16 sdae
b $STORAGE              65 240  1  16 sdaf

c $ROOT                 66   0  1  16 yppcpci%d
b $STORAGE              66   0  1  16 sdag
b $STORAGE              66  16  1  16 sdah
b $STORAGE              66  32  1  16 sdai
b $STORAGE              66  48  1  16 sdaj
b $STORAGE              66  64  1  16 sdak
b $STORAGE              66  80  1  16 sdal
b $STORAGE              66  96  1  16 sdam
b $STORAGE              66 112  1  16 sdan
b $STORAGE              66 128  1  16 sdao
b $STORAGE              66 144  1  16 sdap
b $STORAGE              66 160  1  16 sdaq
b $STORAGE              66 176  1  16 sdar
b $STORAGE              66 192  1  16 sdas
b $STORAGE              66 208  1  16 sdat
b $STORAGE              66 224  1  16 sdau
b $STORAGE              66 240  1  16 sdav

c $STORAGE              67   0  1   1 cfs0
b $STORAGE              67   0  1  16 sdaw
b $STORAGE              67  16  1  16 sdax
b $STORAGE              67  32  1  16 sday
b $STORAGE              67  48  1  16 sdaz
b $STORAGE              67  64  1  16 sdba
b $STORAGE              67  80  1  16 sdbb
b $STORAGE              67  96  1  16 sdbc
b $STORAGE              67 112  1  16 sdbd
b $STORAGE              67 128  1  16 sdbe
b $STORAGE              67 144  1  16 sdbf
b $STORAGE              67 160  1  16 sdbg
b $STORAGE              67 176  1  16 sdbh
b $STORAGE              67 192  1  16 sdbi
b $STORAGE              67 208  1  16 sdbj
b $STORAGE              67 224  1  16 sdbk
b $STORAGE              67 240  1  16 sdbl

c $ROOT                 68   0  1   1 capi20
c $ROOT                 68   1  1  20 capi20.%02d
b $STORAGE              68   0  1  16 sdbm
b $STORAGE              68  16  1  16 sdbn
b $STORAGE              68  32  1  16 sdbo
b $STORAGE              68  48  1  16 sdbp
b $STORAGE              68  64  1  16 sdbq
b $STORAGE              68  80  1  16 sdbr
b $STORAGE              68  96  1  16 sdbs
b $STORAGE              68 112  1  16 sdbt
b $STORAGE              68 128  1  16 sdbu
b $STORAGE              68 144  1  16 sdbv
b $STORAGE              68 160  1  16 sdbw
b $STORAGE              68 176  1  16 sdbx
b $STORAGE              68 192  1  16 sdby
b $STORAGE              68 208  1  16 sdbz
b $STORAGE              68 224  1  16 sdca
b $STORAGE              68 240  1  16 sdcb

c $ROOT                 69   0  1   1 ma16
b $STORAGE              69   0  1  16 sdcc
b $STORAGE              69  16  1  16 sdcd
b $STORAGE              69  32  1  16 sdce
b $STORAGE              69  48  1  16 sdcf
b $STORAGE              69  64  1  16 sdcg
b $STORAGE              69  80  1  16 sdch
b $STORAGE              69  96  1  16 sdci
b $STORAGE              69 112  1  16 sdcj
b $STORAGE              69 128  1  16 sdck
b $STORAGE              69 144  1  16 sdcl
b $STORAGE              69 160  1  16 sdcm
b $STORAGE              69 176  1  16 sdcn
b $STORAGE              69 192  1  16 sdco
b $STORAGE              69 208  1  16 sdcp
b $STORAGE              69 224  1  16 sdcq
b $STORAGE              69 240  1  16 sdcr

c $ROOT                 70   0  1   1 apscfg
c $ROOT                 70   1  1   1 apsauth
c $ROOT                 70   2  1   1 apslog
c $ROOT                 70   3  1   1 apsdbg
c $ROOT                 70  64  1   1 apsisdn
c $ROOT                 70  65  1   1 apsasync
c $ROOT                 70 128  1   1 apsmon
b $STORAGE              70   0  1  16 sdcs
b $STORAGE              70  16  1  16 sdct
b $STORAGE              70  32  1  16 sdcu
b $STORAGE              70  48  1  16 sdcv
b $STORAGE              70  64  1  16 sdcw
b $STORAGE              70  80  1  16 sdcx
b $STORAGE              70  96  1  16 sdcy
b $STORAGE              70 112  1  16 sdcz
b $STORAGE              70 128  1  16 sdda
b $STORAGE              70 144  1  16 sddb
b $STORAGE              70 160  1  16 sddc
b $STORAGE              70 176  1  16 sddd
b $STORAGE              70 192  1  16 sdde
b $STORAGE              70 208  1  16 sddf
b $STORAGE              70 224  1  16 sddg
b $STORAGE              70 240  1  16 sddh

c $SERIAL               71   0  1 256 ttyF%d
b $STORAGE              71   0  1  16 sddi
b $STORAGE              71  16  1  16 sddj
b $STORAGE              71  32  1  16 sddk
b $STORAGE              71  48  1  16 sddl
b $STORAGE              71  64  1  16 sddm
b $STORAGE              71  80  1  16 sddn
b $STORAGE              71  96  1  16 sddo
b $STORAGE              71 112  1  16 sddp
b $STORAGE              71 128  1  16 sddq
b $STORAGE              71 144  1  16 sddr
b $STORAGE              71 160  1  16 sdds
b $STORAGE              71 176  1  16 sddt
b $STORAGE              71 192  1  16 sddu
b $STORAGE              71 208  1  16 sddv
b $STORAGE              71 224  1  16 sddw
b $STORAGE              71 240  1  16 sddx

c $SERIAL               72   0  1 256 cuf%d

c $ROOT                 73   0  4   4 ip2ipl%d
c $ROOT                 73   1  4   4 ip2stat%d

c $ROOT                 74   0  1  16 SCI/%d

c $SERIAL               75   0  1  16 ttyW%d

c $SERIAL               76   0  1  16 cuw%d

c $ALLREAD              77   0  1   1 qng

# Conflict with isicom driver (see devices.txt).
#c $SERIAL               78   0  1  16 ttyM%x
#c $SERIAL               79   0  1  16 cum%d

c $CONSOLE              80   0  1   1 at200
b $STORAGE              80   0  1  16 i2o/hda
b $STORAGE              80  16  1  16 i2o/hdb
b $STORAGE              80  32  1  16 i2o/hdc
b $STORAGE              80  48  1  16 i2o/hdd
b $STORAGE              80  64  1  16 i2o/hde
b $STORAGE              80  80  1  16 i2o/hdf
b $STORAGE              80  96  1  16 i2o/hdg
b $STORAGE              80 112  1  16 i2o/hdh
b $STORAGE              80 128  1  16 i2o/hdi
b $STORAGE              80 144  1  16 i2o/hdj
b $STORAGE              80 160  1  16 i2o/hdk
b $STORAGE              80 176  1  16 i2o/hdl
b $STORAGE              80 192  1  16 i2o/hdm
b $STORAGE              80 208  1  16 i2o/hdn
b $STORAGE              80 224  1  16 i2o/hdo
b $STORAGE              80 240  1  16 i2o/hdp

c $CONSOLE              81   0  1  64 video%d
c $CONSOLE              81  64  1  64 radio%d
c $CONSOLE              81 192  1  32 vtx%d
c $CONSOLE              81 224  1  32 vbi%d

b $STORAGE              81   0  1  16 i2o/hdq
b $STORAGE              81  16  1  16 i2o/hdr
b $STORAGE              81  32  1  16 i2o/hds
b $STORAGE              81  48  1  16 i2o/hdt
b $STORAGE              81  64  1  16 i2o/hdu
b $STORAGE              81  80  1  16 i2o/hdv
b $STORAGE              81  96  1  16 i2o/hdw
b $STORAGE              81 112  1  16 i2o/hdx
b $STORAGE              81 128  1  16 i2o/hdy
b $STORAGE              81 144  1  16 i2o/hdz
b $STORAGE              81 160  1  16 i2o/hdaa
b $STORAGE              81 176  1  16 i2o/hdab
b $STORAGE              81 192  1  16 i2o/hdac
b $STORAGE              81 208  1  16 i2o/hdad
b $STORAGE              81 224  1  16 i2o/hdae
b $STORAGE              81 240  1  16 i2o/hdaf

c $CONSOLE              82   0  1   4 winradio%d

b $STORAGE              82   0  1  16 i2o/hdag
b $STORAGE              82  16  1  16 i2o/hdah
b $STORAGE              82  32  1  16 i2o/hdai
b $STORAGE              82  48  1  16 i2o/hdaj
b $STORAGE              82  64  1  16 i2o/hdak
b $STORAGE              82  80  1  16 i2o/hdal
b $STORAGE              82  96  1  16 i2o/hdam
b $STORAGE              82 112  1  16 i2o/hdan
b $STORAGE              82 128  1  16 i2o/hdao
b $STORAGE              82 144  1  16 i2o/hdap
b $STORAGE              82 160  1  16 i2o/hdaq
b $STORAGE              82 176  1  16 i2o/hdar
b $STORAGE              82 192  1  16 i2o/hdas
b $STORAGE              82 208  1  16 i2o/hdat
b $STORAGE              82 224  1  16 i2o/hdau
b $STORAGE              82 240  1  16 i2o/hdav

c $CONSOLE              83   0  1  16 mga_vid%d

b $STORAGE              83   0  1  16 i2o/hdaw
b $STORAGE              83  16  1  16 i2o/hdax
b $STORAGE              83  32  1  16 i2o/hday
b $STORAGE              83  48  1  16 i2o/hdaz
b $STORAGE              83  64  1  16 i2o/hdba
b $STORAGE              83  80  1  16 i2o/hdbb
b $STORAGE              83  96  1  16 i2o/hdbc
b $STORAGE              83 112  1  16 i2o/hdbd
b $STORAGE              83 128  1  16 i2o/hdbe
b $STORAGE              83 144  1  16 i2o/hdbf
b $STORAGE              83 160  1  16 i2o/hdbg
b $STORAGE              83 176  1  16 i2o/hdbh
b $STORAGE              83 192  1  16 i2o/hdbi
b $STORAGE              83 208  1  16 i2o/hdbj
b $STORAGE              83 224  1  16 i2o/hdbk
b $STORAGE              83 240  1  16 i2o/hdbl

c $ROOT                 84   0  1   2 ihcp%d

b $STORAGE              84   0  1  16 i2o/hdbm
b $STORAGE              84  16  1  16 i2o/hdbn
b $STORAGE              84  32  1  16 i2o/hdbo
b $STORAGE              84  48  1  16 i2o/hdbp
b $STORAGE              84  64  1  16 i2o/hdbq
b $STORAGE              84  80  1  16 i2o/hdbr
b $STORAGE              84  96  1  16 i2o/hdbs
b $STORAGE              84 112  1  16 i2o/hdbt
b $STORAGE              84 128  1  16 i2o/hdbu
b $STORAGE              84 144  1  16 i2o/hdbv
b $STORAGE              84 160  1  16 i2o/hdbw
b $STORAGE              84 176  1  16 i2o/hdbx
b $STORAGE              84 192  1  16 i2o/hdby
b $STORAGE              84 208  1  16 i2o/hdbz
b $STORAGE              84 224  1  16 i2o/hdca
b $STORAGE              84 240  1  16 i2o/hdcb

c $ROOT                 85   0  1   1 shmiq
c $ROOT                 85   1  1   8 qcntl%d

b $STORAGE              85   0  1  16 i2o/hdcc
b $STORAGE              85  16  1  16 i2o/hdcd
b $STORAGE              85  32  1  16 i2o/hdce
b $STORAGE              85  48  1  16 i2o/hdcf
b $STORAGE              85  64  1  16 i2o/hdcg
b $STORAGE              85  80  1  16 i2o/hdch
b $STORAGE              85  96  1  16 i2o/hdci
b $STORAGE              85 112  1  16 i2o/hdcj
b $STORAGE              85 128  1  16 i2o/hdck
b $STORAGE              85 144  1  16 i2o/hdcl
b $STORAGE              85 160  1  16 i2o/hdcm
b $STORAGE              85 176  1  16 i2o/hdcn
b $STORAGE              85 192  1  16 i2o/hdco
b $STORAGE              85 208  1  16 i2o/hdcp
b $STORAGE              85 224  1  16 i2o/hdcq
b $STORAGE              85 240  1  16 i2o/hdcr

c $STORAGE              86   0  1   8 sch%d

b $STORAGE              86   0  1  16 i2o/hdcs
b $STORAGE              86  16  1  16 i2o/hdct
b $STORAGE              86  32  1  16 i2o/hdcu
b $STORAGE              86  48  1  16 i2o/hdcv
b $STORAGE              86  64  1  16 i2o/hdcw
b $STORAGE              86  80  1  16 i2o/hdcx
b $STORAGE              86  96  1  16 i2o/hdcy
b $STORAGE              86 112  1  16 i2o/hdcz
b $STORAGE              86 128  1  16 i2o/hdda
b $STORAGE              86 144  1  16 i2o/hddb
b $STORAGE              86 160  1  16 i2o/hddc
b $STORAGE              86 176  1  16 i2o/hddd
b $STORAGE              86 192  1  16 i2o/hdde
b $STORAGE              86 208  1  16 i2o/hddf
b $STORAGE              86 224  1  16 i2o/hddg
b $STORAGE              86 240  1  16 i2o/hddh

c $STORAGE              87   0  1   8 controla%d

b $STORAGE              87   0  1  16 i2o/hddi
b $STORAGE              87  16  1  16 i2o/hddj
b $STORAGE              87  32  1  16 i2o/hddk
b $STORAGE              87  48  1  16 i2o/hddl
b $STORAGE              87  64  1  16 i2o/hddm
b $STORAGE              87  80  1  16 i2o/hddn
b $STORAGE              87  96  1  16 i2o/hddo
b $STORAGE              87 112  1  16 i2o/hddp
b $STORAGE              87 128  1  16 i2o/hddq
b $STORAGE              87 144  1  16 i2o/hddr
b $STORAGE              87 160  1  16 i2o/hdds
b $STORAGE              87 176  1  16 i2o/hddt
b $STORAGE              87 192  1  16 i2o/hddu
b $STORAGE              87 208  1  16 i2o/hddv
b $STORAGE              87 224  1  16 i2o/hddw
b $STORAGE              87 240  1  16 i2o/hddx

c $SERIAL               88   0  1   8 comx%d

b $STORAGE              88   0  1  33 hdm
b $STORAGE              88  64  1  33 hdn

c $ROOT                 89   0  1   8 i2c-%d

b $STORAGE              89   0  1  33 hdo
b $STORAGE              89  64  1  33 hdp

c $STORAGE              90   0  2  16 mtd%d
c $STORAGE              90   1  2  16 mtdr%d

b $STORAGE              90   0  1  33 hdq
b $STORAGE              90  64  1  33 hdr

c $ROOT                 91   0  1  16 can%d

b $STORAGE              91   0  1  33 hds
b $STORAGE              91  64  1  33 hdt

b $STORAGE              92   0  1  64 ppdd%d

c $CONSOLE              93   0  1   8 iscc%d
c $CONSOLE              93 128  1   8 isccctl%d

b $STORAGE              93   0 16   1 nftla
b $STORAGE              93  16 16  15 nftl%c a

c $CONSOLE              94   0  1   8 dcxx%d

# devices.txt gives us 64 numbered dasd devices, with apparently up to three
# lettered partitions on each; the older s390-specific file used 64 lettered
# devices with up to three numbered partitions on each; the second partition on
# the second disk is now dasd1b (94/6) instead of dasdb2 (94/6)
b $STORAGE              94   0  4  64 dasd%d
b $STORAGE              94   1  4  64 dasd%da
b $STORAGE              94   2  4  64 dasd%db
b $STORAGE              94   3  4  64 dasd%dc

c $ROOT                 95   0  1   1 ipl
c $ROOT                 95   1  1   1 ipnat
c $ROOT                 95   2  1   1 ipstate
c $ROOT                 95   3  1   1 ipauth

c $STORAGE              96   0  1  16 pt%d
c $STORAGE              96 128  1  16 npt%d

b $STORAGE              96   0  1  16 inftla
b $STORAGE              96  16  1  16 inftlb
b $STORAGE              96  32  1  16 inftlc
b $STORAGE              96  48  1  16 inftld
b $STORAGE              96  64  1  16 inftle
b $STORAGE              96  80  1  16 inftlf
b $STORAGE              96  96  1  16 inftlg
b $STORAGE              96 112  1  16 inftlh
b $STORAGE              96 128  1  16 inftli
b $STORAGE              96 144  1  16 inftlj
b $STORAGE              96 160  1  16 inftlk
b $STORAGE              96 176  1  16 inftll
b $STORAGE              96 192  1  16 inftlm
b $STORAGE              96 208  1  16 inftln
b $STORAGE              96 224  1  16 inftlo
b $STORAGE              96 240  1  16 inftlp

c $STORAGE              97   0  1   4 pg%d
b $STORAGE              97   0  1   4 pktcdvd%d

c $ROOT                 98   0  1   4 comedi%d
b $STORAGE              98   0  1  16 ubda
b $STORAGE              98  16  1  16 ubdb
b $STORAGE              98  32  1  16 ubdc
b $STORAGE              98  48  1  16 ubdd
b $STORAGE              98  64  1  16 ubde
b $STORAGE              98  80  1  16 ubdf
b $STORAGE              98  96  1  16 ubdg
b $STORAGE              98 112  1  16 ubdh
b $STORAGE              98 128  1  16 ubdi
b $STORAGE              98 144  1  16 ubdj
b $STORAGE              98 160  1  16 ubdk
b $STORAGE              98 176  1  16 ubdl
b $STORAGE              98 192  1  16 ubdm
b $STORAGE              98 208  1  16 ubdn
b $STORAGE              98 224  1  16 ubdo
b $STORAGE              98 240  1  16 ubdp

c $PRINTER              99   0  1   8 parport%d
b $STORAGE              99   0  1   1 jsfd

c $CONSOLE             100   0  1   8 phone%d

c $ROOT                101   0  1   1 mdspstat
c $ROOT                101   1  1  16 mdsp%d 1

b $STORAGE             101   0  1   1 amiraid/ar0
b $STORAGE             101   1  1  15 amiraid/ar0p%d
b $STORAGE             101  16  1   1 amiraid/ar1
b $STORAGE             101  17  1  15 amiraid/ar1p%d
b $STORAGE             101  32  1   1 amiraid/ar2
b $STORAGE             101  33  1  15 amiraid/ar2p%d
b $STORAGE             101  48  1   1 amiraid/ar3
b $STORAGE             101  49  1  15 amiraid/ar3p%d
b $STORAGE             101  64  1   1 amiraid/ar4
b $STORAGE             101  65  1  15 amiraid/ar4p%d
b $STORAGE             101  80  1   1 amiraid/ar5
b $STORAGE             101  81  1  15 amiraid/ar5p%d
b $STORAGE             101  96  1   1 amiraid/ar6
b $STORAGE             101  97  1  15 amiraid/ar6p%d
b $STORAGE             101 112  1   1 amiraid/ar7
b $STORAGE             101 113  1  15 amiraid/ar7p%d
b $STORAGE             101 128  1   1 amiraid/ar8
b $STORAGE             101 129  1  15 amiraid/ar8p%d
b $STORAGE             101 144  1   1 amiraid/ar9
b $STORAGE             101 145  1  15 amiraid/ar9p%d
b $STORAGE             101 160  1   1 amiraid/ar10
b $STORAGE             101 161  1  15 amiraid/ar10p%d
b $STORAGE             101 176  1   1 amiraid/ar11
b $STORAGE             101 177  1  15 amiraid/ar11p%d
b $STORAGE             101 192  1   1 amiraid/ar12
b $STORAGE             101 193  1  15 amiraid/ar12p%d
b $STORAGE             101 208  1   1 amiraid/ar13
b $STORAGE             101 209  1  15 amiraid/ar13p%d
b $STORAGE             101 224  1   1 amiraid/ar14
b $STORAGE             101 225  1  15 amiraid/ar14p%d
b $STORAGE             101 240  1   1 amiraid/ar15
b $STORAGE             101 241  1  15 amiraid/ar15p%d

c $ROOT                102   0  1   4 tlk%d

b $STORAGE             102   0  1  16 cbd/a
b $STORAGE             102  16  1  16 cbd/b
b $STORAGE             102  32  1  16 cbd/c
b $STORAGE             102  48  1  16 cbd/d
b $STORAGE             102  64  1  16 cbd/e
b $STORAGE             102  80  1  16 cbd/f
b $STORAGE             102  96  1  16 cbd/g
b $STORAGE             102 112  1  16 cbd/h
b $STORAGE             102 128  1  16 cbd/i
b $STORAGE             102 144  1  16 cbd/j
b $STORAGE             102 160  1  16 cbd/k
b $STORAGE             102 176  1  16 cbd/l
b $STORAGE             102 192  1  16 cbd/m
b $STORAGE             102 208  1  16 cbd/n
b $STORAGE             102 224  1  16 cbd/o
b $STORAGE             102 240  1  16 cbd/p

c $STORAGE             103   0  1   2 nnpfs%d
b $ROOT                103   0  1   1 audit

c $SERIAL              105   0  1  16 ttyV%d

c $SERIAL              106   0  1  16 cuv%d

c $CONSOLE             107   0  1   1 3dfx

c $ROOT                108   0  1   1 ppp

c $CONSOLE             110   0  1   8 srnd%d

c $CONSOLE             111   0  1   8 av%d

c $SERIAL              112   0  1  16 ttyM%x

b $STORAGE             112   0  1   8 iseries/vda
b $STORAGE             112   8  1   8 iseries/vdb
b $STORAGE             112  16  1   8 iseries/vdc
b $STORAGE             112  24  1   8 iseries/vdd
b $STORAGE             112  32  1   8 iseries/vde
b $STORAGE             112  40  1   8 iseries/vdf
b $STORAGE             112  48  1   8 iseries/vdg
b $STORAGE             112  56  1   8 iseries/vdh
b $STORAGE             112  64  1   8 iseries/vdi
b $STORAGE             112  72  1   8 iseries/vdj
b $STORAGE             112  80  1   8 iseries/vdk
b $STORAGE             112  88  1   8 iseries/vdl
b $STORAGE             112  96  1   8 iseries/vdm
b $STORAGE             112 104  1   8 iseries/vdn
b $STORAGE             112 112  1   8 iseries/vdo
b $STORAGE             112 120  1   8 iseries/vdp
b $STORAGE             112 128  1   8 iseries/vdq
b $STORAGE             112 136  1   8 iseries/vdr
b $STORAGE             112 144  1   8 iseries/vds
b $STORAGE             112 152  1   8 iseries/vdt
b $STORAGE             112 160  1   8 iseries/vdu
b $STORAGE             112 168  1   8 iseries/vdv
b $STORAGE             112 176  1   8 iseries/vdw
b $STORAGE             112 184  1   8 iseries/vdx
b $STORAGE             112 192  1   8 iseries/vdy
b $STORAGE             112 200  1   8 iseries/vdz
b $STORAGE             112 208  1   8 iseries/vdaa
b $STORAGE             112 216  1   8 iseries/vdab
b $STORAGE             112 224  1   8 iseries/vdac
b $STORAGE             112 232  1   8 iseries/vdad
b $STORAGE             112 240  1   8 iseries/vdae
b $STORAGE             112 248  1   8 iseries/vdaf

c $SERIAL              113   0  1  16 cum%d

b $STORAGE             113   0  1   8 iseries/vcd%c a

c $ROOT                114   0  1  16 ise%d
c $ROOT                114 128  1  16 isex%d

c $PRINTER             115   0  1   8 tipar%d
c $SERIAL              115   8  1   8 tiser%d
c $ROOT                115  16  1  16 tiusb%d
b $STORAGE             115   0  1 256 nwfs/v%d

b $STORAGE             116   0 16  16 umem/d%d
b $STORAGE             116   1  1  15 umem/d0p%d
b $STORAGE             116  17  1  15 umem/d1p%d
b $STORAGE             116  33  1  15 umem/d2p%d
b $STORAGE             116  49  1  15 umem/d3p%d
b $STORAGE             116  65  1  15 umem/d4p%d
b $STORAGE             116  81  1  15 umem/d5p%d
b $STORAGE             116  97  1  15 umem/d6p%d
b $STORAGE             116 113  1  15 umem/d7p%d
b $STORAGE             116 129  1  15 umem/d8p%d
b $STORAGE             116 145  1  15 umem/d9p%d
b $STORAGE             116 161  1  15 umem/d10p%d
b $STORAGE             116 177  1  15 umem/d11p%d
b $STORAGE             116 193  1  15 umem/d12p%d
b $STORAGE             116 209  1  15 umem/d13p%d
b $STORAGE             116 225  1  15 umem/d14p%d
b $STORAGE             116 241  1  15 umem/d15p%d

c $SERIAL              117   0  1  16 cosa0c%d
c $SERIAL              117  16  1  16 cosa1c%d

c $ROOT                118   0  1   1 ica
c $ROOT                118   1  1  15 ica%d

c $ROOT                119   0  1  10 vnet%d

b $STORAGE             128   0  1  16 sddy
b $STORAGE             128  16  1  16 sddz
b $STORAGE             128  32  1  16 sdea
b $STORAGE             128  48  1  16 sdeb
b $STORAGE             128  64  1  16 sdec
b $STORAGE             128  80  1  16 sded
b $STORAGE             128  96  1  16 sdee
b $STORAGE             128 112  1  16 sdef
b $STORAGE             128 128  1  16 sdeg
b $STORAGE             128 144  1  16 sdeh
b $STORAGE             128 160  1  16 sdei
b $STORAGE             128 176  1  16 sdej
b $STORAGE             128 192  1  16 sdek
b $STORAGE             128 208  1  16 sdel
b $STORAGE             128 224  1  16 sdem
b $STORAGE             128 240  1  16 sden

b $STORAGE             129   0  1  16 sdeo
b $STORAGE             129  16  1  16 sdep
b $STORAGE             129  32  1  16 sdeq
b $STORAGE             129  48  1  16 sder
b $STORAGE             129  64  1  16 sdes
b $STORAGE             129  80  1  16 sdet
b $STORAGE             129  96  1  16 sdeu
b $STORAGE             129 112  1  16 sdev
b $STORAGE             129 128  1  16 sdew
b $STORAGE             129 144  1  16 sdex
b $STORAGE             129 160  1  16 sdey
b $STORAGE             129 176  1  16 sdez
b $STORAGE             129 192  1  16 sdfa
b $STORAGE             129 208  1  16 sdfb
b $STORAGE             129 224  1  16 sdfc
b $STORAGE             129 240  1  16 sdfd

b $STORAGE             130   0  1  16 sdfe
b $STORAGE             130  16  1  16 sdff
b $STORAGE             130  32  1  16 sdfg
b $STORAGE             130  48  1  16 sdfh
b $STORAGE             130  64  1  16 sdfi
b $STORAGE             130  80  1  16 sdfj
b $STORAGE             130  96  1  16 sdfk
b $STORAGE             130 112  1  16 sdfl
b $STORAGE             130 128  1  16 sdfm
b $STORAGE             130 144  1  16 sdfn
b $STORAGE             130 160  1  16 sdfo
b $STORAGE             130 176  1  16 sdfp
b $STORAGE             130 192  1  16 sdfq
b $STORAGE             130 208  1  16 sdfr
b $STORAGE             130 224  1  16 sdfs
b $STORAGE             130 240  1  16 sdft

b $STORAGE             131   0  1  16 sdfu
b $STORAGE             131  16  1  16 sdfv
b $STORAGE             131  32  1  16 sdfw
b $STORAGE             131  48  1  16 sdfx
b $STORAGE             131  64  1  16 sdfy
b $STORAGE             131  80  1  16 sdfz
b $STORAGE             131  96  1  16 sdga
b $STORAGE             131 112  1  16 sdgb
b $STORAGE             131 128  1  16 sdgc
b $STORAGE             131 144  1  16 sdgd
b $STORAGE             131 160  1  16 sdge
b $STORAGE             131 176  1  16 sdgf
b $STORAGE             131 192  1  16 sdgg
b $STORAGE             131 208  1  16 sdgh
b $STORAGE             131 224  1  16 sdgi
b $STORAGE             131 240  1  16 sdgj

b $STORAGE             132   0  1  16 sdgk
b $STORAGE             132  16  1  16 sdgl
b $STORAGE             132  32  1  16 sdgm
b $STORAGE             132  48  1  16 sdgn
b $STORAGE             132  64  1  16 sdgo
b $STORAGE             132  80  1  16 sdgp
b $STORAGE             132  96  1  16 sdgq
b $STORAGE             132 112  1  16 sdgr
b $STORAGE             132 128  1  16 sdgs
b $STORAGE             132 144  1  16 sdgt
b $STORAGE             132 160  1  16 sdgu
b $STORAGE             132 176  1  16 sdgv
b $STORAGE             132 192  1  16 sdgw
b $STORAGE             132 208  1  16 sdgx
b $STORAGE             132 224  1  16 sdgy
b $STORAGE             132 240  1  16 sdgz

b $STORAGE             133   0  1  16 sdha
b $STORAGE             133  16  1  16 sdhb
b $STORAGE             133  32  1  16 sdhc
b $STORAGE             133  48  1  16 sdhd
b $STORAGE             133  64  1  16 sdhe
b $STORAGE             133  80  1  16 sdhf
b $STORAGE             133  96  1  16 sdhg
b $STORAGE             133 112  1  16 sdhh
b $STORAGE             133 128  1  16 sdhi
b $STORAGE             133 144  1  16 sdhj
b $STORAGE             133 160  1  16 sdhk
b $STORAGE             133 176  1  16 sdhl
b $STORAGE             133 192  1  16 sdhm
b $STORAGE             133 208  1  16 sdhn
b $STORAGE             133 224  1  16 sdho
b $STORAGE             133 240  1  16 sdhp

b $STORAGE             134   0  1  16 sdhq
b $STORAGE             134  16  1  16 sdhr
b $STORAGE             134  32  1  16 sdhs
b $STORAGE             134  48  1  16 sdht
b $STORAGE             134  64  1  16 sdhu
b $STORAGE             134  80  1  16 sdhv
b $STORAGE             134  96  1  16 sdhw
b $STORAGE             134 112  1  16 sdhx
b $STORAGE             134 128  1  16 sdhy
b $STORAGE             134 144  1  16 sdhz
b $STORAGE             134 160  1  16 sdia
b $STORAGE             134 176  1  16 sdib
b $STORAGE             134 192  1  16 sdic
b $STORAGE             134 208  1  16 sdid
b $STORAGE             134 224  1  16 sdie
b $STORAGE             134 240  1  16 sdif

b $STORAGE             135   0  1  16 sdig
b $STORAGE             135  16  1  16 sdih
b $STORAGE             135  32  1  16 sdii
b $STORAGE             135  48  1  16 sdij
b $STORAGE             135  64  1  16 sdik
b $STORAGE             135  80  1  16 sdil
b $STORAGE             135  96  1  16 sdim
b $STORAGE             135 112  1  16 sdin
b $STORAGE             135 128  1  16 sdio
b $STORAGE             135 144  1  16 sdip
b $STORAGE             135 160  1  16 sdiq
b $STORAGE             135 176  1  16 sdir
b $STORAGE             135 192  1  16 sdis
b $STORAGE             135 208  1  16 sdit
b $STORAGE             135 224  1  16 sdiu
b $STORAGE             135 240  1  16 sdiv

c $ROOT                144   0  1  64 pppox%d

c $CONSOLE             145   0 64   4 sam%d_mixer
c $CONSOLE             145   1 64   4 sam%d_sequencer
c $CONSOLE             145   2 64   4 sam%d_midi00
c $CONSOLE             145   3 64   4 sam%d_dsp
c $CONSOLE             145   4 64   4 sam%d_audio
c $CONSOLE             145   6 64   4 sam%d_sndstat
c $CONSOLE             145  18 64   4 sam%d_midi01
c $CONSOLE             145  34 64   4 sam%d_midi02
c $CONSOLE             145  50 64   4 sam%d_midi03

c $ROOT                146   0  1   8 scramnet%d
c $CONSOLE             147   0  1   8 aureal%d

b $STORAGE             147   0  1   8 drbd%d

c $SERIAL              148   0  1  16 ttyT%d
c $SERIAL              149   0  1  16 cut%d

c $ROOT                150   0  1  16 rtf%d

c $STORAGE             151   0  1  16 dpti%d

c $STORAGE             152   0  1   1 etherd/ctl
c $STORAGE             152   1  1   1 etherd/err
c $STORAGE             152   2  1   1 etherd/raw

b $STORAGE             152   0  1 256 etherd/%d

c $ROOT                153   0  1  16 spi/spi%d

b $STORAGE             153   0 16  16 emd/%d
b $STORAGE             153   1  1  15 emd/0p%d 1
b $STORAGE             153  17  1  15 emd/1p%d 1
b $STORAGE             153  33  1  15 emd/2p%d 1
b $STORAGE             153  49  1  15 emd/3p%d 1
b $STORAGE             153  65  1  15 emd/4p%d 1
b $STORAGE             153  81  1  15 emd/5p%d 1
b $STORAGE             153  97  1  15 emd/6p%d 1
b $STORAGE             153 113  1  15 emd/7p%d 1
b $STORAGE             153 129  1  15 emd/8p%d 1
b $STORAGE             153 145  1  15 emd/9p%d 1
b $STORAGE             153 161  1  15 emd/10p%d 1
b $STORAGE             153 177  1  15 emd/11p%d 1
b $STORAGE             153 193  1  15 emd/12p%d 1
b $STORAGE             153 209  1  15 emd/13p%d 1
b $STORAGE             153 225  1  15 emd/14p%d 1
b $STORAGE             153 241  1  15 emd/15p%d 1

c $SERIAL              154   0  1 256 ttySR%d
c $SERIAL              155   0  1 256 cusr%d
c $SERIAL              156   0  1 256 ttySR%d 256
c $SERIAL              157   0  1 256 cusr%d  256

c $SERIAL              158   0  1  16 gfax%d

b $STORAGE             160   0  1   1 sx8/0
b $STORAGE             160   1  1  31 sx8/0p%d 1
b $STORAGE             160  32  1   1 sx8/1
b $STORAGE             160  33  1  31 sx8/1p%d 1
b $STORAGE             160  64  1   1 sx8/2
b $STORAGE             160  65  1  31 sx8/2p%d 1
b $STORAGE             160  96  1   1 sx8/3
b $STORAGE             160  97  1  31 sx8/3p%d 1
b $STORAGE             160 128  1   1 sx8/4
b $STORAGE             160 129  1  31 sx8/4p%d 1
b $STORAGE             160 160  1   1 sx8/5
b $STORAGE             160 161  1  31 sx8/5p%d 1
b $STORAGE             160 192  1   1 sx8/6
b $STORAGE             160 193  1  31 sx8/6p%d 1
b $STORAGE             160 224  1   1 sx8/7
b $STORAGE             160 225  1  31 sx8/7p%d 1

c $ROOT                160   0  1  16 gpib%d

b $STORAGE             161   0  1   1 sx8/8
b $STORAGE             161   1  1  31 sx8/8p%d 1
b $STORAGE             161  32  1   1 sx8/9
b $STORAGE             161  33  1  31 sx8/9p%d 1
b $STORAGE             161  64  1   1 sx8/10
b $STORAGE             161  65  1  31 sx8/10p%d 1
b $STORAGE             161  96  1   1 sx8/11
b $STORAGE             161  97  1  31 sx8/11p%d 1
b $STORAGE             161 128  1   1 sx8/12
b $STORAGE             161 129  1  31 sx8/12p%d 1
b $STORAGE             161 160  1   1 sx8/13
b $STORAGE             161 161  1  31 sx8/13p%d 1
b $STORAGE             161 192  1   1 sx8/14
b $STORAGE             161 193  1  31 sx8/14p%d 1
b $STORAGE             161 224  1   1 sx8/15
b $STORAGE             161 225  1  31 sx8/15p%d 1

c $SERIAL              161   0  1  16 ircomm%d
c $PRINTER             161  16  1  16 irlpt%d

c $STORAGE             162   0  1   1 rawctl
c $STORAGE             162   1  1 255 raw/raw%d 1

c $SERIAL              163   0  1  64 bimrt%d

c $SERIAL              164   0  1  64 ttyCH%d
c $SERIAL              165   0  1  64 cuch%d

# Moved to the input subdirectory (see usb).
#c $SERIAL              166   0  1  16 ttyACM%d
#c $SERIAL              167   0  1  16 cuacm%d

c $ROOT                168   0  1  64 ecsa%d
c $ROOT                169   0  1  64 ecsa8-%d

c $ROOT                170   0  1  64 megarac%d

# 171 is used by various ieee1394 drivers.  See http://www.linux1394.org/ for
# more information.

c $SERIAL              172   0  1 128 ttyMX%d
c $SERIAL              172 128  1   1 moxactl
c $SERIAL              173   0  1 128 cumx%d

c $SERIAL              174   0  1  16 ttySI%d
c $SERIAL              175   0  1  16 cusi%d

c $ROOT                176   0  1  16 nfastpci%d

c $ROOT                177   0  1  16 pcilynx/aux%d
c $ROOT                177  16  1  16 pcilynx/rom%d
c $ROOT                177  32  1  16 pcilynx/ram%d

c $ROOT                178   0  1  16 clanvi%d

c $CONSOLE             179   0  1  16 dvxirq%d

# Definitions moved to usb config file.
#c $PRINTER             180   0  1  16 usb/lp%d
#c $CONSOLE             180  16  1  16 usb/mouse%d
#c $ROOT                180  32  1  16 usb/ez%d
#c $CONSOLE             180  48  1  16 usb/scanner%d

b $STORAGE             180   0  1   8 uba
b $STORAGE             180   8  1   8 ubb
b $STORAGE             180  16  1   8 ubc
b $STORAGE             180  24  1   8 ubd
b $STORAGE             180  32  1   8 ube
b $STORAGE             180  40  1   8 ubf
b $STORAGE             180  48  1   8 ubg
b $STORAGE             180  56  1   8 ubh
b $STORAGE             180  64  1   8 ubi
b $STORAGE             180  72  1   8 ubj
b $STORAGE             180  80  1   8 ubk
b $STORAGE             180  88  1   8 ubl
b $STORAGE             180  96  1   8 ubm
b $STORAGE             180 104  1   8 ubn
b $STORAGE             180 112  1   8 ubo
b $STORAGE             180 120  1   8 ubp

c $ALLREAD             181   0  1  16 pcfclock%d
c $ROOT                182   0  1  16 pethr%d

c $ROOT                183   0  1  16 ss5136dn%d
c $ROOT                184   0  1  16 pevss%d
c $STORAGE             185   0  1  16 intermezzo%d
c $ROOT                186   0  1  16 obd%d
c $ROOT                187   0  1  16 deskey%d

c $SERIAL              188   0  1  16 ttyUSB%d
c $SERIAL              189   0  1  16 cuusb%d

c $CONSOLE             190   0  1  16 kctt%d

c $ROOT                192   0  1   1 profile
c $ROOT                192   1  1  16 profile%d 0
c $ROOT                193   0  1   1 trace
c $ROOT                193   1  1  16 trace%d 0

c $CONSOLE             194   0 16  16 mvideo/status%d
c $CONSOLE             194   1 16  16 mvideo/stream%d
c $CONSOLE             194   2 16  16 mvideo/frame%d
c $CONSOLE             194   3 16  16 mvideo/rawframe%d
c $CONSOLE             194   4 16  16 mvideo/codec0%d
c $CONSOLE             194   5 16  16 mvideo/video4linux%d

c $CONSOLE             195   0  1 255 nvidia%d
c $CONSOLE             195 255  1   1 nvidiactl

c $ROOT                196   0  1  51 tor/%d

c $ROOT                197   0  1 128 tnf/t%d
c $ROOT                197 128  1   1 tnf/status
c $ROOT                197 130  1   1 tnf/trace

c $ROOT                198   0  1   8 tpmp2/%d

# We can skip 199 because Veritas user-land handles it.

c $STORAGE             200   0  1   1 vx/config
c $STORAGE             200   1  1   1 vx/trace
c $STORAGE             200   2  1   1 vx/iod
c $STORAGE             200   3  1   1 vx/info
c $STORAGE             200   4  1   1 vx/task
c $STORAGE             200   5  1   1 vx/taskmon

# We can skip 201 because Veritas user-land handles it.

c $ROOT                202   0  1  16 cpu/%d/msr
c $ROOT                203   0  1  16 cpu/%d/cpuid

c $SERIAL              204   0  1   4 ttyLU%d 0
c $SERIAL              204   4  1   1 ttyFB%d 0
c $SERIAL              204   5  1   3 ttySA%d 0
c $SERIAL              204   8  1   4 ttySC%d 0
c $SERIAL              204  12  1   4 ttyFW%d 0
c $SERIAL              204  16  1  16 ttyAM%d 0
c $SERIAL              204  32  1   8 ttyDB%d 0
c $TTY                 204  40  1   1 ttySG0
c $SERIAL              204  41  1   3 ttySMX%d
c $SERIAL              204  44  1   2 ttyMM%d
c $SERIAL              204  46  1   4 ttyCPM%d
c $SERIAL              204  50  1  32 ttyIOC4%d
c $SERIAL              204  82  1   2 ttyVR%d

c $SERIAL              205   0  1   4 culu%d 0
c $SERIAL              205   4  1   1 cufb%d 0
c $SERIAL              205   5  1   3 cusa%d 0
c $SERIAL              205   8  1   4 cusc%d 0
c $SERIAL              205  12  1   4 cufw%d 0
c $SERIAL              205  16  1  16 cuam%d 0
c $SERIAL              205  32  1   8 cudb%d 0
c $TTY                 205  40  1   1 cusg0
c $SERIAL              205  41  1   3 ttycusmx%d 0
c $SERIAL              205  44  1   5 cucpm%d
c $SERIAL              205  50  1  32 cuioc4%d
c $SERIAL              205  82  1   2 cuvr%d

c $STORAGE             206   0  1  32 osst%d 0
c $STORAGE             206  32  1  32 osst%dl 0
c $STORAGE             206  64  1  32 osst%dm 0
c $STORAGE             206  96  1  32 osst%da 0
c $STORAGE             206 128  1  32 nosst%d 0
c $STORAGE             206 160  1  32 nosst%dl 0
c $STORAGE             206 196  1  32 nosst%dm 0
c $STORAGE             206 224  1  32 nosst%da 0

c $ROOT                207   0  1   1 cpqhealth/cpqw
c $ROOT                207   1  1   1 cpqhealth/crom
c $ROOT                207   2  1   1 cpqhealth/cdt
c $ROOT                207   3  1   1 cpqhealth/cevt
c $ROOT                207   4  1   1 cpqhealth/casr
c $ROOT                207   5  1   1 cpqhealth/cecc
c $ROOT                207   6  1   1 cpqhealth/cmca
c $ROOT                207   7  1   1 cpqhealth/ccsm
c $ROOT                207   8  1   1 cpqhealth/cnmi
c $ROOT                207   9  1   1 cpqhealth/css
c $ROOT                207  10  1   1 cpqhealth/cram
c $ROOT                207  11  1   1 cpqhealth/cpci

c $SERIAL              208   0  1 256 ttyU%d
c $SERIAL              209   0  1 256 cuu%d

c $SERIAL              210   0 10   4 sbei/wxcfg%d 0
c $SERIAL              210   1 10   4 sbei/dld%d 0
c $SERIAL              210   2  1   4 sbei/wan0%d 0
c $SERIAL              210   6  1   4 sbei/wanc0%d 0
c $SERIAL              210  12  1   4 sbei/wan1%d 0
c $SERIAL              210  16  1   4 sbei/wanc1%d 0
c $SERIAL              210  22  1   4 sbei/wan2%d 0
c $SERIAL              210  26  1   4 sbei/wanc2%d 0
c $SERIAL              210  32  1   4 sbei/wan3%d 0
c $SERIAL              210  36  1   4 sbei/wanc3%d 0

c $SERIAL              211   0  1   8 addinum/cpci1500/%d

c $ROOT                212   0  9   7 dvb/adapter0/video%d
c $ROOT                212   1  9   7 dvb/adapter0/audio%d
c $ROOT                212   2  9   7 dvb/adapter0/sec%d
c $ROOT                212   3  9   7 dvb/adapter0/frontend%d
c $ROOT                212   4  9   7 dvb/adapter0/demux%d
c $ROOT                212   5  9   7 dvb/adapter0/dvr%d
c $ROOT                212   6  9   7 dvb/adapter0/ca%d
c $ROOT                212   7  9   7 dvb/adapter0/net%d
c $ROOT                212   8  9   7 dvb/adapter0/osd%d
c $ROOT                212  64  9   7 dvb/adapter1/video%d
c $ROOT                212  65  9   7 dvb/adapter1/audio%d
c $ROOT                212  66  9   7 dvb/adapter1/sec%d
c $ROOT                212  67  9   7 dvb/adapter1/frontend%d
c $ROOT                212  68  9   7 dvb/adapter1/demux%d
c $ROOT                212  69  9   7 dvb/adapter1/dvr%d
c $ROOT                212  70  9   7 dvb/adapter1/ca%d
c $ROOT                212  71  9   7 dvb/adapter1/net%d
c $ROOT                212  72  9   7 dvb/adapter1/osd%d
c $ROOT                212 128  9   7 dvb/adapter2/video%d
c $ROOT                212 129  9   7 dvb/adapter2/audio%d
c $ROOT                212 130  9   7 dvb/adapter2/sec%d
c $ROOT                212 131  9   7 dvb/adapter2/frontend%d
c $ROOT                212 132  9   7 dvb/adapter2/demux%d
c $ROOT                212 133  9   7 dvb/adapter2/dvr%d
c $ROOT                212 134  9   7 dvb/adapter2/ca%d
c $ROOT                212 135  9   7 dvb/adapter2/net%d
c $ROOT                212 136  9   7 dvb/adapter2/osd%d
c $ROOT                212 192  9   7 dvb/adapter3/video%d
c $ROOT                212 193  9   7 dvb/adapter3/audio%d
c $ROOT                212 194  9   7 dvb/adapter3/sec%d
c $ROOT                212 195  9   6 dvb/adapter3/frontend%d
c $ROOT                212 196  9   6 dvb/adapter3/demux%d
c $ROOT                212 197  9   6 dvb/adapter3/dvr%d
c $ROOT                212 198  9   6 dvb/adapter3/ca%d
c $ROOT                212 199  9   6 dvb/adapter3/net%d
c $ROOT                212 200  9   6 dvb/adapter3/osd%d

c $SERIAL              216   0  1  16 ttyUB%d
c $SERIAL              217   0  1  16 cuub%d

c $ROOT                218   0  1  16 logicalco/bci/%d
c $ROOT                219   0  1  16 logicalco/dci1300/%d

c $ROOT                220   0  2  16 myricom/gm%d 0
c $ROOT                220   1  2  16 myricom/gmp%d 0

c $ROOT                221   0  1   4 bus/vme/m%d 0
c $ROOT                221   4  1   4 bus/vme/s%d 0
c $ROOT                221   8  1   1 bus/vme/ctl

c $SERIAL              224   0  1 255 ttyY%d
c $SERIAL              225   0  1 255 cuy%d

c $CONSOLE             226   0  1   4 dri/card%d 0

c $ROOT                227   1  1  32 3270/tty%d 1
c $ROOT                228   0  1  33 3270/tub

c $ROOT                229   0  1  32 iseries/vtty%d 0

c $ROOT                230   0  1  32 iseries/vt%d 0
c $ROOT                230  32  1  32 iseries/vt%dl 0
c $ROOT                230  64  1  32 iseries/vt%dm 0
c $ROOT                230  96  1  32 iseries/vt%da 0
c $ROOT                230 128  1  32 iseries/nvt%d 0
c $ROOT                230 160  1  32 iseries/nvt%dl 0
c $ROOT                230 192  1  32 iseries/nvt%dm 0
c $ROOT                230 224  1  32 iseries/nvt%da 0

c $ROOT                231   0  1  64 infiniband/umad%d
c $ROOT                231  64  1  64 infiniband/issm%d
c $ROOT                231 128  1  32 infiniband/uverbs%d

c $ROOT                232   0 10   3 biometric/sensor%d/fingerprint
c $ROOT                232   1 10   3 biometric/sensor%d/iris
c $ROOT                232   2 10   3 biometric/sensor%d/retina
c $ROOT                232   3 10   3 biometric/sensor%d/voiceprint
c $ROOT                232   4 10   3 biometric/sensor%d/facial
c $ROOT                232   5 10   3 biometric/sensor%d/hand

c $ROOT                233   0  1   1 ipath
c $ROOT                233   1  1   4 ipath%d 0
c $ROOT                233 129  1   1 ipath_sma
c $ROOT                233 130  1   1 ipath_diag
