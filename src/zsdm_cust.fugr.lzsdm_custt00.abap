*---------------------------------------------------------------------*
*    view related data declarations
*   generation date: 28.04.2020 at 12:48:35 by user RROELOFSE
*   view maintenance generator version: #001407#
*---------------------------------------------------------------------*
*...processing: ZSDM_CUSTOM_TEST................................*
DATA:  BEGIN OF STATUS_ZSDM_CUSTOM_TEST              .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZSDM_CUSTOM_TEST              .
CONTROLS: TCTRL_ZSDM_CUSTOM_TEST
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZSDM_CUSTOM_TEST              .
TABLES: ZSDM_CUSTOM_TEST               .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
