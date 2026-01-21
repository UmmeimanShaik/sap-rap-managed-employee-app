CLASS zcl_generate_data_rap_emp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_data_rap_emp IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
 DATA itab type table of zemp_tab_3214.

*fill internal travel table (itab)
    itab = VALUE #(
      ( employee_id = '0000000001' employee_name = 'Joseph' employee_address = 'Binh Thanh' deparment_id = '0000000001')
      ( employee_id = '0000000002' employee_name = 'Joseph' employee_address = 'Binh Thanh' deparment_id = '0000000001')
      ( employee_id = '0000000003' employee_name = 'Joseph' employee_address = 'Binh Thanh' deparment_id = '0000000001')
      ( employee_id = '0000000004' employee_name = 'Joseph' employee_address = 'Binh Thanh' deparment_id = '0000000002')
      ( employee_id = '0000000005' employee_name = 'Joseph' employee_address = 'Binh Thanh' deparment_id = '0000000003')

    ).

*   delete existing entries in the database table
    DELETE FROM zemp_tab_3214.

*   insert the new table entries
    INSERT zemp_tab_3214 FROM TABLE @itab.

*   output the result as a console message
    out->write( |{ sy-dbcnt } travel entries inserted successfully!| ).

  ENDMETHOD.
ENDCLASS.
