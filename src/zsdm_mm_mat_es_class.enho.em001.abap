METHOD build_custom_table .

  DATA:
   lx_open_sql_error TYPE REF TO cx_sy_open_sql_error.

  FIELD-SYMBOLS:
    <custom> LIKE LINE OF me->mt_custom_test.

  me->build_field_selection( iv_struct_name = 'ZSDM_CUSTOM_TEST' ).

  TRY.
*/ Select Data
      SELECT (me->mt_field_list)
        UP TO me->ms_selscreen-max_rows ROWS
        FROM zsdm_custom_test
        INTO CORRESPONDING FIELDS OF TABLE me->mt_custom_test
      WHERE object IN me->ms_selscreen-matnr.

    CATCH cx_sy_open_sql_error INTO lx_open_sql_error.
      me->mv_message = lx_open_sql_error->get_text( ).
      me->mv_message = |Error GT_CUSTOM_TEST_SDM:| && me->mv_message.
      RAISE EXCEPTION TYPE /gda/cx_sdm_exception_handl
        EXPORTING
          mv_text = mv_message.
  ENDTRY.

  IF lines( me->mt_mara ) = 0.
    me->mv_message = TEXT-901. "'No data selected'.
    RAISE EXCEPTION TYPE /gda/cx_sdm_exception_handl
      EXPORTING
        mv_text = mv_message.
  ENDIF.

  LOOP AT me->mt_custom_test ASSIGNING <custom>.
    <custom>-sdm_tabkey = /gda/cl_sdm_data_model_main=>build_string_from_key( i_tabname  = 'ZSDM_CUSTOM_TEST'
                                                                         i_contents = <custom> ).
  ENDLOOP.

ENDMETHOD.
