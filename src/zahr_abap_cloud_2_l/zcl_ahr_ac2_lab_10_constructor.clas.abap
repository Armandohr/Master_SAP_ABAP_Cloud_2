CLASS zcl_ahr_ac2_lab_10_constructor DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA:
              log TYPE string.

    CLASS-METHODS:
      class_constructor.

    METHODS:
      constructor.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_AHR_AC2_LAB_10_CONSTRUCTOR IMPLEMENTATION.


  METHOD class_constructor.
    log = | { log } Static Constructor-->|.
  ENDMETHOD.


  METHOD constructor.
    log = | { log } Instance Constructor-->|.
  ENDMETHOD.
ENDCLASS.
