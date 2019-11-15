class ZCL_SINGLETON definition
  public
  final
  create public .

public section.

  class-methods GET_INSTANCE
    returning
      value(RO_SINGLETON) type ref to ZCL_SINGLETON .
  methods GET_CURRENT_USER
    returning
      value(RV_USERNAME) type USR02-BNAME .
  protected section.
  private section.
    class-data:
      go_instance type ref to zcl_singleton.
ENDCLASS.



CLASS ZCL_SINGLETON IMPLEMENTATION.


  method GET_CURRENT_USER.
    rv_username = sy-uname.
  endmethod.


  method get_instance.
    if go_instance is not bound.
      create object go_instance.
    endif.

    ro_singleton = go_instance.
  endmethod.
ENDCLASS.
