       01 TRANSACTION-RSP.
*
         05 TRANSACTION-RSP-HEADER.
*
            10   MSGTYPE     PIC   X(032).
            10   SRCSYS      PIC   X(008).
            10   ORIGTYP     PIC   X(032).
            10   TGTSYS      PIC   X(008).
            10   USER        PIC   X(010).
            10   PWORD       PIC   X(010).
            10   FORMAT      PIC   X(008).
            10   VERSION     PIC   X(008).
            10   REPLYQ      PIC   X(020).
            10   RSPMODE     PIC   X(001).
            10   MAPLOCN     PIC   X(001).
            10   XDRIV       PIC   X(010).
            10   XRPGM       PIC   X(010).
            10   XUSID       PIC   X(010).
            10   XWSID       PIC   X(010).
            10   XJTT        PIC   X(001).
            10   PCREF       PIC   X(020).
            10   NMSGS       PIC   X(004).
            10   TRANSQ      PIC   X(004).
            10   XRREC       PIC   X(001).
            10   MsgTxt      PIC   X(078).
            10   UserData    PIC   X(2222).
*
         05 TRANSACTION-RSP-BODY.
*
            10   GZREF-T   PIC   X(04)   VALUE ':C5:'.
            10   GZREF     PIC   X(05)   VALUE ' '.
            10   GZBRNM-T  PIC   X(04)   VALUE ':C4:'.
            10   GZBRNM    PIC   X(04)   VALUE ' '.
            10   GZPBR-T   PIC   X(04)   VALUE ':C5:'.
            10   GZPBR     PIC   X(05)   VALUE ' '.
            10   GZPSQ-T   PIC   X(05)   VALUE ':P05:'.
            10   GZPSQ     PIC   X(07)   VALUE '0'.
            10   GZBRND-T  PIC   X(04)   VALUE ':C4:'.
            10   GZBRND    PIC   X(04)   VALUE ' '.
            10   GZEAND-T  PIC   X(05)   VALUE ':C20:'.
            10   GZEAND    PIC   X(20)   VALUE ' '.                             71
            10   GZAB1-T   PIC   X(04)   VALUE ':C4:'.
            10   GZAB1     PIC   X(04)   VALUE ' '.
            10   GZAN1-T   PIC   X(04)   VALUE ':C6:'.
            10   GZAN1     PIC   X(06)   VALUE ' '.
            10   GZAS1-T   PIC   X(04)   VALUE ':C3:'.
            10   GZAS1     PIC   X(03)   VALUE ' '.
            10   GZVFR1-T  PIC   X(05)   VALUE ':S07:'.
            10   GZVFR1    PIC   X(09)   VALUE '0'.
            10   GZDRF1-T  PIC   X(05)   VALUE ':C16:'.
            10   GZDRF1    PIC   X(16)   VALUE ' '.
            10   GZAMA1-T  PIC   X(05)   VALUE ':P15:'.
            10   GZAMA1    PIC   X(17)   VALUE '0'.
            10   GZAPP1-T  PIC   X(04)   VALUE ':C2:'.
            10   GZAPP1    PIC   X(02)   VALUE ' '.
            10   GZTCD1-T  PIC   X(04)   VALUE ':C3:'.
            10   GZTCD1    PIC   X(03)   VALUE ' '.
            10   GZCCY1-T  PIC   X(04)   VALUE ':C3:'.
            10   GZCCY1    PIC   X(03)   VALUE ' '.
            10   GZSRC1-T  PIC   X(04)   VALUE ':C2:'.
            10   GZSRC1    PIC   X(02)   VALUE ' '.
            10   GZUC1-T   PIC   X(04)   VALUE ':C3:'.
            10   GZUC1     PIC   X(03)   VALUE ' '.
            10   GZUC2-T   PIC   X(04)   VALUE ':C3:'.
            10   GZUC2     PIC   X(03)   VALUE ' '.
            10   GZNR1-T   PIC   X(05)   VALUE ':C35:'.
            10   GZNR1     PIC   X(35)   VALUE ' '.
            10   GZNR2-T   PIC   X(05)   VALUE ':C35:'.
            10   GZNR2     PIC   X(35)   VALUE ' '.
            10   GZNR3-T   PIC   X(05)   VALUE ':C35:'.
            10   GZNR3     PIC   X(35)   VALUE ' '.
            10   GZNR4-T   PIC   X(05)   VALUE ':C35:'.
            10   GZNR4     PIC   X(35)   VALUE ' '.
            10   GZCED1-T  PIC   X(04)   VALUE ':C1:'.
            10   GZCED1    PIC   X(01)   VALUE ' '.
            10   GZMCH1-T  PIC   X(04)   VALUE ':C1:'.
            10   GZMCH1    PIC   X(01)   VALUE ' '.
            10   GZEANC-T  PIC   X(05)   VALUE ':C20:'.
            10   GZEANC    PIC   X(20)   VALUE ' '.
            10   GZAB2-T   PIC   X(04)   VALUE ':C4:'.
            10   GZAB2     PIC   X(04)   VALUE ' '.
            10   GZAN2-T   PIC   X(04)   VALUE ':C6:'.
            10   GZAN2     PIC   X(06)   VALUE ' '.
            10   GZAS2-T   PIC   X(04)   VALUE ':C3:'.
            10   GZAS2     PIC   X(03)   VALUE ' '.
            10   GZVFR2-T  PIC   X(05)   VALUE ':S07:'.
            10   GZVFR2    PIC   X(09)   VALUE '0'.
            10   GZDRF2-T  PIC   X(05)   VALUE ':C16:'.
            10   GZDRF2    PIC   X(16)   VALUE ' '.
            10   GZAMA2-T  PIC   X(05)   VALUE ':P15:'.
            10   GZAMA2    PIC   X(17)   VALUE '0'.
            10   GZAPP2-T  PIC   X(04)   VALUE ':C2:'.
            10   GZAPP2    PIC   X(02)   VALUE ' '.
            10   GZTCD2-T  PIC   X(04)   VALUE ':C3:'.
            10   GZTCD2    PIC   X(03)   VALUE ' '.
            10   GZCCY2-T  PIC   X(04)   VALUE ':C3:'.
            10   GZCCY2    PIC   X(03)   VALUE ' '.
            10   GZSRC2-T  PIC   X(04)   VALUE ':C2:'.
            10   GZSRC2    PIC   X(02)   VALUE ' '.
            10   GZUC3-T   PIC   X(04)   VALUE ':C3:'.
            10   GZUC3     PIC   X(03)   VALUE ' '.
            10   GZUC4-T   PIC   X(04)   VALUE ':C3:'.
            10   GZUC4     PIC   X(03)   VALUE ' '.
            10   GZNR5-T   PIC   X(05)   VALUE ':C35:'.
            10   GZNR5     PIC   X(35)   VALUE ' '.
            10   GZNR6-T   PIC   X(05)   VALUE ':C35:'.
            10   GZNR6     PIC   X(35)   VALUE ' '.
            10   GZNR7-T   PIC   X(05)   VALUE ':C35:'.
            10   GZNR7     PIC   X(35)   VALUE ' '.
            10   GZNR8-T   PIC   X(05)   VALUE ':C35:'.
            10   GZNR8     PIC   X(35)   VALUE ' '.
            10   GZCED2-T  PIC   X(04)   VALUE ':C1:'.
            10   GZCED2    PIC   X(01)   VALUE ' '.
            10   GZMCH2-T  PIC   X(04)   VALUE ':C1:'.
            10   GZMCH2    PIC   X(01)   VALUE ' '.
            10   GZRRT-T   PIC   X(04)   VALUE ':C3:'.
            10   GZRRT     PIC   X(03)   VALUE ' '.
            10   GZEXR-T   PIC   X(05)   VALUE ':C14:'.
            10   GZEXR     PIC   X(14)   VALUE ' '.
            10   GZFONT-T  PIC   X(04)   VALUE ':C1:'.
            10   GZFONT    PIC   X(01)   VALUE ' '.
            10   GZEXRH-T  PIC   X(07)   VALUE ':P1509:'.
            10   GZEXRH    PIC   X(17)   VALUE ' '.
            10   GZBAM1-T  PIC   X(05)   VALUE ':P15:'.
            10   GZBAM1    PIC   X(17)   VALUE ' '.
            10   GZOAM1-T  PIC   X(05)   VALUE ':P15:'.
            10   GZOAM1    PIC   X(17)   VALUE ' '.
            10   GZBAM2-T  PIC   X(05)   VALUE ':P15:'.
            10   GZBAM2    PIC   X(17)   VALUE ' '.
            10   GZOAM2-T  PIC   X(05)   VALUE ':P15:'.
            10   GZOAM2    PIC   X(17)   VALUE ' '.
            10   GZIEA-T   PIC   X(04)   VALUE ':C1:'.
            10   GZIEA     PIC   X(01)   VALUE ' '.
            10   GZOID-T   PIC   X(04)   VALUE ':C3:'.
            10   GZOID     PIC   X(03)   VALUE ' '.
            10   GZSOT-T   PIC   X(04)   VALUE ':C1:'.
            10   GZSOT     PIC   X(01)   VALUE ' '.
            10   GZTREF-T  PIC   X(05)   VALUE ':C16:'.
            10   GZTREF    PIC   X(16)   VALUE ' '.
            10   GZANMD-T  PIC   X(04)   VALUE ':C6:'.
            10   GZANMD    PIC   X(06)   VALUE ' '.
            10   GZGDP-T   PIC   X(04)   VALUE ':C1:'.
            10   GZGDP     PIC   X(01)   VALUE ' '.
            10   GZCRT-T   PIC   X(04)   VALUE ':C1:'.
            10   GZCRT     PIC   X(01)   VALUE ' '.
            10   GZALL-T   PIC   X(04)   VALUE ':C1:'.
            10   GZALL     PIC   X(01)   VALUE ' '.
            10   GZHOLD-T  PIC   X(04)   VALUE ':C1:'.
            10   GZHOLD    PIC   X(01)   VALUE ' '.
            10   GZPDTE-T  PIC   X(05)   VALUE ':S07:'.
            10   GZPDTE    PIC   X(09)   VALUE ' '.
            10   GZFOR-T   PIC   X(04)   VALUE ':C1:'.
            10   GZFOR     PIC   X(01)   VALUE ' '.
            10   GZDRTY-T  PIC   X(04)   VALUE ':C3:'.
            10   GZDRTY    PIC   X(03)   VALUE ' '.
            10   GZMRTY-T  PIC   X(04)   VALUE ':C2:'.
            10   GZMRTY    PIC   X(02)   VALUE ' '.
            10   GZDTTY-T  PIC   X(05)   VALUE ':S07:'.
            10   GZDTTY    PIC   X(09)   VALUE ' '.
            10   GZQTR-T   PIC   X(04)   VALUE ':C2:'.
            10   GZQTR     PIC   X(02)   VALUE ' '.
            10   GZQTR2-T  PIC   X(04)   VALUE ':C2:'.
            10   GZQTR2    PIC   X(02)   VALUE ' '.
            10   GZQSTS-T  PIC   X(04)   VALUE ':C5:'.
            10   GZQSTS    PIC   X(05)   VALUE ' '.
            10   GZQST2-T  PIC   X(04)   VALUE ':C5:'.
            10   GZQST2    PIC   X(05)   VALUE ' '.
            10   GZQRES-T  PIC   X(04)   VALUE ':C5:'.
            10   GZQRES    PIC   X(05)   VALUE ' '.
            10   GZQRS2-T  PIC   X(04)   VALUE ':C5:'.
            10   GZQRS2    PIC   X(05)   VALUE ' '.
            10   GZQNQ-T   PIC   X(04)   VALUE ':C1:'.
            10   GZQNQ     PIC   X(01)   VALUE ' '.
            10   GZQMSQ-T  PIC   X(05)   VALUE ':P07:'.
            10   GZQMSQ    PIC   X(09)   VALUE ' '.
            10   GZQACT-T  PIC   X(04)   VALUE ':C2:'.
            10   GZQACT    PIC   X(02)   VALUE ' '.
            10   GZQSCR-T  PIC   X(04)   VALUE ':C1:'.
            10   GZQSCR    PIC   X(01)   VALUE ' '.
            10   GZQUID-T  PIC   X(05)   VALUE ':C10:'.
            10   GZQUID    PIC   X(10)   VALUE ' '.
            10   GZUPTY-T  PIC   X(04)   VALUE ':C5:'.
            10   GZUPTY    PIC   X(05)   VALUE ' '.
            10   GZQBAL-T  PIC   X(05)   VALUE ':P15:'.
            10   GZQBAL    PIC   X(17)   VALUE ' '.
            10   GZQDTE-T  PIC   X(05)   VALUE ':S07:'.
            10   GZQDTE    PIC   X(09)   VALUE ' '.
            10   GZQPTY-T  PIC   X(04)   VALUE ':C5:'.
            10   GZQPTY    PIC   X(05)   VALUE ' '.
            10   GZQRRC-T  PIC   X(04)   VALUE ':C3:'.
            10   GZQRRC    PIC   X(03)   VALUE ' '.
            10   GZQAID-T  PIC   X(05)   VALUE ':C10:'.
            10   GZQAID    PIC   X(10)   VALUE ' '.
            10   GZQGRP-T  PIC   X(05)   VALUE ':C10:'.
            10   GZQGRP    PIC   X(10)   VALUE ' '.
            10   GZQCHK-T  PIC   X(05)   VALUE ':S02:'.
            10   GZQCHK    PIC   X(04)   VALUE ' '.
            10   GZQCHD-T  PIC   X(05)   VALUE ':S02:'.
            10   GZQCHD    PIC   X(04)   VALUE ' '.
            10   GZQRED-T  PIC   X(05)   VALUE ':S07:'.
            10   GZQRED    PIC   X(09)   VALUE ' '.
            10   GZQRET-T  PIC   X(05)   VALUE ':S06:'.
            10   GZQRET    PIC   X(08)   VALUE ' '.
            10   GZQBID-T  PIC   X(05)   VALUE ':C16:'.
            10   GZQBID    PIC   X(16)   VALUE ' '.
            10   GZQLVL-T  PIC   X(04)   VALUE ':C2:'.
            10   GZQLVL    PIC   X(02)   VALUE ' '.
            10   GZQEVM-T  PIC   X(04)   VALUE ':C6:'.
            10   GZQEVM    PIC   X(06)   VALUE 'OAI'.
            10   GZDRR-T   PIC   X(04)   VALUE ':C1:'.
            10   GZDRR     PIC   X(01)   VALUE ' '.
            10   GZCRR-T   PIC   X(04)   VALUE ':C1:'.
            10   GZCRR     PIC   X(01)   VALUE ' '.
            10   GZDRCL-T  PIC   X(05)   VALUE ':P15:'.
            10   GZDRCL    PIC   X(17)   VALUE ' '.
            10   GZCRCL-T  PIC   X(05)   VALUE ':P15:'.
            10   GZCRCL    PIC   X(17)   VALUE ' '.
            10   GZDRO-T   PIC   X(04)   VALUE ':C1:'.
            10   GZDRO     PIC   X(01)   VALUE ' '.
            10   GZCRO-T   PIC   X(04)   VALUE ':C1:'.
            10   GZCRO     PIC   X(01)   VALUE ' '.
            10   GZPSQ7-T  PIC   X(05)   VALUE ':P07:'.
            10   GZPSQ7    PIC   X(09)   VALUE '0000001'.
            10   GZZZZZ-T  PIC   X(02)   VALUE '::'.
