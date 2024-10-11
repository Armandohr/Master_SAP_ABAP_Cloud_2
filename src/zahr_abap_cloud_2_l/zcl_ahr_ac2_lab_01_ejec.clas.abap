CLASS zcl_ahr_ac2_lab_01_ejec DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ahr_ac2_lab_01_ejec IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*    DATA:
*        lv_date TYPE ZDATE.

    out->write( TEXT-m01 ).


  ENDMETHOD.

ENDCLASS.
