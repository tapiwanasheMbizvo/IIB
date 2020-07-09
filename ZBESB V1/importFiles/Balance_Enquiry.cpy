       01 BALANCE-ENQUIRY.
      *
          05 BALANCE-ENQUIRY-HEADER.
      *
             10   MSGTYPE             PIC   X(003)   VALUE '200'.
             10   SRCSYS              PIC   X(008)   VALUE 'ESBX'.
             10   ORIGTYPE            PIC   X(032)   VALUE SPACES.
             10   TGTSYS              PIC   X(008)   VALUE 'EQUATION'.
             10   USER                PIC   X(010)   VALUE SPACES.
             10   PWD                 PIC   X(010)   VALUE SPACES.
             10   FORMAT              PIC   X(008)   VALUE 'FIXED'.
             10   VERSION             PIC   X(008)   VALUE 'E3C'.
             10   RPYQUEUE.
               15 RPYQUEUE1           PIC   X(010)   VALUE 'ESB.RESPON'.
               15 RPYQUEUE2           PIC   X(010)   VALUE 'SES.QUEUE'.
             10   RESPMODE            PIC   X(001)   VALUE SPACES.
             10   MAPLOCN             PIC   X(001)   VALUE SPACES.
             10   SPAREA              PIC   X(150)   VALUE SPACES.
             10   DRV                 PIC   X(010)   VALUE 'H46HMR'.
             10   RPGM                PIC   X(010)   VALUE 'H68EER'.
             10   USID                PIC   X(010)   VALUE 'ZIMOWNER'.
             10   WSID                PIC   X(010)   VALUE 'ESBX'.
             10   JTT                 PIC   X(001)   VALUE 'E'.
             10   BRNM                PIC   X(004)   VALUE '4131'.
             10   REPLYMSG.
               15 REPLYMSG1           PIC   X(010)   VALUE 'ESB.RESPON'.
               15 REPLYMSG2           PIC   X(022)   VALUE 'SES.QUEUE'.
             10   PCREF.
               15 PCREF1              PIC   X(008)   VALUE '20004102'.
               15 PCREF2              PIC   X(007)   VALUE '1563989'.
             10   FIXEDDATASIZE       PIC   X(013)   VALUE '00518'.
             10   REPEATINGBLOCKSIZE  PIC   X(014)   VALUE '00000'.
             10   NMSGS               PIC   X(004)   VALUE '0001'.
             10   ENQUIRYKEY          PIC   X(050)   VALUE SPACES.
             10   REPLY               PIC   X(001)   VALUE 'Y'.
             10   WARNS               PIC   X(001)   VALUE 'N'.
             10   TSTAMP              PIC   X(016)   VALUE SPACES.
             10   ORIGIN              PIC   X(004)   VALUE 'ESBX'.
             10   SPAREB              PIC   X(042)   VALUE SPACES.
             10   CUSTOMERDETAILS     PIC   X(020)   VALUE SPACES.
             10   SPARE-C             PIC   X(002)   VALUE SPACES.
             10   ACKREQUIRED         PIC   X(001)   VALUE 'N'.
             10   CONFREQUIRED        PIC   X(001)   VALUE 'Y'.
             10   FORCETRANSACTION    PIC   X(001)   VALUE 'N'.
             10   REFERTRANSACTION    PIC   X(004)   VALUE SPACES.
             10   CCSID               PIC   X(004)   VALUE SPACES.
             10   SINGLERESPONSE      PIC   X(004)   VALUE SPACES.
             10   VALIDATEONLY        PIC   X(001)   VALUE SPACES.
             10   EQREFERENCEPSN      PIC   X(002)   VALUE SPACES.
             10   EQREFERENCELEN      PIC   X(002)   VALUE SPACES.
             10   APPLYDURINGREC      PIC   X(001)   VALUE 'N'.
             10   APPLYDURINGEXT      PIC   X(001)   VALUE 'N'.
             10   APPLYDURINGNIGHT    PIC   X(001)   VALUE 'N'.
             10   SPLITRESPONSE       PIC   X(001)   VALUE SPACES.
      *           End
      *
          05      BALANCE-ENQUIRY-BODY.
      *
             10   HZAB                PIC   X(04)    VALUE '0000'.
             10   HZAN                PIC   X(06)    VALUE '000000'.
             10   HZAS                PIC   X(03)    VALUE '000'.
             10   HZSHN               PIC   X(15)    VALUE SPACES.
             10   HZSHNA              PIC   X(15)    VALUE SPACES.
             10   HZCUS               PIC   X(06)    VALUE SPACES.
             10   HZCLC               PIC   X(03)    VALUE SPACES.
             10   HZCUN               PIC   X(35)    VALUE SPACES.
             10   HZCUNA              PIC   X(35)    VALUE SPACES.
             10   HZACT               PIC   X(02)    VALUE SPACES.
             10   HZAPP               PIC   X(02)    VALUE SPACES.
             10   HZACS               PIC   X(01)    VALUE SPACES.
             10   HZCCY               PIC   X(03)    VALUE SPACES.
             10   HZCED               PIC   X(01)    VALUE SPACES.
             10   HZAI47              PIC   X(01)    VALUE SPACES.
             10   HZAI14              PIC   X(01)    VALUE SPACES.
             10   HZAI17              PIC   X(01)    VALUE SPACES.
             10   HZAI20              PIC   X(01)    VALUE SPACES.
             10   HZAI30              PIC   X(01)    VALUE SPACES.
             10   HZODL               PIC   X(16)    VALUE SPACES.
             10   HZLED               PIC   X(07)    VALUE '0000000'.
             10   HZYODE              PIC   X(01)    VALUE SPACES.
             10   HZRBA               PIC   X(16)    VALUE SPACES.
             10   HZLDBL              PIC   X(16)    VALUE SPACES.
             10   HZSTBL              PIC   X(16)    VALUE SPACES.
             10   HZPCBL              PIC   X(16)    VALUE SPACES.
             10   HZCCBL              PIC   X(16)    VALUE SPACES.
             10   HZCABL              PIC   X(16)    VALUE SPACES.
             10   HZYCAB              PIC   X(01)    VALUE SPACES.
             10   HZLABL              PIC   X(16)    VALUE SPACES.
             10   HZYLAB              PIC   X(01)    VALUE SPACES.
             10   HZNABL              PIC   X(16)    VALUE SPACES.
             10   HZNAB1              PIC   X(16)    VALUE SPACES.
             10   HZYNAB              PIC   X(01)    VALUE SPACES.
             10   HZFWBL              PIC   X(16)    VALUE SPACES.
             10   HZYFWB              PIC   X(01)    VALUE SPACES.
             10   HZSM0               PIC   X(16)    VALUE SPACES.
             10   HZSML               PIC   X(16)    VALUE SPACES.
             10   HZSM1               PIC   X(16)    VALUE SPACES.
             10   HZSM2               PIC   X(16)    VALUE SPACES.
             10   HZSMD               PIC   X(16)    VALUE SPACES.
             10   HZSMC               PIC   X(16)    VALUE SPACES.
             10   HZSMA               PIC   X(16)    VALUE SPACES.
             10   HZAII4              PIC   X(01)    VALUE SPACES.
             10   HZAII5              PIC   X(01)    VALUE SPACES.
             10   HZAII7              PIC   X(01)    VALUE SPACES.
             10   HZNWT               PIC   X(16)    VALUE SPACES.
             10   HZAICT              PIC   X(01)    VALUE SPACES.
             10   HZNWN               PIC   X(16)    VALUE SPACES.
             10   HZAICN              PIC   X(01)    VALUE SPACES.
             10   HZNWA               PIC   X(16)    VALUE SPACES.
             10   HZAICA              PIC   X(01)    VALUE SPACES.
             10   HZRBC               PIC   X(21)    VALUE SPACES.
             10   HZGRP               PIC   X(06)    VALUE SPACES.
             10   HZAIA7              PIC   X(01)    VALUE SPACES.
      *       End
