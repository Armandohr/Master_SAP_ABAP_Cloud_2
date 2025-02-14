CLASS zcl_ahr_ac2_lab_04_person DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_age IMPORTING iv_age TYPE i,
      get_age EXPORTING ev_age TYPE i.

  PROTECTED SECTION.

  PRIVATE SECTION.

    DATA:
        age TYPE i.

ENDCLASS.



CLASS ZCL_AHR_AC2_LAB_04_PERSON IMPLEMENTATION.


  METHOD get_age.
    ev_age = me->age.
  ENDMETHOD.


  METHOD set_age.
    me->age = iv_age.
  ENDMETHOD.
ENDCLASS.
