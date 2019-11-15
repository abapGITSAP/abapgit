class zcl_meetup definition
  public
  final
  create public .

  public section.

    class-methods get_instance
      returning
        value(ro_singleton) type ref to zcl_meetup .
    methods get_current_user
      returning
        value(rv_username) type usr02-bname .
  protected section.
  private section.
    class-data:
      go_instance type ref to zcl_meetup.
ENDCLASS.



CLASS ZCL_MEETUP IMPLEMENTATION.


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
