TITLE Example of ASM              

INCLUDE Irvine32.inc


.stack 4096

main          EQU start@0
.data
titleStr BYTE "Cat Hunter",0 ;標題名稱
a1 byte "                                                                       |  /\_/\                   |",0
a2 byte "                                                                       | ( o o )                  |",0
a3 byte "                                                                       | ( + + )                  |",0
a4 byte "                                                                       |  /###\                   |",0
s1 byte "                                                                       |           /\_/\          |",0
s2 byte "                                                                       |          ( o o )         |",0
s3 byte "                                                                       |          ( + + )         |",0
s4 byte "                                                                       |           /###\          |",0
d1 byte "                                                                       |                   /\_/\ |",0
d2 byte "                                                                       |                  ( o o )|",0
d3 byte "                                                                       |                  ( + + )|",0
d4 byte "                                                                       |                   /###\ |",0 
clrmes byte "                                                                       |                           |",0
ms1 byte "   ZZZZZZZZZZZZZZZZZ      OOOOOOOO       MMMM            MMMM   BBBBBBBBBBB     IIIIIIIIIII   EEEEEEEEEEEE    * * * * * * * * * * * * * * * * * * * * * * * *",0
ms2 byte "   ZZZZZZZZZZZZZZZ      OOOOOOOOOOOO     MMMMM          MMMMM   BBB      BBB    IIIIIIIIIII   EEEEEEEEEEEE    *                                             *",0
ms3 byte "            ZZZZ       OOO        OOO    MMMMM          MMMMM   BBB      BBB        III       EEE             *  RRRR   U   U  L      EEEEE   SSSS          *",0
ms4 byte "           ZZZZ       OOO          OOO   MMMMMM        MMMMMM   BBB     BBB         III       EEE             *  R   R  U   U  L      E      S              *",0
ms5 byte "          ZZZZ       OOO            OOO  MMM MMM      MMM MMM   BBBBBBBBBB          III       EEEEEEEEEE      *  RRRR   U   U  L      EEEE    SSS           *",0
ms6 byte "         ZZZZ        OOO            OOO  MMM  MMM    MMM  MMM   BBB      BBB        III       EEEEEEEEEE      *  R  R   U   U  L      E          S          *",0
ms7 byte "        ZZZZ          OOO          OOO   MMM   MMM  MMM   MMM   BBB       BBB       III       EEE             *  R   R   UUU   LLLLL  EEEEE  SSSS           *",0
ms8 byte "       ZZZZ            OOO        OOO    MMM    MMMMMM    MMM   BBB       BBB       III       EEE             *             _____                           *",0
ms9 byte "     ZZZZZZZZZZZZZZZ    OOOOOOOOOOOO     MMM     MMMM     MMM   BBB       BBB   IIIIIIIIIII   EEEEEEEEEEEE    *            |     |                          *",0
msa byte "   ZZZZZZZZZZZZZZZZZ      OOOOOOOO       MMM      MM      MMM   BBBBBBBBBBBB    IIIIIIIIIII   EEEEEEEEEEEE    *  (1) Press |  A  | to hit left cats         *",0
msb byte "                                                                                                              *            |_____|                          *",0
msc byte "   HHH         HHH    UUU         UUU    NNNN       NNN   TTTTTTTTTTTTTTT   EEEEEEEEEEEEE    RRRRRRRRRR       *                                             *",0
msd byte "   HHH         HHH    UUU         UUU    NNNNN      NNN   TTTTTTTTTTTTTTT   EEEEEEEEEEEEE    RRRRRRRRRRR      *             _____                           *",0
mse byte "   HHH         HHH    UUU         UUU    NNNNNN     NNN         TTT         EEE              RRR      RRR     *            |     |                          *",0
msf byte "   HHH         HHH    UUU         UUU    NNN NNN    NNN         TTT         EEE              RRR      RRR     *  (2) Press |  S  | to hit middle cats       *",0
msg byte "   HHHHHHHHHHHHHHH    UUU         UUU    NNN  NNN   NNN         TTT         EEEEEEEEEEE      RRRRRRRRRR       *            |_____|                          *",0
msh byte "   HHHHHHHHHHHHHHH    UUU         UUU    NNN   NNN  NNN         TTT         EEEEEEEEEEE      RRRRRRRRRR       *                                             *",0
msi byte "   HHH         HHH    UUU         UUU    NNN    NNN NNN         TTT         EEE              RRR  RRRR        *             _____                           *",0
msj byte "   HHH         HHH    UUU         UUU    NNN     NNNNNN         TTT         EEE              RRR   RRRR       *            |     |                          *",0
msk byte "   HHH         HHH     UUUUUUUUUUUUU     NNN      NNNNN         TTT         EEEEEEEEEEEEE    RRR     RRRR     *  (3) Press |  D  | to hit right cats        *",0
msl byte "   HHH         HHH      UUUUUUUUUUU      NNN       NNNN         TTT         EEEEEEEEEEEEE    RRR      RRRR    *            |_____|                          *",0
msm byte "                                                                                                              *                                             *",0
msn byte "                                                                                                              *                                             *",0
mso byte "                                                                                                              * * * * * * * * * * * * * * * * * * * * * * * *",0
msp byte "                                                                                                                                             /\_/\",0
msq byte "   PPPPPP                                      ____________                                                                          /\_/\  ( o o )",0
mss byte "   PP   PP                                   /|            |\     TT                           TT                        TT         ( o o ) ( + + )  /\_/\",0
mst byte "   PP   PP R   RRR  EEEEE   SSSSSS  SSSSSS  / |  ZZZZZZZZ  | \  TTTTTT    OOOOOO      SSSSSS TTTTTT    AAAAA   R   RRR TTTTTT       ( + + )  /###\  ( o o )",0
msu byte "   PPPPPP  R RRR   E     E S       S        | |       ZZ   | |    TT     OO    OO    S         TT     AA   AA  R RRR     TT          /###\          ( + + )",0
msv byte "   PP      RRR     EEEEEE   SSSSS   SSSSS   | |     ZZ     | |    TT     OO    OO     SSSSS    TT     AA   AA  RRR       TT             /\_/\        /###\",0
msw byte "   PP      RR      E             S       S  | |   ZZ       | |    TT  TT OO    OO          S   TT  TT AA   AA  RR        TT  TT        ( o o )  /\_/\",0
msx byte "   PP      RR       EEEEE  SSSSSS  SSSSSS   | |  ZZZZZZZZ  | |     TTTT   OOOOOO     SSSSSs     TTTT   AAAA AA RR         TTTT         ( + + ) ( o o ) /\_/\",0
msy byte "                                            | |____________| |                                                                   /\_/\  /###\  ( + + )( o o )",0
msz byte "                                            | /            \ |                                                                  ( o o )   /\_/\ /###\ ( + + )",0
ms0 byte "                                            |/______________\|                                                                  ( + + )  ( o o )       /###\",0
ms1000 byte "                                                                                                                                 /###\   ( + + )",0
ms1111 byte "                                                                                                                                          /###\",0
ms2222 byte "Ps.During the game,you can press e to end the game.",0
ms3333 byte "Ps.During the game,you can press p to restart the game.",0
ms01 byte "                                                                                                                                                            ",0
ms02 byte "                                                                           333333333333333",0
ms03 byte "                                                                        333333333333333333333",0
ms04 byte "                                                                     333333333333333333333333333",0
ms05 byte "                                                                  333333333333333333333333333333333",0
ms06 byte "                                                               3333333333                 33333333333",0
ms07 byte "                                                             3333333333                      33333333333",0
ms08 byte "                                                            33333333                            3333333333",0
ms09 byte "                                                           333333                                33333333333",0
ms10 byte "                                                          33333                                   33333333333",0
ms11 byte "                                                         33333                                    33333333333",0
ms12 byte "                                                         33333                                    33333333333",0
ms13 byte "                                                         3333                                    33333333333 ",0
ms14 byte "                                                                                                3333333333  ",0
ms15 byte "                                                                                               33333333333   ",0
ms16 byte "                                                                                             33333333333     ",0
ms17 byte "                                                                                          333333333333",0
ms18 byte "                                                                                       333333333333",0
ms19 byte "                                                                               3333333333333333",0
ms20 byte "                                                                               333333333333",0
ms21 byte "                                                                               33333333333333333",0
ms22 byte "                                                                                       333333333333",0
ms23 byte "                                                                                          333333333333",0
ms24 byte "                                                                                             33333333333",0
ms25 byte "                                                                                               33333333333",0
ms26 byte "                                                                                                333333333333",0
ms27 byte "                                                            33333333                             333333333333",0
ms28 byte "                                                          333333333333                            333333333333",0
ms29 byte "                                                         33333333333333                           333333333333",0
ms30 byte "                                                        3333333333333333                          333333333333",0
ms31 byte "                                                        3333333333333333                         333333333333",0
ms32 byte "                                                         33333333333333                         333333333333",0
ms33 byte "                                                         3333333333333                      333333333333",0
ms34 byte "                                                             33333333333333333333333333333333333333333",0
ms35 byte "                                                                33333333333333333333333333333333333",0
ms36 byte "                                                                    333333333333333333333333333",0
ms37 byte "                                                                        3333333333333333333",0
ms38 byte "                                                                                                                                ",0
ms39 byte " ",0
ms40 byte " ",0
ms41 byte " ",0
ms42 byte " ",0
ms43 byte "                                                                            22222222222222",0
ms44 byte "                                                                        222222222222222222222",0
ms45 byte "                                                                     222222222222222222222222222",0
ms46 byte "                                                                   22222222222222222222222222222222",0
ms47 byte "                                                                2222222222                 2222222222",0
ms48 byte "                                                              22222222                       2222222222",0
ms49 byte "                                                             2222222                          22222222222",0
ms50 byte "                                                            22222222222                         2222222222",0
ms51 byte "                                                           22222222222222                        2222222222",0
ms52 byte "                                                           222222222222222                       2222222222",0
ms53 byte "                                                            22222222222222                       2222222222",0
ms54 byte "                                                            2222222222222                       2222222222",0
ms55 byte "                                                             22222222222                       2222222222",0
ms56 byte "                                                              22222222                       2222222222",0
ms57 byte "                                                                                            2222222222",0
ms58 byte "                                                                                          22222222222",0
ms59 byte "                                                                                        22222222222",0
ms60 byte "                                                                                      22222222222",0
ms61 byte "                                                                                    22222222222",0
ms62 byte "                                                                                 22222222222",0
ms63 byte "                                                                              22222222222",0
ms64 byte "                                                                           22222222222",0
ms65 byte "                                                                        22222222222",0
ms66 byte "                                                                    22222222222",0
ms67 byte "                                                                2222222222222222222222222222222222222222222222",0
ms68 byte "                                                           2222222222222222222222222222222222222222222222222222",0
ms69 byte "                                                           2222222222222222222222222222222222222222222222222222",0
ms70 byte "                                                           222222222222222222222222222222222222222222222222222",0
ms71 byte " ",0
ms72 byte " ",0
ms73 byte " ",0
ms74 byte " ",0
ms75 byte "                                                                                1111111",0
ms76 byte "                                                                                1111111",0
ms77 byte "                                                                              111111111",0
ms78 byte "                                                                           111111111111",0
ms79 byte "                                                                       1111111111111111",0
ms80 byte "                                                                       1111111111111111",0
ms81 byte "                                                                       1111111111111111",0
ms82 byte "                                                                                1111111",0
ms83 byte "                                                                       1111111111111111111111111",0
pa1 byte "                                                                         _____     _____     _____  ",0
pa2 byte "                                                                       ||     || ||     || ||     ||",0
pa3 byte "                                                                       ||  A  || ||  S  || ||  D  ||",0
pa4 byte "                                                                       ||_____|| ||_____|| ||_____||",0
pa5 byte "                                                                       |/_____\| |/_____\| |/_____\|",0
ms101 byte "          TTTTTTTTTTTTTTTTTTTTTTT                                                                                 UUUUU             UUUUU",0
ms102 byte "          TTTTTTTTTTTTTTTTTTTTTTT                                                          ###                    UUUUU             UUUUU",0
ms103 byte "          TTTTTTTTTTTTTTTTTTTTTTT                                                         #####                   UUUUU             UUUUU",0
ms100 byte "                   TTTTT                                                                 ######                   UUUUU             UUUUU",0
ms104 byte "                   TTTTT          IIIII                                                  #####                    UUUUU             UUUUU",0
ms105 byte "                   TTTTT         I1IIIII                                                 ###                      UUUUU             UUUUU",0
ms106 byte "                   TTTTT         IIIIIII                                                ###                       UUUUU             UUUUU     PPPPPPPPPPPP",0
ms107 byte "                   TTTTT          IIIII    MMM  MMMMM      MMMMM           EEEEEEE     ##     SSSSSSSS            UUUUU             UUUUU    PPPPPPPPPPPPPP",0
ms108 byte "                   TTTTT                   MMM MMMMMMMM  MMMMMMMMM       EEEEEEEEEEE        SSSS    SSSS          UUUUU             UUUUU    PPPPPPPPPPPPPPP",0
ms109 byte "                   TTTTT          IIIII    MMMMMM   MMMMMMM    MMMM     EEE       EEE　    SSS         SS         UUUUU             UUUUU    PPPP       PPPPP",0
ms110 byte "                   TTTTT          IIIII    MMMMM     MMMMM      MMMM   EEE         EEE      SSSS                  UUUUU             UUUUU    PPPP        PPPP",0
ms111 byte "                   TTTTT          IIIII    MMMM       MMM        MMM   EEEEEEEEEEEEEEE       SSSSSSSSS            UUUUU             UUUUU    PPPP        PPPP",0
ms112 byte "                   TTTTT          IIIII    MMM        MMM        MMM   EEEEEEEEEEEEEEE              SSSS          UUUUU             UUUUU    PPPP        PPPP",0
ms113 byte "                   TTTTT          IIIII    MMM        MMM        MMM   EEE                            SSS          UUUUU           UUUUU     PPPP       PPPPP",0
ms114 byte "                   TTTTT          IIIII    MMM        MMM        MMM    EEE         EE     SS         SSS           UUUUUU       UUUUUU      PPPPPPPPPPPPPPP",0
ms115 byte "                   TTTTT          IIIII    MMM        MMM        MMM     EEE      EEE       SSSS    SSSS             UUUUUUUUUUUUUUUUU       PPPPPPPPPPPPPP",0
ms116 byte "                   TTTTT          IIIII    MMM        MMM        MMM      EEEEEEEEEE          SSSSSSSS                 UUUUUUUUUUUUU         PPPPPPPPPPP",0
ms117 byte "                                                                                                                                             PPPP",0
ms201 byte "              PPPPPPPPPP       IIII                                                                               * * * * * * * * * * * * * * * * * * * * * * * *",0
ms202 byte "              PPPPPPPPPPP     IIIIII                                                                              *                                             *",0 
ms203 byte "              PPP      PPP    III III                                                                             *      YY    YY  EEEEEE   SSSSS               *",0
ms204 byte "              PPP      PPP   III  III                                                                             *       YY  YY   E       S                    *",0
ms205 byte "              PPP      PPP   III  III         AAAAAAA                                         ??????????          *        YYYY    EEEEEE   SSSS                *",0
ms206 byte "              PPP     PPPP   III  III       AAAAAAAAAAA         YYY        YYY              ???????????????       *         YY     E            S               *",0
ms207 byte "              PPPPPPPPPPP    III  III      AAA       AAA        YYY        YYY             ????????????????       *         YY     EEEEEE  SSSSS                *",0
ms208 byte "              PPPPPPPPPP     III  III     IAA         AAA       YYY        YYY            ????          ????      *                                             *",0
ms209 byte "              PPP            III  II     IAA           AAA      YYY        YYY            ????          ????      *              _____                          *",0
ms210 byte "              PPP             II  II    IIAA           AAAA     YYY        YYY    YY      ????          ????      *            ||     ||                        *",0
ms211 byte "              PPP             IIIIII    IIAAA         AAAAA    YYYY        YYY   YY        ????         ????      *     Press  ||  Y  ||  to  restart           *",0
ms212 byte "              PPP              IIIII   II  AAA       AAA AA   YYYYY        YYY  YY          ?????      ????       *            ||_____||                        *",0
ms213 byte "              PPP             II  III III   AAAAAAAAAAA  AAA YY  YYYYYYYYYYYYY YY                     ????        *            |/_____\|                        *",0
ms214 byte "              PPP            II    IIIII      AAAAAAA     AAAY     YYYYYYY YYYY                      ????         *                                             *",0
ms215 byte "                                                                          YYYY                      ????          *                                             *",0
ms216 byte "                                                                    YYYYYYY YY                     ????           * * * * * * * * * * * * * * * * * * * * * * * *",0
ms217 byte "                                                                  YYY       YY                    ????            *                                             *",0
ms218 byte "                                                                 YYY        YY                   ????             *       NN    NN   OOOOOOO                    *",0
ms219 byte "                                                                  YYY      YYY                   ????             *       NNN   NN   OO   OO                    *",0
ms220 byte "                                                                   YYYYYYYYYY                    ????             *       NNNN  NN   OO   OO                    *",0
ms221 byte "                                                                                                 ????             *       NN NN NN   OO   OO                    *",0
ms222 byte "                                                               ###                                                *       NN  NNNN   OO   OO                    *",0
ms223 byte "                                                                                                                  *       NN   NNN   OOOOOOO                    *",0
ms224 byte "              AAAAAAA          GGGGGGGGG        AAAAAAA        III      NN  NNNNN                ????             *                                             *",0
ms225 byte "             AA     AA        GG      GGG     AAA     AA       III      NN NN   NN              ??????            *              _____                          *",0
ms226 byte "            AA       AA      GG        GG   GGAA       AA      III     NNNN      NN             ??????            *            ||     ||                        *",0   
ms227 byte "            AA       AAA    GGG        GG  GG AA       AAA    II II   NNNN       NN              ????             *     Press  ||  N  ||  to  end  the  game    *",0
ms228 byte "             AA     AA AA  A  GG      GGG GG   AA     AA AA  AI   II NN NN       NN                               *            ||_____||                        *",0
ms229 byte "              AAAAAAA   AAA    GGGGGGGGGGGG     AAAAAAA   AAA      III  NN       NN                               *            |/_____\|                        *",0
ms230 byte "                                     GGGG                                                                         *                                             *",0
ms231 byte "                                   GGG GG                                                                         *                                             *",0
ms232 byte "                                 GGG   GG                                                                         * * * * * * * * * * * * * * * * * * * * * * * *",0
ms233 byte "                               GG      GG",0
ms234 byte "                               GG     GG",0
ms235 byte "                                 GGGGGG",0   
ms236 byte "                         GGGGGGGGGG",0
ms237 byte "                       GGGGGGGGGGGGGG",0
ms238 byte "                      GGG",0
ms239 byte "                     GGG",0
ms240 byte "                    GG",0
ms241 byte "                    GG        GGGGGGGG    OOOOOOOO      MM  MMM  MMM        EEEEEE            OOOOOOOO   VV         VV   EEEEEE    RR   RRRRR",0
ms242 byte "                    GG        GGGGGGGG   OO      OO     MM MM MMMM MMM     EE    EE          OO      OO   VV       VV   EE    EE   RR RR    RR",0
ms243 byte "                    GG             GGG  OO        OO    MMMM   MM    MM   EE      EE        OO        OO   VV     VV   EE      EE  RRR",0
ms244 byte "                    GGGG           GGG  OO        OO    MM     MM    MM   EEEEEEEEEE        OO        OO    VV   VV    EEEEEEEEEE  RR",0
ms245 byte "                     GGGGG         GGG  OO        OO    MM     MM    MM   EE                OO        OO     VV VV     EE          RR",0
ms246 byte "                       GGGGGGGGGGGGG     OO      OOOO   MM     MM    MM    EE     EE         OO      OO       VVV       EE     EE  RR",0
ms247 byte "                        GGGGGGGGGG        OOOOOOOO  OO  MM     MM    MM     EEEEEEE           OOOOOOOO         V         EEEEEEE   RR",0                                                                       
randnum dword ?
ans byte 0,0,0,0,0,0
success dword 0
systime dword ?
counting dword 30
score byte "                                                                         The score is: ",0
timemes byte "                                                                          The time left: ",0
zero byte "0",0
donemes byte "                                                                         again? press y(yes) or n(no)",0
donemes1 byte "                                                                         your level is: shit",0
donemes2 byte "                                                                         your level is: bad",0
donemes3 byte "                                                                         your level is: normal",0
donemes4 byte "                                                                         your level is: great",0
donemes5 byte "                                                                         your level is: best but so what XD",0
endend byte "TIME'S UP",0
beginmes byte "please press Alt+Enter to turn into full screen, and then press x to join the game",0
wronghit byte 0
.code

main PROC
first1:		;叫玩家換成全螢幕
 mov dl,0
 mov dh,0
 call gotoxy
 mov edx,offset beginmes
 call writestring
 call readchar
 cmp al,"x"
 jne first1
begin:		;遊戲開場及規則
 call clrscr
 mov success,0
 mov dl,0
 mov dh,0
 call Gotoxy ;游標移動到(0,0)
 call crlf
 call crlf
 call crlf
 call crlf
 mov edx,offset ms1
 call writestring
 call crlf
 mov edx,offset ms2
 call writestring
 call crlf
 mov edx,offset ms3
 call writestring
 call crlf
 mov edx,offset ms4
 call writestring
 call crlf
 mov edx,offset ms5
 call writestring
 call crlf
 mov edx,offset ms6
 call writestring
 call crlf
 mov edx,offset ms7
 call writestring
 call crlf
 mov edx,offset ms8
 call writestring
 call crlf
 mov edx,offset ms9
 call writestring
 call crlf
 mov edx,offset msa
 call writestring
 call crlf
 mov edx,offset msb
 call writestring
 call crlf
 mov edx,offset msc
 call writestring
 call crlf
 mov edx,offset msd
 call writestring
 call crlf
 mov edx,offset mse
 call writestring
 call crlf
 mov edx,offset msf
 call writestring
 call crlf
 mov edx,offset msg
 call writestring
 call crlf
  mov edx,offset msh
 call writestring
 call crlf
 mov edx,offset msi
 call writestring
 call crlf
 mov edx,offset msj
 call writestring
 call crlf
 mov edx,offset msk
 call writestring
 call crlf
 mov edx,offset msl
 call writestring
 call crlf
 mov edx,offset msm
 call writestring
 call crlf
 mov edx,offset msn
 call writestring
 call crlf
 mov edx,offset mso
 call writestring
 call crlf
 mov edx,offset msp
 call writestring
 call crlf
 mov edx,offset msq
 call writestring
 call crlf
 mov edx,offset mss
 call writestring
 call crlf
 mov edx,offset mst
 call writestring
 call crlf
 mov edx,offset msu
 call writestring
 call crlf
 mov edx,offset msv
 call writestring
 call crlf
 mov edx,offset msw
 call writestring
 call crlf
  mov edx,offset msx
 call writestring
 call crlf
 mov edx,offset msy
 call writestring
 call crlf
 mov edx,offset msz
 call writestring
 call crlf
 mov edx,offset ms0
 call writestring
 call crlf
 mov edx,offset ms1000
 call writestring
 call crlf
 mov edx,offset ms1111
 call writestring
 call crlf
 call crlf
 call crlf
 call crlf
 call crlf
 mov edx,offset ms2222
 call writestring
 call crlf
 mov edx,offset ms3333
 call writestring
 call crlf
 call readchar
 cmp al,"z"
 je gamestart
 jmp begin
gamestart:	;倒數321
 call clrscr
 mov success,0
 mov ecx,6
 LLms01:
  mov edx,offset ms01
  call writestring
  call crlf
  Loop LLms01
 mov edx,offset ms02
 call writestring
 call crlf
 mov edx,offset ms03
 call writestring
 call crlf
 mov edx,offset ms04
 call writestring
 call crlf
 mov edx,offset ms05
 call writestring
 call crlf
 mov edx,offset ms06
 call writestring
 call crlf
 mov edx,offset ms07
 call writestring
 call crlf
 mov edx,offset ms08
 call writestring
 call crlf
 mov edx,offset ms09
 call writestring
 call crlf
 mov edx,offset ms10
 call writestring
 call crlf
 mov edx,offset ms11
 call writestring
 call crlf
 mov edx,offset ms12
 call writestring
 call crlf
 mov edx,offset ms13
 call writestring
 call crlf
 mov edx,offset ms14
 call writestring
 call crlf
 mov edx,offset ms15
 call writestring
 call crlf
 mov edx,offset ms16
 call writestring
 call crlf
 mov edx,offset ms17
 call writestring
 call crlf
 mov edx,offset ms18
 call writestring
 call crlf
 mov edx,offset ms19
 call writestring
 call crlf
 mov edx,offset ms20
 call writestring
 call crlf
 mov edx,offset ms21
 call writestring
 call crlf
 mov edx,offset ms22
 call writestring
 call crlf
 mov edx,offset ms23
 call writestring
 call crlf
 mov edx,offset ms24
 call writestring
 call crlf
 mov edx,offset ms25
 call writestring
 call crlf
 mov edx,offset ms26
 call writestring
 call crlf
 mov edx,offset ms27
 call writestring
 call crlf
 mov edx,offset ms28
 call writestring
 call crlf
 mov edx,offset ms29
 call writestring
 call crlf
 mov edx,offset ms30
 call writestring
 call crlf
 mov edx,offset ms31
 call writestring
 call crlf
 mov edx,offset ms32
 call writestring
 call crlf
 mov edx,offset ms33
 call writestring
 call crlf
 mov edx,offset ms34
 call writestring
 call crlf
 mov edx,offset ms35
 call writestring
 call crlf
 mov edx,offset ms36
 call writestring
 call crlf
 mov edx,offset ms37
 call writestring
 call crlf
 mov eax,1000
 call delay
 mov ecx,42
 mov dl,0
 mov dh,0
 call Gotoxy 
 L42:
  mov edx,offset ms38
  call writestring
  call crlf
  Loop L42
 mov dl,0
 mov dh,0
 call Gotoxy 
 mov ecx,4
LLLLLL:
 mov edx,offset ms39
 call writestring
 call crlf
 Loop LLLLLL
 mov edx,offset ms40
 call writestring
 call crlf
 mov edx,offset ms41
 call writestring
 call crlf
 mov edx,offset ms42
 call writestring
 call crlf
 mov edx,offset ms43
 call writestring
 call crlf
 mov edx,offset ms44
 call writestring
 call crlf
 mov edx,offset ms45
 call writestring
 call crlf
 mov edx,offset ms46
 call writestring
 call crlf
 mov edx,offset ms47
 call writestring
 call crlf
 mov edx,offset ms48
 call writestring
 call crlf
 mov edx,offset ms49
 call writestring
 call crlf
 mov edx,offset ms50
 call writestring
 call crlf
 mov edx,offset ms51
 call writestring
 call crlf
 mov edx,offset ms52
 call writestring
 call crlf
 mov edx,offset ms53
 call writestring
 call crlf
 mov edx,offset ms54
 call writestring
 call crlf
 mov edx,offset ms55
 call writestring
 call crlf
 mov edx,offset ms56
 call writestring
 call crlf
 mov edx,offset ms57
 call writestring
 call crlf
 mov edx,offset ms59
 call writestring
 call crlf
 mov edx,offset ms60
 call writestring
 call crlf
 mov edx,offset ms61
 call writestring
 call crlf
 mov edx,offset ms62
 call writestring
 call crlf
 mov edx,offset ms63
 call writestring
 call crlf
 mov edx,offset ms64
 call writestring
 call crlf
 mov edx,offset ms65
 call writestring
 call crlf
 mov edx,offset ms66
 call writestring
 call crlf
 mov edx,offset ms67
 call writestring
 call crlf
 mov edx,offset ms68
 call writestring
 call crlf
 mov edx,offset ms69
 call writestring
 call crlf
 mov edx,offset ms70
 call writestring
 call crlf
 mov eax,1000
 call delay
 mov ecx,37
 mov dl,0
 mov dh,0
 call Gotoxy 
 L377:
  mov edx,offset ms38
  call writestring
  call crlf
  Loop L377
 mov dl,0
 mov dh,0
 call Gotoxy 
 mov ecx,8
LLLLLLL:
 mov edx,offset ms39
 call writestring
 call crlf
 Loop LLLLLLL
 mov edx,offset ms75
 call writestring
 call crlf
 mov edx,offset ms76
 call writestring
 call crlf
 mov edx,offset ms77
 call writestring
 call crlf
 mov edx,offset ms78
 call writestring
 call crlf
 mov edx,offset ms79
 call writestring
 call crlf
 mov edx,offset ms80
 call writestring
 call crlf
 mov edx,offset ms81
 call writestring
 call crlf
 mov ecx,16
 LL16:
  mov edx,offset ms82
  call writestring
  call crlf
  Loop LL16
 mov ecx,3
 LL3:
  mov edx,offset ms83
  call writestring
  call crlf
  Loop LL3
 mov eax,1000
 call delay
 mov ecx,37
 mov dl,0
 mov dh,0
 call Gotoxy 
 L3777:
  mov edx,offset ms38
  call writestring
  call crlf
  Loop L3777
			;遊戲開始
 invoke gettickcount
 mov systime,eax	;紀錄開始時間
 mov dl,0
 mov dh,6
 call Gotoxy
 mov ecx,6
 mov esi,0
 mov edx,offset timemes		;印出剩幾秒
 call writestring
 invoke gettickcount   ;倒數計時30秒
 sub eax,systime  
 mov edx,0
 mov ebx,1000
 div ebx
 sub counting,eax
 mov eax,counting
 call writedec
 call crlf
 mov eax,16	;初始貓咪顏色
 mov eax,lightblue+(black*16)
 call settextcolor
L: ;印出貓咪
 mov eax,3  
 call randomrange
 mov randnum,eax
 cmp randnum,0
 je L1
 cmp randnum,1
 je L2
 cmp randnum,2
 je L3
L1:
 mov edx,offset a1
 call writestring
 call crlf
 mov edx,offset a2
 call writestring
 call crlf
 mov edx,offset a3
 call writestring
 call crlf
 mov edx,offset a4
 call writestring
 call crlf
 mov edx,offset clrmes
 call writestring
 call crlf
 mov ans[esi],"a"
 inc esi
 jmp exit1
L2:
 mov edx,offset s1
 call writestring
 call crlf
 mov edx,offset s2
 call writestring
 call crlf
 mov edx,offset s3
 call writestring
 call crlf
 mov edx,offset s4
 call writestring
 call crlf
 mov edx,offset clrmes
 call writestring
 call crlf
 mov ans[esi],"s"
 inc esi
 jmp exit1
L3:
 mov edx,offset d1
 call writestring
 call crlf
 mov edx,offset d2
 call writestring
 call crlf
 mov edx,offset d3
 call writestring
 call crlf
 mov edx,offset d4
 call writestring
 call crlf
 mov edx,offset clrmes
 call writestring
 call crlf
 mov ans[esi],"d"
 inc esi
exit1:
 dec ecx
 cmp ecx,0
 jne L
 mov eax,16
 mov eax,gray+(black*16)
 call settextcolor
 mov edx,offset pa1
 call writestring
 call crlf
 mov edx,offset pa2
 call writestring
 call crlf
 mov edx,offset pa3
 call writestring
 call crlf
 mov edx,offset pa4
 call writestring
 call crlf
 mov edx,offset pa5
 call writestring
 call crlf
hit: ;擊打
 mov dl,0
 mov dh,6
 call Gotoxy
 mov eax,16
 mov eax,white+(black*16) ;設定顏色
 call settextcolor
 mov edx,offset timemes
 call writestring
 invoke gettickcount ;倒數計時30秒
 sub eax,systime
 mov edx,0
 mov ebx,1000
 div ebx
 cmp eax,30
 jae reallyexit		
 cmp eax,20
 ja L12      
 sub counting,eax
 mov eax,counting
 mov counting,30
 call writedec
 call crlf
 jmp L14
L12:     
 mov edx,offset zero
 call writestring
 sub counting,eax
 mov eax,counting
 mov counting,30
 call writedec
 call crlf
L14:
 mov dl,0
 mov dh,31
 call Gotoxy
 mov wronghit,0    
 mov esi,5
 call readchar
 cmp al,"e"	;按e結束
 je reallyexit1
 cmp al,"p"	;按p重來
 je gamestart
 cmp ans[esi],al  
 je yes
 mov wronghit,1  ;打錯僵屍時
 mov esi,5
 mov dl,0
 mov dh,35
 call Gotoxy
 mov edx,offset timemes
 cmp success,10120
 jbe changeback_white1
 cmp success,40529
 jbe changeback_blue1
 cmp success,91345
 jb changeback_green1
 jmp changeback_yellow1
changeback_white1:
 mov eax,16
 mov eax,lightblue+(black*16)
 call settextcolor
 jmp call_set2
changeback_blue1:
 mov eax,16
 mov eax,lightred+(black*16)
 call settextcolor
 jmp call_set2
changeback_green1:
 mov eax,16
 mov eax,green+(black*16)
 call settextcolor
 jmp call_set2
changeback_yellow1:
 mov eax,16
 mov eax,yellow+(black*16)
 call settextcolor
 ;call writestring
call_set2:
 mov edx,offset clrmes
 call writestring
 mov dl,0
 mov dh,31
 call Gotoxy
 jmp L8
LLLL:
 mov esi,5
 mov wronghit,2
 mov dl,0
 mov dh,36
 call Gotoxy
 mov eax,300
 call delay
 mov dl,0
 mov dh,31
 call Gotoxy
 mov edx,offset clrmes
 call writestring
 call crlf 
call_set1:
 jmp L8

yes: ;打正確僵屍時
 cmp success,10120
 jb L50p
 cmp success,40529
 jb L150p
 cmp success,91345
 jb L300p
 jmp L300up
L50p:
 mov eax,16
 mov eax,lightblue+(black*16)
 call settextcolor
 add success,184
 jmp endofLp
L150p:
 mov eax,16
 mov eax,lightred+(black*16)
 call settextcolor
 add success,647
 jmp endofLp
L300p:
 mov eax,16
 mov eax,green+(black*16)
 call settextcolor
 add success,1588
 jmp endofLp
L300up:
 mov eax,16
 mov eax,yellow+(black*16)
 call settextcolor
 add success,3669
 jmp endofLp
endofLp:
 mov ecx,5
L4:	;將正確答案的陣列中往下移一個
 mov bl,ans[esi-1]
 mov ans[esi],bl
 sub esi,1
 loop L4

 mov eax,3  	;將新答案放進ans[0]
 call randomrange
 mov randnum,eax
 cmp randnum,0
 je L5
 cmp randnum,1
 je L6
 cmp randnum,2
 je L7
 
L5:
 mov ans[0],"a"
 jmp exit2
L6:
 mov ans[0],"s"
 jmp exit2
L7:
 mov ans[0],"d"
exit2:
 mov esi,0
 mov ecx,6
 mov dl,0
 mov dh,7
 call Gotoxy

L8:	;印出殭屍
 xor edx, edx
 cmp ans[esi],"a"
 je L9
 cmp ans[esi],"s"
 je L10
 cmp ans[esi],"d"
 je L11
 jmp exit3
L9:    
 mov edx,offset a1
 call writestring
 call crlf
 mov edx,offset a2
 call writestring
 call crlf
 mov edx,offset a3
 call writestring
 call crlf
 mov edx,offset a4
 call writestring
 call crlf
 inc esi
 cmp wronghit,1
 je LLLL
 jmp exit3
L10:   
 mov edx,offset s1
 call writestring
 call crlf
 mov edx,offset s2
 call writestring
 call crlf
 mov edx,offset s3
 call writestring
 call crlf
 mov edx,offset s4
 call writestring
 call crlf
 inc esi
 cmp wronghit,1
 je LLLL
 jmp exit3
L11:   
 mov edx,offset d1
 call writestring
 call crlf
 mov edx,offset d2
 call writestring
 call crlf
 mov edx,offset d3
 call writestring
 call crlf
 mov edx,offset d4
 call writestring
 call crlf
 inc esi
 cmp wronghit,1
 je LLLL
exit3:
 cmp wronghit,2
 je hit
 mov edx,offset clrmes
 call writestring
 call crlf
 dec ecx
 cmp ecx,0
 jne L8
 mov eax,16
 mov eax,gray+(black*16)
 call settextcolor
 mov edx,offset pa1
 call writestring
 call crlf
 mov edx,offset pa2
 call writestring
 call crlf
 mov edx,offset pa3
 call writestring
 call crlf
 mov edx,offset pa4
 call writestring
 call crlf
 mov edx,offset pa5
 call writestring
 call crlf
 jmp hit
reallyexit: 	;結算分數
 call clrscr

 mov ecx,10	;印出time's up
 Loop_space:
  mov edx,offset ms38
  call writestring
  call crlf
  Loop Loop_space
 mov edx,offset ms101
 call writestring
 call crlf
 mov edx,offset ms102
 call writestring
 call crlf
 mov edx,offset ms103
 call writestring
 call crlf
 mov edx,offset ms100
 call writestring
 call crlf
 mov edx,offset ms104
 call writestring
 call crlf
 mov edx,offset ms105
 call writestring
 call crlf
 mov edx,offset ms106
 call writestring
 call crlf
 mov edx,offset ms107
 call writestring
 call crlf
 mov edx,offset ms108
 call writestring
 call crlf
 mov edx,offset ms109
 call writestring
 call crlf
 mov edx,offset ms110
 call writestring
 call crlf
 mov edx,offset ms111
 call writestring
 call crlf 
 mov edx,offset ms112
 call writestring
 call crlf 
 mov edx,offset ms113
 call writestring
 call crlf 
 mov edx,offset ms114
 call writestring
 call crlf 
 mov edx,offset ms115
 call writestring
 call crlf 
 mov edx,offset ms116
 call writestring
 call crlf
 mov ecx,6
 Loop_6timesp:
   mov edx,offset ms117
   call writestring
   call crlf
   Loop Loop_6timesp 
 mov eax,1500
 call delay
reallyexit1:
 call clrscr
 mov dl,0
 mov dh,4
 call Gotoxy
 cmp success,0
 jne LL184
 mov edx,offset score
 call writestring
 mov eax,success
 call writedec
 call crlf
 jmp L50p1
LL184:		;分數結算動畫
 mov ecx, 104
 mov ebx,0
 Looop:
  mov edx,offset score
  call writestring
  mov eax,ebx
  call writedec
  call crlf 
  mov dl,0
  mov dh,4
  call Gotoxy
  mov eax,1
  call delay 
  add ebx,1
  Loop Looop
  mov edx,offset score
  call writestring
  mov eax,success
  call writedec
  call crlf
 cmp success,10000
 jb L50p1
 cmp success,30000
 jb L150p1
 cmp success,70000
 jb L300p1
 cmp success,150000
 jb L400p1
 jmp L400up
L50p1:
 mov edx,offset donemes1
 call writestring
 call crlf
 jmp endofLp1
L150p1:
 mov edx,offset donemes2
 call writestring
 call crlf
 jmp endofLp1
L300p1:
 mov edx,offset donemes3
 call writestring
 call crlf
 jmp endofLp1
L400p1:
 mov edx,offset donemes4
 call writestring
 call crlf
 jmp endofLp1
L400up:
 mov edx,offset donemes5
 call writestring
 call crlf
endofLp1:	;印出play again
 call crlf
 call crlf
 mov edx,offset ms201
 call writestring
 call crlf
 mov edx,offset ms202
 call writestring
 call crlf
 mov edx,offset ms203
 call writestring
 call crlf
 mov edx,offset ms204
 call writestring
 call crlf
 mov edx,offset ms205
 call writestring
 call crlf
 mov edx,offset ms206
 call writestring
 call crlf
 mov edx,offset ms207
 call writestring
 call crlf
 mov edx,offset ms208
 call writestring
 call crlf
 mov edx,offset ms209
 call writestring
 call crlf
 mov edx,offset ms210
 call writestring
 call crlf
 mov edx,offset ms211
 call writestring
 call crlf
 mov edx,offset ms212
 call writestring
 call crlf
 mov edx,offset ms213
 call writestring
 call crlf
 mov edx,offset ms214
 call writestring
 call crlf
 mov edx,offset ms215
 call writestring
 call crlf
 mov edx,offset ms216
 call writestring
 call crlf
 mov edx,offset ms217
 call writestring
 call crlf
 mov edx,offset ms218
 call writestring
 call crlf
 mov edx,offset ms219
 call writestring
 call crlf
 mov edx,offset ms220
 call writestring
 call crlf
 mov edx,offset ms221
 call writestring
 call crlf
 mov edx,offset ms222
 call writestring
 call crlf
 mov edx,offset ms223
 call writestring
 call crlf
 mov edx,offset ms224
 call writestring
 call crlf
 mov edx,offset ms225
 call writestring
 call crlf
 mov edx,offset ms226
 call writestring
 call crlf
 mov edx,offset ms227
 call writestring
 call crlf
 mov edx,offset ms228
 call writestring
 call crlf
 mov edx,offset ms229
 call writestring
 call crlf
 mov edx,offset ms230
 call writestring
 call crlf
 mov edx,offset ms231
 call writestring
 call crlf
 mov edx,offset ms232
 call writestring
 call crlf
 mov edx,offset ms233
 call writestring
 call crlf
 mov edx,offset ms234
 call writestring
 call crlf
 mov edx,offset ms235
 call writestring
 call crlf
L13:
 call readchar
 cmp al,"n"	;按n結束
 je done
 cmp al,"y"	;按y重來
 je gamestart
 jmp L13
done:		;印出game over
 call clrscr
 mov ecx,11
Lp_space: 
 call crlf
 Loop Lp_space
 mov edx,offset ms236
 call writestring
 call crlf
 mov edx,offset ms237
 call writestring
 call crlf
 mov edx,offset ms238
 call writestring
 call crlf
 mov edx,offset ms239
 call writestring
 call crlf
 mov edx,offset ms240
 call writestring
 call crlf
 mov edx,offset ms241
 call writestring
 call crlf
 mov edx,offset ms242
 call writestring
 call crlf
 mov edx,offset ms243
 call writestring
 call crlf
 mov edx,offset ms244
 call writestring
 call crlf
 mov edx,offset ms245
 call writestring
 call crlf
 mov edx,offset ms246
 call writestring
 call crlf
 mov edx,offset ms247
 call writestring
 call crlf
 mov eax,2000
 call delay
 exit
main ENDP

END main