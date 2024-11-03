CLASS zcl_ahr_ac2_lab_07_student DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA:
        birthdate TYPE zde_ahr_ac2_date READ-ONLY.

    METHODS:
      set_birthdate IMPORTING iv_BIRTHDATE TYPE zde_ahr_ac2_date.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_ahr_ac2_lab_07_student IMPLEMENTATION.

  METHOD set_birthdate.
    me->birthdate = iv_birthdate.
  ENDMETHOD.

ENDCLASS.
