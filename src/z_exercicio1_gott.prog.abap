*&---------------------------------------------------------------------*
*& Report z_exercicio1_gott
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_exercicio1_gott.

TYPES: example_char_10p  TYPE c LENGTH 10,  "ex. 1
       example_number_7p TYPE n LENGTH 7,   "ex. 3
       example_date_type TYPE d,            "ex. 4
       example_time_type TYPE t.            "ex. 5

DATA example_integer TYPE i.    "ex. 2

TYPES: BEGIN OF example_structure,                  "ex. 6
         char_10p_structure  TYPE example_char_10p,
         integer_structure   TYPE i,
         number_7p_structure TYPE example_number_7p,
         date_structure      TYPE example_date_type,
         time_structure      TYPE example_time_type,
       END OF example_structure.

TYPES global_structure_sflight TYPE sflight.  "ex. 7

TYPES: BEGIN OF s_flight,          "ex. 8
         carrid_s_flight     TYPE c,
         connid_s_flight     TYPE n,
         fldate_s_flight     TYPE d,
         price_s_flight      TYPE i,
         currency_s_flight   TYPE i,
         seatsmax_s_flight   TYPE i,
         seatsocc_s_flight   TYPE i,
         paymentsum_s_flight TYPE i,
       END OF s_flight.


TYPES: BEGIN OF s_book,    "ex. 9
         carrid_s_book   TYPE c,
         connid_s_book   TYPE n,
         fldate_s_book   TYPE d,
         bookid_s_book   TYPE n,
         customid_s_book TYPE c,
       END OF s_book.

TYPES: BEGIN OF sum_book_and_flight, "ex. 10
         carrid_sum     TYPE c,
         connid_sum     TYPE n,
         fldate_sum     TYPE d,
         price_sum      TYPE i,
         currency_sum   TYPE i,
         seatsmax_sum   TYPE i,
         seatsocc_sum   TYPE i,
         paymentsum_sum TYPE i,
         bookid_sum     TYPE n,
         customid_sum   TYPE c,
       END OF sum_book_and_flight.

TYPES example_table TYPE TABLE OF i. "ex. 11

TYPES table_sflight_global TYPE TABLE OF sflight. "ex. 12

TYPES table_s_flight TYPE TABLE OF s_flight. "ex. 13

TYPES: BEGIN OF s_book_structure, "ex. 14
         carr_id TYPE s_carr_id,
         conn_id TYPE s_conn_id,
         date_   TYPE s_date,
         book_id TYPE s_book_id,
       END OF s_book_structure.

TYPES table_s_book TYPE s_book_structure.

DATA: character_example   TYPE c LENGTH 10 VALUE 'Hello ABAP', "ex. 15
      numeric_example     TYPE n LENGTH 4 VALUE 1234,          "ex. 16
      integer_example     TYPE i VALUE 42,                     "ex. 17
      integer_example_ii  TYPE p DECIMALS 2 VALUE '12.72',     "ex. 18
      christmas_day       TYPE d,                              "ex. 19
      scarrid_example     TYPE s_carr_id,                      "ex. 20
      carrid_from_spfli   TYPE s_carr_id,                      "ex. 21
      fldate_from_sflight TYPE s_date.                         "ex. 22

TYPES: BEGIN OF copy_of_sbook,               "ex. 23
         copy_mandt_sbook  TYPE s_mandt,
         copy_carrid_sbook TYPE s_carr_id,
         copy_conid_sbook  TYPE s_conn_id,
         copy_sdate_sbook  TYPE s_date,
         copy_bookid_sbook TYPE s_book_id,
       END OF copy_of_sbook.

TYPES: BEGIN OF copy_of_sflight,                "ex.24
         copy_carrid_sflight      TYPE s_carr_id,
         copy_connid_sflight      TYPE s_conn_id,
         copy_sdate_sflight       TYPE s_date,
         copy_sprice_sflight      TYPE s_price,
         copy_currency_sflight    TYPE s_currcode,
         copy_splanettype_sflight TYPE s_planetye,
         copy_setasmax_sflight    TYPE s_seatsmax,
         copy_seatsocc_sflight    TYPE s_seatsocc,
       END OF copy_of_sflight.

TYPES: BEGIN OF sum_sbook_tel,                "ex.25
         copy_mandt_sum_sbook_tel     TYPE s_mandt,
         copy_carrid_sum_sbook_tel    TYPE s_carr_id,
         copy_conid_sum_sbook_tel     TYPE s_conn_id,
         copy_sdate_sum_sbook_tel     TYPE s_date,
         copy_bookid_sum_sbook_tel    TYPE s_book_id,
         copy_telephone_sum_sbook_tel TYPE s_phoneno,
       END OF sum_sbook_tel.

TYPES: BEGIN OF s_book_structure_ii,          "ex. 26
         copy_carrid_sbook_ii   TYPE s_carr_id,
         copy_conid_sbook_ii    TYPE s_conn_id,
         copy_sdate_sbook_ii    TYPE s_date,
         copy_bookid_sbook_ii   TYPE s_book_id,
         copy_customid_sbook_ii TYPE s_customer,
       END OF s_book_structure_ii.

DATA sbook_table TYPE s_book_structure_ii.

DATA scarr_table TYPE scarr. "ex. 27

DATA spfli_table TYPE spfli. "ex. 28

TYPES: BEGIN OF sum_scarr_tel,            "ex. 29
         smandt_sum_scarr_tel   TYPE s_mandt,
         carrid_sum_scarr_tel   TYPE s_carr_id,
         carrname_sum_scarr_tel TYPE s_carrname,
         currcode_sum_scarr_tel TYPE s_currcode,
         url_sum_scarr_tel      TYPE s_carrurl,
         tel_sum_scarr_tel      TYPE s_phoneno,
       END OF sum_scarr_tel.



DATA table_sum_scarr_tel TYPE TABLE OF sum_scarr_tel.


CONSTANTS my_name TYPE string VALUE 'Manuela'. "ex.30

CONSTANTS: value_true  TYPE c VALUE 'X',  "ex. 31
           value_false TYPE c VALUE ' '.

CONSTANTS first_5_pi TYPE p DECIMALS 5 VALUE '3.14159'. "ex. 32

CONSTANTS: BEGIN OF constants_structure,  "ex. 33
             integer_i  TYPE i VALUE 1,
             integer_ii TYPE i VALUE 2,
           END OF constants_structure.

CONSTANTS: BEGIN OF constants_structure_ii,     "ex. 34
             integer_const_stru TYPE i            VALUE 3,
             char_const_stru    TYPE c LENGTH 1   VALUE 'M',
             string_const_stru  TYPE string       VALUE 'Manuela',
             packed_const_stru  TYPE p DECIMALS 2 VALUE '12.12',
             date_const_stru    TYPE d            VALUE 20050311,
           END OF constants_structure_ii.

CONSTANTS my_name_ii TYPE string VALUE my_name.  "ex. 35


TYPES type_i TYPE i.     "ex. 36

DATA example_type TYPE type_i.

TYPES type_example TYPE type_i.

TYPES: BEGIN OF example_structure_ty,
         example_type_ii TYPE type_i,
       END OF example_structure_ty.

DATA table_example_ty TYPE TABLE OF example_structure_ty.

CONSTANTS const_type  TYPE type_i VALUE 1.


DATA variable_used    TYPE i VALUE 3.   "ex. 37

DATA variable_used_ii LIKE variable_used.

TYPES type_used       LIKE variable_used.

TYPES: BEGIN OF exercise,
         variable_used_iii LIKE variable_used,
       END OF exercise.

DATA table_exercise TYPE TABLE OF exercise.

CONSTANTS const_exercise LIKE variable_used VALUE 3.



TYPES: BEGIN OF structure_1,           "ex.38
         1_structure_1 TYPE i,
         2_structure_1 TYPE i,
         3_structure_1 TYPE i,
         4_structure_1 TYPE i,
         5_structure_1 TYPE i,
       END OF structure_1.

TYPES: BEGIN OF structure_2,
         1_structure_2 TYPE c,
         2_structure_2 TYPE c,
         3_structure_2 TYPE c,
         4_structure_2 TYPE c,
         5_structure_2 TYPE c,
       END OF structure_2.

TYPES: BEGIN OF structure_3,
         1_structure_3 TYPE n,
         2_structure_3 TYPE n,
         3_structure_3 TYPE n,
         4_structure_3 TYPE n,
         5_structure_3 TYPE n,
       END OF structure_3.

TYPES: BEGIN OF structure_4,
         1_structure_4 TYPE string,
         2_structure_4 TYPE string,
         3_structure_4 TYPE string,
         4_structure_4 TYPE string,
         5_structure_4 TYPE string,
       END OF structure_4.

TYPES: BEGIN OF structure_5,
         1_structure_5 TYPE p,
         2_structure_5 TYPE p,
         3_structure_5 TYPE p,
         4_structure_5 TYPE p,
         5_structure_5 TYPE p,
       END OF structure_5.

TYPES: BEGIN OF table_example,
         integer_comp TYPE structure_1,
         char_comp    TYPE structure_2,
         number_comp  TYPE structure_3,
         string_comp  TYPE structure_4,
         packed_comp  TYPE structure_5,
       END OF table_example.



DATA(table_structure) = VALUE table_example(      "Adding values into the table_structure with VALUE
  integer_comp  = VALUE #( 1_structure_1 = 1 2_structure_1 = 2 3_structure_1 = 3 4_structure_1 = 4 5_structure_1 = 5 )
  char_comp     = VALUE #( 1_structure_2 = 'A' 2_structure_2 = 'B' 3_structure_2 = 'C' 4_structure_2 = 'D' 5_structure_2 = 'E' )
  number_comp   = VALUE #( 1_structure_3 = '1' 2_structure_3 = '2' 3_structure_3 = '3' 4_structure_3 = '4' 5_structure_3 = '5' )
  string_comp   = VALUE #( 1_structure_4 = 'MANUELA' 2_structure_4 = 'MANUELA' 3_structure_4 = 'MANUELA' 4_structure_4 = 'MANUELA' 5_structure_4 = 'MANUELA' )
  packed_comp   = VALUE #( 1_structure_5 = '12.12' 2_structure_5 = '12.13' 3_structure_5 = '12.14' 4_structure_5 = '12.15' 5_structure_5 = '12.16' )
 ).



 TYPES: BEGIN OF table_ex_39,          "ex. 39
         field_1 TYPE table_example,
         field_2 TYPE table_example,
         field_3 TYPE table_example,
         field_4 TYPE table_example,
         field_5 TYPE table_example,
       END OF table_ex_39.

DATA table_structure_ex39 TYPE TABLE OF table_ex_39.


DATA(STRUC1) = VALUE structure_1( 1_structure_1 = 1 2_structure_1 = 2 3_structure_1 = 3 4_structure_1 = 4 5_structure_1 = 5 ).
DATA(STRUC2) = VALUE structure_2( 1_structure_2 = 'A' 2_structure_2 = 'B' 3_structure_2 = 'C' 4_structure_2 = 'D' 5_structure_2 = 'E' ).
DATA(STRUC3) = VALUE structure_3( 1_structure_3 = '1' 2_structure_3 = '2' 3_structure_3 = '3' 4_structure_3 = '4' 5_structure_3 = '5' ).
DATA(STRUC4) = VALUE structure_4( 1_structure_4 = 'MANUELA' 2_structure_4 = 'MANUELA' 3_structure_4 = 'MANUELA' 4_structure_4 = 'MANUELA' 5_structure_4 = 'MANUELA' ).
DATA(STRUC5) = VALUE structure_5( 1_structure_5 = '12.12' 2_structure_5 = '12.13' 3_structure_5 = '12.14' 4_structure_5 = '12.15' 5_structure_5 = '12.16' ).

DATA(linha1_1) = VALUE table_example( integer_comp = STRUC1 char_comp = STRUC2 number_comp = STRUC3 string_comp = STRUC4 packed_comp = STRUC5 ).

DATA(linha1) = VALUE table_ex_39( field_1 = linha1_1 field_2 = linha1_1 field_3 = linha1_1 field_4 = linha1_1 field_5 = linha1_1 ).

APPEND linha1 TO table_structure_ex39.

DATA abap_true  TYPE abap_bool VALUE 'X'.
DATA abap_false TYPE abap_bool VALUE ' '.


WRITE 'HELLO'.
