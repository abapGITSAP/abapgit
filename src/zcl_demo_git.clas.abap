class ZCL_DEMO_GIT definition
  public
  final
  create public .

public section.

  class-methods DELETE .
protected section.
private section.

  methods CREATE .
ENDCLASS.



CLASS ZCL_DEMO_GIT IMPLEMENTATION.


  method CREATE.
    write: / 'Demo step 1'.
    " comment
  endmethod.


  method DELETE.

    "just another comment

    " new row
    write: 'this is me'.

    " Alex

    WRITE: 'and me'.


  endmethod.
ENDCLASS.
