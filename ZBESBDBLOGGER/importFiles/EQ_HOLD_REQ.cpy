       01 EQHOLD-REQ.
*
         05 EQHOLD-REQ-HEADER.
*
            10   MSGTYPE    PIC   X(004)  VALUE '0200'.
            10   MSGTYPE2   PIC   X(028)  VALUE ' '.
            10   SRCSYS     PIC   X(008)  VALUE 'ESBX'.
            10   ORIGTYPE   PIC   X(032)  VALUE ' '.
            10   TGTSYS     PIC   X(008)  VALUE 'EQUATION'.
            10   USER       PIC   X(010)  VALUE ' '.
            10   PASSWRD    PIC   X(010)  VALUE ' '.
            10   FORMAT     PIC   X(008)  VALUE 'TAGGED F'.
            10   VERSION    PIC   X(008)  VALUE 'E3C'.
            10   RPYQUEUE   PIC   X(020)  VALUE 'ESB.RESP.QUEUE'.
            10   RESPMODE   PIC   X(001)  VALUE ' '.
            10   MAPLOCN    PIC   X(001)  VALUE ' '.
            10   SPAREA     PIC   X(150)  VALUE ' '.
            10   DRV        PIC   X(010)  VALUE 'H56H1R'.
            10   RPGM       PIC   X(010)  VALUE 'J40ARR'.
            10   USID       PIC   X(010)  VALUE 'ZIMOWNER'.
            10   WSID       PIC   X(010)  VALUE 'ESBX'.
            10   JTT        PIC   X(001)  VALUE 'A'.
            10   BRNM       PIC   X(004)  VALUE '4131'.
            10   REPLYMSG   PIC   X(032)  VALUE 'ESB.RESP.QUEUE'.
            10   PCREF      PIC   X(015)  VALUE '200041021563989'.
            10   NMSGS      PIC   X(004)  VALUE '0001'.
            10   TRANSQ     PIC   X(004)  VALUE '0001'.
            10   REPLY      PIC   X(001)  VALUE 'Y'.
            10   WARNS      PIC   X(001)  VALUE 'N'.
            10   TSTAMP     PIC   X(016)  VALUE ' '.
            10   ORIGIN     PIC   X(004)  VALUE 'ESBX'.
            10   SPAREB     PIC   X(123)  VALUE ' '.

*
         05 EQHOLD-REQ-BODY.
*
            10   GZBBN-T   PIC   X(04)   VALUE ':C4:'.
            10   GZBBN     PIC   X(04)   VALUE ' '.
            10   GZBNO-T   PIC   X(04)   VALUE ':C6:'.
            10   GZBNO     PIC   X(06)   VALUE ' '.
            10   GZSFX-T   PIC   X(04)   VALUE ':C3:'.
            10   GZSFX     PIC   X(03)   VALUE ' '.
            10   GZCUS-T   PIC   X(04)   VALUE ':C6:'.
            10   GZCUS     PIC   X(06)   VALUE ' '.
            10   GZCLC-T   PIC   X(04)   VALUE ':C3:'.
            10   GZCLC     PIC   X(03)   VALUE ' '.
            10   GZBRNM-T  PIC   X(04)   VALUE ':C4:'.
            10   GZBRNM    PIC   X(04)   VALUE ' '.
            10   GZACO-T   PIC   X(04)   VALUE ':C3:'.
            10   GZACO     PIC   X(03)   VALUE ' '.
            10   GZHRC-T   PIC   X(04)   VALUE ':C3:'.
            10   GZHRC     PIC   X(03)   VALUE ' '.
            10   GZHDD1-T  PIC   X(05)   VALUE ':C35:'.
            10   GZHDD1    PIC   X(35)   VALUE ' '.
            10   GZHDD2-T  PIC   X(05)   VALUE ':C35:'.
            10   GZHDD2    PIC   X(35)   VALUE ' '.
            10   GZHDD3-T  PIC   X(05)   VALUE ':C35:'.
            10   GZHDD3    PIC   X(35)   VALUE ' '.
            10   GZHDD4-T  PIC   X(05)   VALUE ':C35:'.
            10   GZHDD4    PIC   X(35)   VALUE ' '.
            10   GZSTD-T  PIC   X(05)   VALUE ':S07:'.
            10   GZSTD    PIC   X(09)   VALUE '0'.
            10   GZEXD-T  PIC   X(05)   VALUE ':S07:'.
            10   GZEXD    PIC   X(09)   VALUE '0'.
            10   GZCCY-T   PIC   X(04)   VALUE ':C3:'.
            10   GZCCY     PIC   X(03)   VALUE ' '.
            10   GZHNO-T  PIC   X(05)   VALUE ':P03:'.
            10   GZHNO    PIC   X(05)   VALUE ' '.
            10   GZINP-T  PIC   X(05)   VALUE ':S07:'.
            10   GZINP    PIC   X(09)   VALUE '0'.
            10   GZZZZZ-T  PIC   X(02)   VALUE '::'.
