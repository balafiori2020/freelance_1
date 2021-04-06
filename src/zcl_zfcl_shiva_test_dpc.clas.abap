class ZCL_ZFCL_SHIVA_TEST_DPC definition
  public
  inheriting from /IWBEP/CL_MGW_PUSH_ABS_DATA
  abstract
  create public .

public section.

  interfaces /IWBEP/IF_SB_DPC_COMM_SERVICES .
  interfaces /IWBEP/IF_SB_GENDPC_SHLP_DATA .
  interfaces /IWBEP/IF_SB_GEN_DPC_INJECTION .

  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITYSET
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~UPDATE_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~DELETE_ENTITY
    redefinition .
protected section.

  data mo_injection type ref to /IWBEP/IF_SB_GEN_DPC_INJECTION .

  methods DEBIASET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZFCL_SHIVA_TEST_MPC=>TS_DEBIA
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods DEBIASET_DELETE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_D optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods DEBIASET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZFCL_SHIVA_TEST_MPC=>TS_DEBIA
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods DEBIASET_GET_ENTITYSET
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION
      !IS_PAGING type /IWBEP/S_MGW_PAGING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IT_ORDER type /IWBEP/T_MGW_SORTING_ORDER
      !IV_FILTER_STRING type STRING
      !IV_SEARCH_STRING type STRING
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET optional
    exporting
      !ET_ENTITYSET type ZCL_ZFCL_SHIVA_TEST_MPC=>TT_DEBIA
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods DEBIASET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZFCL_SHIVA_TEST_MPC=>TS_DEBIA
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ITEMSET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZFCL_SHIVA_TEST_MPC=>TS_ITEM
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ITEMSET_DELETE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_D optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ITEMSET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZFCL_SHIVA_TEST_MPC=>TS_ITEM
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ITEMSET_GET_ENTITYSET
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION
      !IS_PAGING type /IWBEP/S_MGW_PAGING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IT_ORDER type /IWBEP/T_MGW_SORTING_ORDER
      !IV_FILTER_STRING type STRING
      !IV_SEARCH_STRING type STRING
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET optional
    exporting
      !ET_ENTITYSET type ZCL_ZFCL_SHIVA_TEST_MPC=>TT_ITEM
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods ITEMSET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZFCL_SHIVA_TEST_MPC=>TS_ITEM
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods SALEORDERSET_CREATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_C optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZFCL_SHIVA_TEST_MPC=>TS_SALEORDER
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods SALEORDERSET_DELETE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_D optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods SALEORDERSET_GET_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_REQUEST_OBJECT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
    exporting
      !ER_ENTITY type ZCL_ZFCL_SHIVA_TEST_MPC=>TS_SALEORDER
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods SALEORDERSET_GET_ENTITYSET
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_FILTER_SELECT_OPTIONS type /IWBEP/T_MGW_SELECT_OPTION
      !IS_PAGING type /IWBEP/S_MGW_PAGING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IT_ORDER type /IWBEP/T_MGW_SORTING_ORDER
      !IV_FILTER_STRING type STRING
      !IV_SEARCH_STRING type STRING
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET optional
    exporting
      !ET_ENTITYSET type ZCL_ZFCL_SHIVA_TEST_MPC=>TT_SALEORDER
      !ES_RESPONSE_CONTEXT type /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods SALEORDERSET_UPDATE_ENTITY
    importing
      !IV_ENTITY_NAME type STRING
      !IV_ENTITY_SET_NAME type STRING
      !IV_SOURCE_NAME type STRING
      !IT_KEY_TAB type /IWBEP/T_MGW_NAME_VALUE_PAIR
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITY_U optional
      !IT_NAVIGATION_PATH type /IWBEP/T_MGW_NAVIGATION_PATH
      !IO_DATA_PROVIDER type ref to /IWBEP/IF_MGW_ENTRY_PROVIDER optional
    exporting
      !ER_ENTITY type ZCL_ZFCL_SHIVA_TEST_MPC=>TS_SALEORDER
    raising
      /IWBEP/CX_MGW_BUSI_EXCEPTION
      /IWBEP/CX_MGW_TECH_EXCEPTION .

  methods CHECK_SUBSCRIPTION_AUTHORITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZFCL_SHIVA_TEST_DPC IMPLEMENTATION.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_CRT_ENTITY_BASE
*&* This class has been generated on 06.04.2021 09:48:34 in client 100
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZFCL_SHIVA_TEST_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA saleorderset_create_entity TYPE zcl_zfcl_shiva_test_mpc=>ts_saleorder.
 DATA debiaset_create_entity TYPE zcl_zfcl_shiva_test_mpc=>ts_debia.
 DATA itemset_create_entity TYPE zcl_zfcl_shiva_test_mpc=>ts_item.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  SaleorderSet
*-------------------------------------------------------------------------*
     WHEN 'SaleorderSet'.
*     Call the entity set generated method
    saleorderset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = saleorderset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = saleorderset_create_entity
      CHANGING
        cr_data = er_entity
   ).

*-------------------------------------------------------------------------*
*             EntitySet -  DebiaSet
*-------------------------------------------------------------------------*
     WHEN 'DebiaSet'.
*     Call the entity set generated method
    debiaset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = debiaset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = debiaset_create_entity
      CHANGING
        cr_data = er_entity
   ).

*-------------------------------------------------------------------------*
*             EntitySet -  ItemSet
*-------------------------------------------------------------------------*
     WHEN 'ItemSet'.
*     Call the entity set generated method
    itemset_create_entity(
         EXPORTING iv_entity_name     = iv_entity_name
                   iv_entity_set_name = iv_entity_set_name
                   iv_source_name     = iv_source_name
                   io_data_provider   = io_data_provider
                   it_key_tab         = it_key_tab
                   it_navigation_path = it_navigation_path
                   io_tech_request_context = io_tech_request_context
       	 IMPORTING er_entity          = itemset_create_entity
    ).
*     Send specific entity data to the caller interfaces
    copy_data_to_ref(
      EXPORTING
        is_data = itemset_create_entity
      CHANGING
        cr_data = er_entity
   ).

  when others.
    super->/iwbep/if_mgw_appl_srv_runtime~create_entity(
       EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         io_data_provider   = io_data_provider
         it_key_tab = it_key_tab
         it_navigation_path = it_navigation_path
      IMPORTING
        er_entity = er_entity
  ).
ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~DELETE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_DEL_ENTITY_BASE
*&* This class has been generated on 06.04.2021 09:48:34 in client 100
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZFCL_SHIVA_TEST_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  SaleorderSet
*-------------------------------------------------------------------------*
      when 'SaleorderSet'.
*     Call the entity set generated method
     saleorderset_delete_entity(
          EXPORTING iv_entity_name     = iv_entity_name
                    iv_entity_set_name = iv_entity_set_name
                    iv_source_name     = iv_source_name
                    it_key_tab         = it_key_tab
                    it_navigation_path = it_navigation_path
                    io_tech_request_context = io_tech_request_context
     ).

*-------------------------------------------------------------------------*
*             EntitySet -  DebiaSet
*-------------------------------------------------------------------------*
      when 'DebiaSet'.
*     Call the entity set generated method
     debiaset_delete_entity(
          EXPORTING iv_entity_name     = iv_entity_name
                    iv_entity_set_name = iv_entity_set_name
                    iv_source_name     = iv_source_name
                    it_key_tab         = it_key_tab
                    it_navigation_path = it_navigation_path
                    io_tech_request_context = io_tech_request_context
     ).

*-------------------------------------------------------------------------*
*             EntitySet -  ItemSet
*-------------------------------------------------------------------------*
      when 'ItemSet'.
*     Call the entity set generated method
     itemset_delete_entity(
          EXPORTING iv_entity_name     = iv_entity_name
                    iv_entity_set_name = iv_entity_set_name
                    iv_source_name     = iv_source_name
                    it_key_tab         = it_key_tab
                    it_navigation_path = it_navigation_path
                    io_tech_request_context = io_tech_request_context
     ).

   when others.
     super->/iwbep/if_mgw_appl_srv_runtime~delete_entity(
        EXPORTING
          iv_entity_name = iv_entity_name
          iv_entity_set_name = iv_entity_set_name
          iv_source_name = iv_source_name
          it_key_tab = it_key_tab
          it_navigation_path = it_navigation_path
 ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITY.
*&-----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_GETENTITY_BASE
*&* This class has been generated  on 06.04.2021 09:48:34 in client 100
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZFCL_SHIVA_TEST_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA saleorderset_get_entity TYPE zcl_zfcl_shiva_test_mpc=>ts_saleorder.
 DATA debiaset_get_entity TYPE zcl_zfcl_shiva_test_mpc=>ts_debia.
 DATA itemset_get_entity TYPE zcl_zfcl_shiva_test_mpc=>ts_item.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data.       "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  SaleorderSet
*-------------------------------------------------------------------------*
      WHEN 'SaleorderSet'.
*     Call the entity set generated method
          saleorderset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = saleorderset_get_entity
                         es_response_context = es_response_context
          ).

        IF saleorderset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = saleorderset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  DebiaSet
*-------------------------------------------------------------------------*
      WHEN 'DebiaSet'.
*     Call the entity set generated method
          debiaset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = debiaset_get_entity
                         es_response_context = es_response_context
          ).

        IF debiaset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = debiaset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  ItemSet
*-------------------------------------------------------------------------*
      WHEN 'ItemSet'.
*     Call the entity set generated method
          itemset_get_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = itemset_get_entity
                         es_response_context = es_response_context
          ).

        IF itemset_get_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = itemset_get_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.

      WHEN OTHERS.
        super->/iwbep/if_mgw_appl_srv_runtime~get_entity(
           EXPORTING
             iv_entity_name = iv_entity_name
             iv_entity_set_name = iv_entity_set_name
             iv_source_name = iv_source_name
             it_key_tab = it_key_tab
             it_navigation_path = it_navigation_path
          IMPORTING
            er_entity = er_entity
    ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_ENTITYSET.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TMP_ENTITYSET_BASE
*&* This class has been generated on 06.04.2021 09:48:34 in client 100
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZFCL_SHIVA_TEST_DPC_EXT
*&-----------------------------------------------------------------------------------------------*
 DATA saleorderset_get_entityset TYPE zcl_zfcl_shiva_test_mpc=>tt_saleorder.
 DATA debiaset_get_entityset TYPE zcl_zfcl_shiva_test_mpc=>tt_debia.
 DATA itemset_get_entityset TYPE zcl_zfcl_shiva_test_mpc=>tt_item.
 DATA lv_entityset_name TYPE string.

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  SaleorderSet
*-------------------------------------------------------------------------*
   WHEN 'SaleorderSet'.
*     Call the entity set generated method
      saleorderset_get_entityset(
        EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         it_filter_select_options = it_filter_select_options
         it_order = it_order
         is_paging = is_paging
         it_navigation_path = it_navigation_path
         it_key_tab = it_key_tab
         iv_filter_string = iv_filter_string
         iv_search_string = iv_search_string
         io_tech_request_context = io_tech_request_context
       IMPORTING
         et_entityset = saleorderset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = saleorderset_get_entityset
        CHANGING
          cr_data = er_entityset
      ).

*-------------------------------------------------------------------------*
*             EntitySet -  DebiaSet
*-------------------------------------------------------------------------*
   WHEN 'DebiaSet'.
*     Call the entity set generated method
      debiaset_get_entityset(
        EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         it_filter_select_options = it_filter_select_options
         it_order = it_order
         is_paging = is_paging
         it_navigation_path = it_navigation_path
         it_key_tab = it_key_tab
         iv_filter_string = iv_filter_string
         iv_search_string = iv_search_string
         io_tech_request_context = io_tech_request_context
       IMPORTING
         et_entityset = debiaset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = debiaset_get_entityset
        CHANGING
          cr_data = er_entityset
      ).

*-------------------------------------------------------------------------*
*             EntitySet -  ItemSet
*-------------------------------------------------------------------------*
   WHEN 'ItemSet'.
*     Call the entity set generated method
      itemset_get_entityset(
        EXPORTING
         iv_entity_name = iv_entity_name
         iv_entity_set_name = iv_entity_set_name
         iv_source_name = iv_source_name
         it_filter_select_options = it_filter_select_options
         it_order = it_order
         is_paging = is_paging
         it_navigation_path = it_navigation_path
         it_key_tab = it_key_tab
         iv_filter_string = iv_filter_string
         iv_search_string = iv_search_string
         io_tech_request_context = io_tech_request_context
       IMPORTING
         et_entityset = itemset_get_entityset
         es_response_context = es_response_context
       ).
*     Send specific entity data to the caller interface
      copy_data_to_ref(
        EXPORTING
          is_data = itemset_get_entityset
        CHANGING
          cr_data = er_entityset
      ).

    WHEN OTHERS.
      super->/iwbep/if_mgw_appl_srv_runtime~get_entityset(
        EXPORTING
          iv_entity_name = iv_entity_name
          iv_entity_set_name = iv_entity_set_name
          iv_source_name = iv_source_name
          it_filter_select_options = it_filter_select_options
          it_order = it_order
          is_paging = is_paging
          it_navigation_path = it_navigation_path
          it_key_tab = it_key_tab
          iv_filter_string = iv_filter_string
          iv_search_string = iv_search_string
          io_tech_request_context = io_tech_request_context
       IMPORTING
         er_entityset = er_entityset ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_MGW_APPL_SRV_RUNTIME~UPDATE_ENTITY.
*&----------------------------------------------------------------------------------------------*
*&  Include           /IWBEP/DPC_TEMP_UPD_ENTITY_BASE
*&* This class has been generated on 06.04.2021 09:48:34 in client 100
*&*
*&*       WARNING--> NEVER MODIFY THIS CLASS <--WARNING
*&*   If you want to change the DPC implementation, use the
*&*   generated methods inside the DPC provider subclass - ZCL_ZFCL_SHIVA_TEST_DPC_EXT
*&-----------------------------------------------------------------------------------------------*

 DATA saleorderset_update_entity TYPE zcl_zfcl_shiva_test_mpc=>ts_saleorder.
 DATA debiaset_update_entity TYPE zcl_zfcl_shiva_test_mpc=>ts_debia.
 DATA itemset_update_entity TYPE zcl_zfcl_shiva_test_mpc=>ts_item.
 DATA lv_entityset_name TYPE string.
 DATA lr_entity TYPE REF TO data. "#EC NEEDED

lv_entityset_name = io_tech_request_context->get_entity_set_name( ).

CASE lv_entityset_name.
*-------------------------------------------------------------------------*
*             EntitySet -  SaleorderSet
*-------------------------------------------------------------------------*
      WHEN 'SaleorderSet'.
*     Call the entity set generated method
          saleorderset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = saleorderset_update_entity
          ).
       IF saleorderset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = saleorderset_update_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  DebiaSet
*-------------------------------------------------------------------------*
      WHEN 'DebiaSet'.
*     Call the entity set generated method
          debiaset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = debiaset_update_entity
          ).
       IF debiaset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = debiaset_update_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
*-------------------------------------------------------------------------*
*             EntitySet -  ItemSet
*-------------------------------------------------------------------------*
      WHEN 'ItemSet'.
*     Call the entity set generated method
          itemset_update_entity(
               EXPORTING iv_entity_name     = iv_entity_name
                         iv_entity_set_name = iv_entity_set_name
                         iv_source_name     = iv_source_name
                         io_data_provider   = io_data_provider
                         it_key_tab         = it_key_tab
                         it_navigation_path = it_navigation_path
                         io_tech_request_context = io_tech_request_context
             	 IMPORTING er_entity          = itemset_update_entity
          ).
       IF itemset_update_entity IS NOT INITIAL.
*     Send specific entity data to the caller interface
          copy_data_to_ref(
            EXPORTING
              is_data = itemset_update_entity
            CHANGING
              cr_data = er_entity
          ).
        ELSE.
*         In case of initial values - unbind the entity reference
          er_entity = lr_entity.
        ENDIF.
      WHEN OTHERS.
        super->/iwbep/if_mgw_appl_srv_runtime~update_entity(
           EXPORTING
             iv_entity_name = iv_entity_name
             iv_entity_set_name = iv_entity_set_name
             iv_source_name = iv_source_name
             io_data_provider   = io_data_provider
             it_key_tab = it_key_tab
             it_navigation_path = it_navigation_path
          IMPORTING
            er_entity = er_entity
    ).
 ENDCASE.
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~COMMIT_WORK.
* Call RFC commit work functionality
DATA lt_message      TYPE bapiret2. "#EC NEEDED
DATA lv_message_text TYPE BAPI_MSG.
DATA lo_logger       TYPE REF TO /iwbep/cl_cos_logger.
DATA lv_subrc        TYPE syst-subrc.

lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).

  IF iv_rfc_dest IS INITIAL OR iv_rfc_dest EQ 'NONE'.
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      EXPORTING
      wait   = abap_true
    IMPORTING
      return = lt_message.
  ELSE.
    CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'
      DESTINATION iv_rfc_dest
    EXPORTING
      wait                  = abap_true
    IMPORTING
      return                = lt_message
    EXCEPTIONS
      communication_failure = 1000 MESSAGE lv_message_text
      system_failure        = 1001 MESSAGE lv_message_text
      OTHERS                = 1002.

  IF sy-subrc <> 0.
    lv_subrc = sy-subrc.
    /iwbep/cl_sb_gen_dpc_rt_util=>rfc_exception_handling(
        EXPORTING
          iv_subrc            = lv_subrc
          iv_exp_message_text = lv_message_text
          io_logger           = lo_logger ).
  ENDIF.
  ENDIF.
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~GET_GENERATION_STRATEGY.
* Get generation strategy
  rv_generation_strategy = '1'.
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~LOG_MESSAGE.
* Log message in the application log
DATA lo_logger TYPE REF TO /iwbep/cl_cos_logger.
DATA lv_text TYPE /iwbep/sup_msg_longtext.

  MESSAGE ID iv_msg_id TYPE iv_msg_type NUMBER iv_msg_number
    WITH iv_msg_v1 iv_msg_v2 iv_msg_v3 iv_msg_v4 INTO lv_text.

  lo_logger = mo_context->get_logger( ).
  lo_logger->log_message(
    EXPORTING
     iv_msg_type   = iv_msg_type
     iv_msg_id     = iv_msg_id
     iv_msg_number = iv_msg_number
     iv_msg_text   = lv_text
     iv_msg_v1     = iv_msg_v1
     iv_msg_v2     = iv_msg_v2
     iv_msg_v3     = iv_msg_v3
     iv_msg_v4     = iv_msg_v4
     iv_agent      = 'DPC' ).
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~RFC_EXCEPTION_HANDLING.
* RFC call exception handling
DATA lo_logger  TYPE REF TO /iwbep/cl_cos_logger.

lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).

/iwbep/cl_sb_gen_dpc_rt_util=>rfc_exception_handling(
  EXPORTING
    iv_subrc            = iv_subrc
    iv_exp_message_text = iv_exp_message_text
    io_logger           = lo_logger ).
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~RFC_SAVE_LOG.
  DATA lo_logger  TYPE REF TO /iwbep/cl_cos_logger.
  DATA lo_message_container TYPE REF TO /iwbep/if_message_container.

  lo_logger = /iwbep/if_mgw_conv_srv_runtime~get_logger( ).
  lo_message_container = /iwbep/if_mgw_conv_srv_runtime~get_message_container( ).

  " Save the RFC call log in the application log
  /iwbep/cl_sb_gen_dpc_rt_util=>rfc_save_log(
    EXPORTING
      is_return            = is_return
      iv_entity_type       = iv_entity_type
      it_return            = it_return
      it_key_tab           = it_key_tab
      io_logger            = lo_logger
      io_message_container = lo_message_container ).
  endmethod.


  method /IWBEP/IF_SB_DPC_COMM_SERVICES~SET_INJECTION.
* Unit test injection
  IF io_unit IS BOUND.
    mo_injection = io_unit.
  ELSE.
    mo_injection = me.
  ENDIF.
  endmethod.


  method /IWBEP/IF_SB_GENDPC_SHLP_DATA~GET_SEARCH_HELP_VALUES.
* Call to Search Help run time mechanism to get values
  DATA lo_sh_data TYPE REF TO /iwbep/if_sb_shlp_data.

  CLEAR: et_return_list, es_message.
  lo_sh_data = /iwbep/cl_sb_shlp_data_factory=>get_sh_data_obj( ).

  lo_sh_data->/iwbep/if_sb_gendpc_shlp_data~get_search_help_values(
    EXPORTING
      iv_shlp_name  = iv_shlp_name
      iv_maxrows  = iv_maxrows
      iv_sort = iv_sort
      iv_call_shlt_exit = iv_call_shlt_exit
      it_selopt = it_selopt
    IMPORTING
      et_return_list = et_return_list
      es_message = es_message ).
  endmethod.


  method CHECK_SUBSCRIPTION_AUTHORITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'CHECK_SUBSCRIPTION_AUTHORITY'.
  endmethod.


  method DEBIASET_CREATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'DEBIASET_CREATE_ENTITY'.
  endmethod.


  method DEBIASET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'DEBIASET_DELETE_ENTITY'.
  endmethod.


  method DEBIASET_GET_ENTITY.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
DATA lv_MAX_HITS TYPE i VALUE 1.
DATA ls_converted_keys LIKE er_entity.
DATA ls_message TYPE bapiret2.
DATA lt_selopt TYPE ddshselops.
DATA ls_selopt LIKE LINE OF lt_selopt.
DATA lv_source_entity_set_name TYPE string.
DATA lt_result_list TYPE /iwbep/if_sb_gendpc_shlp_data=>tt_result_list.
DATA ls_result_list LIKE LINE OF lt_result_list.

*-------------------------------------------------------------
*  Map the runtime request to the Search Help select option - Only mapped attributes
*-------------------------------------------------------------
* Get all input information from the technical request context object
* Since DPC works with internal property names and runtime API interface holds external property names
* the process needs to get the all needed input information from the technical request context object
* Get key table information - for direct call
  io_tech_request_context->get_converted_keys(
    IMPORTING
      es_key_values = ls_converted_keys ).

* Maps key fields to function module parameters

    lv_source_entity_set_name = io_tech_request_context->get_source_entity_set_name( ).

   ls_selopt-sign = 'I'.
   ls_selopt-option = 'EQ'.
    ls_selopt-low = ls_converted_keys-kunnr.
  ls_selopt-shlpfield = 'KUNNR'.
  ls_selopt-shlpname = 'DEBIA'.
  APPEND ls_selopt TO lt_selopt.
  CLEAR ls_selopt.

*-------------------------------------------------------------
*  Call to Search Help get values mechanism
*-------------------------------------------------------------
* Get search help values
  me->/iwbep/if_sb_gendpc_shlp_data~get_search_help_values(
    EXPORTING
      iv_shlp_name = 'DEBIA'
      iv_maxrows = lv_MAX_HITS
      iv_sort = 'X'
      iv_call_shlt_exit = 'X'
      it_selopt = lt_selopt
    IMPORTING
      et_return_list = lt_result_list
      es_message = ls_message ).

*-------------------------------------------------------------
*  Map the Search Help returned results to the caller interface - Only mapped attributes
*-------------------------------------------------------------
IF ls_message IS NOT INITIAL.
* Call RFC call exception handling
  me->/iwbep/if_sb_dpc_comm_services~rfc_save_log(
    EXPORTING
      is_return      = ls_message
      iv_entity_type = iv_entity_name
      it_key_tab     = it_key_tab ).
ENDIF.

  CLEAR er_entity.
  LOOP AT lt_result_list INTO ls_result_list.

    " Move SH results to GW request responce table
    CASE ls_result_list-field_name.
      WHEN 'KUNNR'.
        er_entity-kunnr = ls_result_list-field_value.
      WHEN 'LAND1'.
        er_entity-land1 = ls_result_list-field_value.
      WHEN 'LOEVM'.
        er_entity-loevm = ls_result_list-field_value.
      WHEN 'MCOD1'.
        er_entity-mcod1 = ls_result_list-field_value.
      WHEN 'MCOD3'.
        er_entity-mcod3 = ls_result_list-field_value.
      WHEN 'PSTLZ'.
        er_entity-pstlz = ls_result_list-field_value.
      WHEN 'SORTL'.
        er_entity-sortl = ls_result_list-field_value.
    ENDCASE.

  ENDLOOP.

  endmethod.


  method DEBIASET_GET_ENTITYSET.
*-------------------------------------------------------------
*  Data declaration
*-------------------------------------------------------------
DATA lo_filter TYPE  REF TO /iwbep/if_mgw_req_filter.
DATA lt_filter_select_options TYPE /iwbep/t_mgw_select_option.
DATA lv_filter_str TYPE string.
DATA lv_MAX_HITS TYPE i.
DATA ls_paging TYPE /iwbep/s_mgw_paging.
DATA ls_converted_keys LIKE LINE OF et_entityset.
DATA ls_message TYPE bapiret2.
DATA lt_selopt TYPE ddshselops.
DATA ls_selopt LIKE LINE OF lt_selopt.
DATA ls_filter TYPE /iwbep/s_mgw_select_option.
DATA ls_filter_range TYPE /iwbep/s_cod_select_option.
DATA lr_SORTL LIKE RANGE OF ls_converted_keys-sortl.
DATA ls_SORTL LIKE LINE OF lr_SORTL.
DATA lr_LAND1 LIKE RANGE OF ls_converted_keys-land1.
DATA ls_LAND1 LIKE LINE OF lr_LAND1.
DATA lr_PSTLZ LIKE RANGE OF ls_converted_keys-pstlz.
DATA ls_PSTLZ LIKE LINE OF lr_PSTLZ.
DATA lr_MCOD3 LIKE RANGE OF ls_converted_keys-mcod3.
DATA ls_MCOD3 LIKE LINE OF lr_MCOD3.
DATA lr_MCOD1 LIKE RANGE OF ls_converted_keys-mcod1.
DATA ls_MCOD1 LIKE LINE OF lr_MCOD1.
DATA lr_KUNNR LIKE RANGE OF ls_converted_keys-kunnr.
DATA ls_KUNNR LIKE LINE OF lr_KUNNR.
DATA lr_LOEVM LIKE RANGE OF ls_converted_keys-loevm.
DATA ls_LOEVM LIKE LINE OF lr_LOEVM.
DATA lt_result_list TYPE /iwbep/if_sb_gendpc_shlp_data=>tt_result_list.
DATA lv_next TYPE i VALUE 1.
DATA ls_entityset LIKE LINE OF et_entityset.
DATA ls_result_list_next LIKE LINE OF lt_result_list.
DATA ls_result_list LIKE LINE OF lt_result_list.

*-------------------------------------------------------------
*  Map the runtime request to the Search Help select option - Only mapped attributes
*-------------------------------------------------------------
* Get all input information from the technical request context object
* Since DPC works with internal property names and runtime API interface holds external property names
* the process needs to get the all needed input information from the technical request context object
* Get filter or select option information
  lo_filter = io_tech_request_context->get_filter( ).
  lt_filter_select_options = lo_filter->get_filter_select_options( ).
  lv_filter_str = lo_filter->get_filter_string( ).

* Check if the supplied filter is supported by standard gateway runtime process
  IF  lv_filter_str            IS NOT INITIAL
  AND lt_filter_select_options IS INITIAL.
    " If the string of the Filter System Query Option is not automatically converted into
    " filter option table (lt_filter_select_options), then the filtering combination is not supported
    " Log message in the application log
    me->/iwbep/if_sb_dpc_comm_services~log_message(
      EXPORTING
        iv_msg_type   = 'E'
        iv_msg_id     = '/IWBEP/MC_SB_DPC_ADM'
        iv_msg_number = 025 ).
     " Raise Exception
     RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
       EXPORTING
         textid = /iwbep/cx_mgw_tech_exception=>internal_error.
  ENDIF.

* Get key table information
  io_tech_request_context->get_converted_source_keys(
    IMPORTING
      es_key_values  = ls_converted_keys ).

  ls_paging-top = io_tech_request_context->get_top( ).
  ls_paging-skip = io_tech_request_context->get_skip( ).

 " Calculate the number of max hits to be fetched from the function module
 " The lv_max_hits value is a summary of the Top and Skip values
IF ls_paging-top > 0.
   lv_max_hits = is_paging-top + is_paging-skip.
ENDIF.

* Maps filter table lines to the Search Help select option table
  LOOP AT lt_filter_select_options INTO ls_filter.

CASE ls_filter-property.
       WHEN 'SORTL'.              " Equivalent to 'Sortl' property in the service
    lo_filter->convert_select_option(
      EXPORTING
        is_select_option = ls_filter
      IMPORTING
        et_select_option = lr_SORTL ).

    LOOP AT lr_SORTL INTO ls_SORTL.
        ls_selopt-high = ls_SORTL-high.
        ls_selopt-low = ls_SORTL-low.
        ls_selopt-option = ls_SORTL-option.
             ls_selopt-sign = ls_SORTL-sign.
      ls_selopt-shlpfield = 'SORTL'.
      ls_selopt-shlpname = 'DEBIA'.
      APPEND ls_selopt TO lt_selopt.
      CLEAR ls_selopt.
      ENDLOOP.
       WHEN 'LAND1'.              " Equivalent to 'Land1' property in the service
    lo_filter->convert_select_option(
      EXPORTING
        is_select_option = ls_filter
      IMPORTING
        et_select_option = lr_LAND1 ).

    LOOP AT lr_LAND1 INTO ls_LAND1.
        ls_selopt-high = ls_LAND1-high.
        ls_selopt-low = ls_LAND1-low.
        ls_selopt-option = ls_LAND1-option.
             ls_selopt-sign = ls_LAND1-sign.
      ls_selopt-shlpfield = 'LAND1'.
      ls_selopt-shlpname = 'DEBIA'.
      APPEND ls_selopt TO lt_selopt.
      CLEAR ls_selopt.
      ENDLOOP.
       WHEN 'PSTLZ'.              " Equivalent to 'Pstlz' property in the service
    lo_filter->convert_select_option(
      EXPORTING
        is_select_option = ls_filter
      IMPORTING
        et_select_option = lr_PSTLZ ).

    LOOP AT lr_PSTLZ INTO ls_PSTLZ.
        ls_selopt-high = ls_PSTLZ-high.
        ls_selopt-low = ls_PSTLZ-low.
        ls_selopt-option = ls_PSTLZ-option.
             ls_selopt-sign = ls_PSTLZ-sign.
      ls_selopt-shlpfield = 'PSTLZ'.
      ls_selopt-shlpname = 'DEBIA'.
      APPEND ls_selopt TO lt_selopt.
      CLEAR ls_selopt.
      ENDLOOP.
       WHEN 'MCOD3'.              " Equivalent to 'Mcod3' property in the service
    lo_filter->convert_select_option(
      EXPORTING
        is_select_option = ls_filter
      IMPORTING
        et_select_option = lr_MCOD3 ).

    LOOP AT lr_MCOD3 INTO ls_MCOD3.
        ls_selopt-high = ls_MCOD3-high.
        ls_selopt-low = ls_MCOD3-low.
        ls_selopt-option = ls_MCOD3-option.
             ls_selopt-sign = ls_MCOD3-sign.
      ls_selopt-shlpfield = 'MCOD3'.
      ls_selopt-shlpname = 'DEBIA'.
      APPEND ls_selopt TO lt_selopt.
      CLEAR ls_selopt.
      ENDLOOP.
       WHEN 'MCOD1'.              " Equivalent to 'Mcod1' property in the service
    lo_filter->convert_select_option(
      EXPORTING
        is_select_option = ls_filter
      IMPORTING
        et_select_option = lr_MCOD1 ).

    LOOP AT lr_MCOD1 INTO ls_MCOD1.
        ls_selopt-high = ls_MCOD1-high.
        ls_selopt-low = ls_MCOD1-low.
        ls_selopt-option = ls_MCOD1-option.
             ls_selopt-sign = ls_MCOD1-sign.
      ls_selopt-shlpfield = 'MCOD1'.
      ls_selopt-shlpname = 'DEBIA'.
      APPEND ls_selopt TO lt_selopt.
      CLEAR ls_selopt.
      ENDLOOP.
       WHEN 'KUNNR'.              " Equivalent to 'Kunnr' property in the service
    lo_filter->convert_select_option(
      EXPORTING
        is_select_option = ls_filter
      IMPORTING
        et_select_option = lr_KUNNR ).

    LOOP AT lr_KUNNR INTO ls_KUNNR.
        ls_selopt-high = ls_KUNNR-high.
        ls_selopt-low = ls_KUNNR-low.
        ls_selopt-option = ls_KUNNR-option.
             ls_selopt-sign = ls_KUNNR-sign.
      ls_selopt-shlpfield = 'KUNNR'.
      ls_selopt-shlpname = 'DEBIA'.
      APPEND ls_selopt TO lt_selopt.
      CLEAR ls_selopt.
      ENDLOOP.
       WHEN 'LOEVM'.              " Equivalent to 'Loevm' property in the service
    lo_filter->convert_select_option(
      EXPORTING
        is_select_option = ls_filter
      IMPORTING
        et_select_option = lr_LOEVM ).

    LOOP AT lr_LOEVM INTO ls_LOEVM.
        ls_selopt-high = ls_LOEVM-high.
        ls_selopt-low = ls_LOEVM-low.
        ls_selopt-option = ls_LOEVM-option.
             ls_selopt-sign = ls_LOEVM-sign.
      ls_selopt-shlpfield = 'LOEVM'.
      ls_selopt-shlpname = 'DEBIA'.
      APPEND ls_selopt TO lt_selopt.
      CLEAR ls_selopt.
      ENDLOOP.

      WHEN OTHERS.
      " Log message in the application log
      me->/iwbep/if_sb_dpc_comm_services~log_message(
        EXPORTING
          iv_msg_type   = 'E'
          iv_msg_id     = '/IWBEP/MC_SB_DPC_ADM'
          iv_msg_number = 020
          iv_msg_v1     = ls_filter-property ).
      " Raise Exception
      RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
        EXPORTING
          textid = /iwbep/cx_mgw_tech_exception=>internal_error.
  ENDCASE.
ENDLOOP.

*-------------------------------------------------------------
*  Call to Search Help get values mechanism
*-------------------------------------------------------------
* Get search help values
  me->/iwbep/if_sb_gendpc_shlp_data~get_search_help_values(
    EXPORTING
      iv_shlp_name = 'DEBIA'
      iv_maxrows = lv_MAX_HITS
      iv_sort = 'X'
      iv_call_shlt_exit = 'X'
      it_selopt = lt_selopt
    IMPORTING
      et_return_list = lt_result_list
      es_message = ls_message ).

*-------------------------------------------------------------
*  Map the Search Help returned results to the caller interface - Only mapped attributes
*-------------------------------------------------------------
IF ls_message IS NOT INITIAL.
* Call RFC call exception handling
  me->/iwbep/if_sb_dpc_comm_services~rfc_save_log(
    EXPORTING
      is_return      = ls_message
      iv_entity_type = iv_entity_name
      it_key_tab     = it_key_tab ).
ENDIF.

 CLEAR et_entityset.

  LOOP AT lt_result_list INTO ls_result_list
    WHERE record_number > ls_paging-skip.

    " Move SH results to GW request responce table
    lv_next = sy-tabix + 1. " next loop iteration
    CASE ls_result_list-field_name.
      WHEN 'KUNNR'.
        ls_entityset-kunnr = ls_result_list-field_value.
      WHEN 'LAND1'.
        ls_entityset-land1 = ls_result_list-field_value.
      WHEN 'LOEVM'.
        ls_entityset-loevm = ls_result_list-field_value.
      WHEN 'MCOD1'.
        ls_entityset-mcod1 = ls_result_list-field_value.
      WHEN 'MCOD3'.
        ls_entityset-mcod3 = ls_result_list-field_value.
      WHEN 'PSTLZ'.
        ls_entityset-pstlz = ls_result_list-field_value.
      WHEN 'SORTL'.
        ls_entityset-sortl = ls_result_list-field_value.
    ENDCASE.

    " Check if the next line in the result list is a new record
    READ TABLE lt_result_list INTO ls_result_list_next INDEX lv_next.
    IF sy-subrc <> 0
    OR ls_result_list-record_number <> ls_result_list_next-record_number.
      " Save the collected SH result in the GW request table
      APPEND ls_entityset TO et_entityset.
      CLEAR: ls_result_list_next, ls_entityset.
    ENDIF.

  ENDLOOP.

  endmethod.


  method DEBIASET_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'DEBIASET_UPDATE_ENTITY'.
  endmethod.


  method ITEMSET_CREATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ITEMSET_CREATE_ENTITY'.
  endmethod.


  method ITEMSET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ITEMSET_DELETE_ENTITY'.
  endmethod.


  method ITEMSET_GET_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ITEMSET_GET_ENTITY'.
  endmethod.


  method ITEMSET_GET_ENTITYSET.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ITEMSET_GET_ENTITYSET'.
  endmethod.


  method ITEMSET_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'ITEMSET_UPDATE_ENTITY'.
  endmethod.


  method SALEORDERSET_CREATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALEORDERSET_CREATE_ENTITY'.
  endmethod.


  method SALEORDERSET_DELETE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALEORDERSET_DELETE_ENTITY'.
  endmethod.


  method SALEORDERSET_GET_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALEORDERSET_GET_ENTITY'.
  endmethod.


  method SALEORDERSET_GET_ENTITYSET.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALEORDERSET_GET_ENTITYSET'.
  endmethod.


  method SALEORDERSET_UPDATE_ENTITY.
  RAISE EXCEPTION TYPE /iwbep/cx_mgw_not_impl_exc
    EXPORTING
      textid = /iwbep/cx_mgw_not_impl_exc=>method_not_implemented
      method = 'SALEORDERSET_UPDATE_ENTITY'.
  endmethod.
ENDCLASS.
