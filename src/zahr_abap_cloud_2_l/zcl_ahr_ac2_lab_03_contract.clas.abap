CLASS zcl_ahr_ac2_lab_03_contract DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA:
        cntr_type TYPE c LENGTH 2.

    METHODS:
      set_creation_date IMPORTING iv_creation_date TYPE zde_ahr_ac2_date.

  PROTECTED SECTION.

    DATA:
        creation_date TYPE zde_ahr_ac2_date.

  PRIVATE SECTION.

    DATA:
        client TYPE string.

ENDCLASS.



CLASS ZCL_AHR_AC2_LAB_03_CONTRACT IMPLEMENTATION.


  METHOD set_creation_date.

    me->creation_date = iv_creation_date.

  ENDMETHOD.
ENDCLASS.
