class ZCL_ZFCL_SHIVA_TEST_DPC_EXT definition
  public
  inheriting from ZCL_ZFCL_SHIVA_TEST_DPC
  create public .

public section.

  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_EXPANDED_ENTITYSET
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_EXPANDED_ENTITY
    redefinition .
protected section.

  methods SALEORDERSET_GET_ENTITY
    redefinition .
  methods SALEORDERSET_GET_ENTITYSET
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZFCL_SHIVA_TEST_DPC_EXT IMPLEMENTATION.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_EXPANDED_ENTITY.
**TRY.
*CALL METHOD SUPER->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_EXPANDED_ENTITY
**  EXPORTING
**    iv_entity_name           =
**    iv_entity_set_name       =
**    iv_source_name           =
**    it_key_tab               =
**    it_navigation_path       =
**    io_expand                =
**    io_tech_request_context  =
**  IMPORTING
**    er_entity                =
**    es_response_context      =
**    et_expanded_clauses      =
**    et_expanded_tech_clauses =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.


    DATA:ls_item TYPE zcl_ZFCL_SHIVA_TEST_mpc_ext=>ts_item.
       DATA:lt_item TYPE zcl_ZFCL_SHIVA_TEST_mpc_ext=>tt_item.
    DATA: BEGIN OF ls_deep.
            INCLUDE TYPE zcl_ZFCL_SHIVA_TEST_mpc_ext=>ts_saleorder.
    DATA:    navitem  TYPE zcl_ZFCL_SHIVA_TEST_mpc_ext=>tt_item,
             END OF ls_deep.

   data: lt_deep                  LIKE TABLE OF ls_deep,
          ls_expanded_clause       LIKE LINE OF           et_expanded_tech_clauses.


             ls_deep-ernam = 'BALA'.
             ls_deep-vbeln = '3'.
             ls_deep-kunnr = '1001'.

ls_item-posnr = '0001'.
ls_item-matnr = 'MAIDA'.
ls_item-maktx = 'MAIDA DES'.
ls_item-vbeln = '3'.
ls_item-werks = 'NS01'.

APPEND ls_item TO lt_item.

clear:ls_item.
ls_item-posnr = '0002'.
ls_item-matnr = 'Laptop'.
ls_item-maktx = 'Dell Inspiron'.
ls_item-vbeln = '3'.
ls_item-werks = 'NS02'.

APPEND ls_item TO lt_item.

ls_deep-navitem = lt_item.
 ls_expanded_clause  = 'NAVITEM'.
            APPEND ls_expanded_clause TO et_expanded_tech_clauses.

append ls_deep to lt_deep.

 copy_data_to_ref(
              EXPORTING
                is_data = ls_deep
              CHANGING
                cr_data = er_entity ).
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_EXPANDED_ENTITYSET.
**TRY.
*CALL METHOD SUPER->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_EXPANDED_ENTITYSET
**  EXPORTING
**    iv_entity_name           =
**    iv_entity_set_name       =
**    iv_source_name           =
**    it_filter_select_options =
**    it_order                 =
**    is_paging                =
**    it_navigation_path       =
**    it_key_tab               =
**    iv_filter_string         =
**    iv_search_string         =
**    io_expand                =
**    io_tech_request_context  =
**  IMPORTING
**    er_entityset             =
**    et_expanded_clauses      =
**    et_expanded_tech_clauses =
**    es_response_context      =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.



    DATA:ls_item TYPE zcl_ZFCL_SHIVA_TEST_mpc_ext=>ts_item.
       DATA:lt_item TYPE zcl_ZFCL_SHIVA_TEST_mpc_ext=>tt_item.
    DATA: BEGIN OF ls_deep.
            INCLUDE TYPE zcl_ZFCL_SHIVA_TEST_mpc_ext=>ts_saleorder.
    DATA:    navitem  TYPE zcl_ZFCL_SHIVA_TEST_mpc_ext=>tt_item,
             END OF ls_deep.

   data: lt_deep                  LIKE TABLE OF ls_deep,
          ls_expanded_clause       LIKE LINE OF           et_expanded_tech_clauses.


             ls_deep-ernam = 'BALA'.
             ls_deep-vbeln = '3'.
             ls_deep-kunnr = '1001'.

ls_item-posnr = '0001'.
ls_item-matnr = 'MAIDA'.
ls_item-maktx = 'MAIDA DES'.
ls_item-vbeln = '3'.
ls_item-werks = 'NS01'.

APPEND ls_item TO lt_item.

clear:ls_item.
ls_item-posnr = '0002'.
ls_item-matnr = 'Laptop'.
ls_item-maktx = 'Dell Inspiron'.
ls_item-vbeln = '3'.
ls_item-werks = 'NS02'.

APPEND ls_item TO lt_item.

ls_deep-navitem = lt_item.
 ls_expanded_clause  = 'NAVITEM'.
            APPEND ls_expanded_clause TO et_expanded_tech_clauses.

append ls_deep to lt_deep.

 copy_data_to_ref(
              EXPORTING
                is_data = lt_deep
              CHANGING
                cr_data = er_entityset ).
  endmethod.


  method SALEORDERSET_GET_ENTITY.
**TRY.
*CALL METHOD SUPER->SALEORDERSET_GET_ENTITY
*  EXPORTING
*    IV_ENTITY_NAME          =
*    IV_ENTITY_SET_NAME      =
*    IV_SOURCE_NAME          =
*    IT_KEY_TAB              =
**    io_request_object       =
**    io_tech_request_context =
*    IT_NAVIGATION_PATH      =
**  IMPORTING
**    er_entity               =
**    es_response_context     =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.


     data:ls_saleorder type ZCL_ZFCL_SHIVA_TEST_MPC=>ts_saleorder.

    er_entity-vbeln = '1'.
    er_entity-ernam = 'Bala'.
    er_entity-erdat = '20210301'.
    er_entity-kunnr = '23'.

  endmethod.


  method SALEORDERSET_GET_ENTITYSET.
**TRY.
*CALL METHOD SUPER->SALEORDERSET_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  IMPORTING
**    et_entityset             =
**    es_response_context      =
*    .
**  CATCH /iwbep/cx_mgw_busi_exception.
**  CATCH /iwbep/cx_mgw_tech_exception.
**ENDTRY.
    data:lv_string type string.

    lv_string = '123'.










  endmethod.
ENDCLASS.
