class ZCL_MEETUP definition
  public
  final
  create public .

public section.

  class-methods GET_INSTANCE
    returning
      value(RO_SINGLETON) type ref to ZCL_MEETUP .
  methods GET_CURRENT_USER
    returning
      value(RV_USERNAME) type USR02-BNAME .
  methods GET_CURRENT_DATE
    returning
      value(RV_DATE) type SY-DATUM .
  protected section.
  private section.
    class-data:
      go_instance type ref to zcl_meetup.
ENDCLASS.



CLASS ZCL_MEETUP IMPLEMENTATION.


  method GET_CURRENT_DATE.
    rv_date = sy-datum.
    write sy-datum.
    " comment added
  endmethod.


  method get_current_user.
    rv_username = sy-uname.
  endmethod.


  method get_instance.
    if go_instance is not bound.
      create object go_instance.
    endif.

    ro_singleton = go_instance.
  endmethod.
ENDCLASS.
