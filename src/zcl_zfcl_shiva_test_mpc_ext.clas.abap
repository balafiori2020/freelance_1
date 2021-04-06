class ZCL_ZFCL_SHIVA_TEST_MPC_EXT definition
  public
  inheriting from ZCL_ZFCL_SHIVA_TEST_MPC
  create public .

public section.

  methods DEFINE
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL_ZFCL_SHIVA_TEST_MPC_EXT IMPLEMENTATION.


  method DEFINE.



    DATA: lo_entity_type_create TYPE REF TO /iwbep/if_mgw_odata_entity_typ,
        lo_entity_type_update TYPE REF TO /iwbep/if_mgw_odata_entity_typ,
        lo_property TYPE REF TO /iwbep/if_mgw_odata_property.

 super->define( ).

 lo_property = model->get_entity_type( 'Saleorder' )->get_property( iv_property_name = 'Kunnr').
    lo_property->set_updatable( abap_true ).
    lo_property->set_creatable( abap_true ).
  endmethod.
ENDCLASS.
