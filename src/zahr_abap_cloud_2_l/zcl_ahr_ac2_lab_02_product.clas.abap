CLASS zcl_ahr_ac2_lab_02_product DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_product IMPORTING iv_product TYPE matnr,
      set_creationdate IMPORTING iv_creation_date TYPE d.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA:
      product       TYPE matnr,
      creation_date TYPE zde_ahr_ac2_date.

ENDCLASS.



CLASS ZCL_AHR_AC2_LAB_02_PRODUCT IMPLEMENTATION.


  METHOD set_creationdate.

    me->creation_date = iv_creation_date.

  ENDMETHOD.


  METHOD set_product.

    me->product = iv_product.

  ENDMETHOD.
ENDCLASS.
