class ZCL_DEMO_GIT definition
  public
  final
  create public .

public section.

  class-methods DELETE .
protected section.
private section.

  methods CREATE .
  methods NEWFEATURE .
  methods NEWFEATUREASECURED .
  methods NEWFEATUREASECUREDNEW .
  methods NEWFEATUREASECUREDNEW3 .
ENDCLASS.



CLASS ZCL_DEMO_GIT IMPLEMENTATION.


  method CREATE.
    write: / 'Demo step 1'.
  endmethod.


  method DELETE.

    "just another comment

    " new row
    write: 'this is me'.

    " Alex

    WRITE: 'and me'.


  endmethod.


  method NEWFEATURE.
  endmethod.


  method NEWFEATUREASECURED.
  endmethod.
  
  method NEWFEATUREASECUREDNEW.
  endmethod.
  
  method NEWFEATUREASECUREDNEW3.
  endmethod.
ENDCLASS.
