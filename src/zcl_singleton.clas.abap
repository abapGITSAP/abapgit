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
  methods GET_CURRENT_DATA
    returning
      value(RV_DATE) type SY-DATUM .
  protected section.
  private section.
    class-data:
      go_instance type ref to zcl_singleton.
ENDCLASS.



CLASS ZCL_SINGLETON IMPLEMENTATION.


  method GET_CURRENT_DATA.
    rv_date = sy-datum.
    " comment
    write: 'hello,world'.

    " second comment

    write: 'hello, world second commit'.

  endmethod.


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
