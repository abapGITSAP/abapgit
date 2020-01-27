*&---------------------------------------------------------------------*
*& Report Z_MEETUP
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_MEETUP.

data lo_instance type ref to zcl_meetup.

create object lo_instance.

lo_instance = zcl_meetup=>get_instance( ).

data(lv_user) = lo_instance->get_current_user( ).

write lv_user.
