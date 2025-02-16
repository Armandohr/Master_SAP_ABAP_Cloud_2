CLASS zcl_ahr_ac2_lab_08_work_record DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS:
      open_new_record IMPORTING iv_date       TYPE zde_ahr_ac2_date
                                iv_first_name TYPE string
                                iv_last_name  TYPE string
                                iv_surname    TYPE string OPTIONAL.

  PROTECTED SECTION.

  PRIVATE SECTION.

    CLASS-DATA:
      date       TYPE zde_ahr_ac2_date,
      first_name TYPE string,
      last_name  TYPE string,
      surname    TYPE string.


ENDCLASS.



CLASS ZCL_AHR_AC2_LAB_08_WORK_RECORD IMPLEMENTATION.


  METHOD open_new_record.

    date = iv_date.
    first_name = iv_first_name.
    last_name = iv_last_name.
    surname = iv_surname.

  ENDMETHOD.
ENDCLASS.
