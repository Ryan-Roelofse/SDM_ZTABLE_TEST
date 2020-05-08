class ZGDA_CL_SDM_BADI1_06 definition
  public
  final
  create public .

public section.

  interfaces /GDA/SDM_IF_BADI_CORE1 .
  interfaces IF_BADI_INTERFACE .
protected section.
private section.
ENDCLASS.



CLASS ZGDA_CL_SDM_BADI1_06 IMPLEMENTATION.


  method /GDA/SDM_IF_BADI_CORE1~ADD_SDM_TYPE.
     DATA:
      ls_sdm_type TYPE /gda/sdm_s_sdm_type.

    ls_sdm_type-sign   = 'I'.
    ls_sdm_type-option = 'EQ'.
    ls_sdm_type-low    = '11'.
    append ls_sdm_type to xt_sdm_type.

  endmethod.
ENDCLASS.
