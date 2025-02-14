CLASS zcl_ahr_ac2_lab_09_account DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_iban IMPORTING iban TYPE string,
      get_iban RETURNING VALUE(iban) TYPE string.

  PROTECTED SECTION.

  PRIVATE SECTION.

    DATA:
        iban TYPE string.

ENDCLASS.



CLASS ZCL_AHR_AC2_LAB_09_ACCOUNT IMPLEMENTATION.


  METHOD get_iban.
    iban = me->iban.
  ENDMETHOD.


  METHOD set_iban.
    me->iban = iban.
  ENDMETHOD.
ENDCLASS.
