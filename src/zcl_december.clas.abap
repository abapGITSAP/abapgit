class ZCL_DECEMBER definition
  public
  final
  create public .

public section.

  class-methods USER_DISPLAY .
  class-methods TIME_DISPLAY .
protected section.
private section.
ENDCLASS.



CLASS ZCL_DECEMBER IMPLEMENTATION.


  method TIME_DISPLAY.

    write: 'summer time!'.

  endmethod.


  method user_display.

    "write: sy-uname.
    write: sy-host.

  endmethod.
ENDCLASS.
