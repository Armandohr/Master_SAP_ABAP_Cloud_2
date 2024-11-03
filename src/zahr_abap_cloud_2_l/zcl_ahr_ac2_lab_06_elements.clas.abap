CLASS zcl_ahr_ac2_lab_06_elements DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ty_elem_objects,
        class     TYPE string,
        instance  TYPE string,
        reference TYPE string,
      END OF ty_elem_objects .

    CONSTANTS:
      co_object    TYPE string VALUE 'Object1',
      co_reference TYPE string VALUE 'Reference1',
      co_instance  TYPE string VALUE 'Instance1',
      co_class     TYPE string VALUE 'Class1'.

    DATA:
        ms_object TYPE ty_elem_objects.

    METHODS:
      set_object IMPORTING is_object TYPE ty_elem_objects.

  PROTECTED SECTION.

  PRIVATE SECTION.



ENDCLASS.

CLASS zcl_ahr_ac2_lab_06_elements IMPLEMENTATION.

  METHOD set_object.

    me->ms_object = is_object.

  ENDMETHOD.

ENDCLASS.
