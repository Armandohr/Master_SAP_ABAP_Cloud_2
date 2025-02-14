CLASS zcl_ahr_ac2_lab_05_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      check_flight IMPORTING iv_carrid       TYPE /dmo/flight-carrier_id
                             iv_connid       TYPE /dmo/flight-connection_id
                   RETURNING VALUE(rv_exist) TYPE abap_bool.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_AHR_AC2_LAB_05_FLIGHT IMPLEMENTATION.


  METHOD check_flight.

    SELECT FROM /dmo/flight
    FIELDS carrier_id,
           connection_id
     WHERE carrier_id    = @iv_carrid
       AND connection_id = @iv_connid
      INTO TABLE @DATA(lt_flight).
    IF sy-subrc = 0.
      rv_exist = abap_true.
    ELSE.
      rv_exist = abap_false.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
