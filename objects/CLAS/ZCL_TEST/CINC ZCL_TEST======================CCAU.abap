*"* use this source file for your ABAP unit test classes
class ltcl_master DEFINITION for testing
    risk level harmless
    duration short.

    PUBLIC SECTION.
        methods: check for testing.

    PRIVATE SECTION.
        methods: setup.
        methods: teardown.

ENDCLASS.

class ltcl_master IMPLEMENTATION.

    method check.
        data(structure) = zcl_test=>execute( ).
        cl_abap_unit_assert=>assert_equals(  exp = 'Hello' act = structure-key ).
        cl_abap_unit_assert=>assert_equals(  exp = 'World' act = structure-value ).
    endmethod.

    method setup.
    ENDMETHOD.

    METHOD teardown.
    ENDMETHOD.

ENDCLASS.