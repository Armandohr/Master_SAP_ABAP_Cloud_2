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

    DATA(lo_person) = NEW zcl_ahr_ac2_lab_04_person(  ).

    lo_person->set_age( 46 ).

    lo_person->get_age( IMPORTING ev_age = DATA(lv_age) ).
    out->write( |My Age is: { lv_age } years old | ).

    DATA(lo_flight) = NEW zcl_ahr_ac2_lab_05_flight(  ).

    DATA:
      lv_carrid TYPE /dmo/flight-carrier_id VALUE 'LH',
      lv_connid TYPE /dmo/flight-connection_id VALUE '400'.

    out->write( |Exist flight { lv_carrid }-{ lv_connid }: { lo_flight->check_flight( EXPORTING iv_carrid = lv_carrid
                                                                                                iv_connid = lv_connid ) } |  ).

    DATA: ls_object TYPE zcl_ahr_ac2_lab_06_elements=>ty_elem_objects.

    ls_object = VALUE #( class = 'Class1' instance = 'Instance1' reference = 'Reference1' ).

    DATA(lo_elements) = NEW zcl_ahr_ac2_lab_06_elements( ).
    lo_elements->set_object( ls_object ).

    out->write( lo_elements->ms_object ).

    DATA(lv_constants_string) = zcl_ahr_ac2_lab_06_elements=>co_class &&
                                zcl_ahr_ac2_lab_06_elements=>co_instance &&
                                zcl_ahr_ac2_lab_06_elements=>co_reference &&
                                zcl_ahr_ac2_lab_06_elements=>co_object.

    out->write( lv_constants_string ).

    DATA(lo_student) = NEW zcl_ahr_ac2_lab_07_student(  ).
    lo_student->set_birthdate( '20241102' ).

*    lo_student->birthdate = '20241102'.

    zcl_ahr_ac2_lab_08_work_record=>open_new_record( iv_date = '20241102'
                                                     iv_first_name = 'Angel'
                                                     iv_last_name  = 'Fernández'
                                                     ).

    DATA(lo_account) = NEW zcl_ahr_ac2_lab_09_account(  ).
    lo_account->set_iban( 'self reference' ).

    out->write( lo_account->get_iban(  ) ).

  ENDMETHOD.

ENDCLASS.
