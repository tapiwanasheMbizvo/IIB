       01 EQHOLD-RSP.
*
         05 EQHOLD-RSP-HEADER.
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
