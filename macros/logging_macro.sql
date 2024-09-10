{# the macro name can be anything, does not depend on the file name. #}

{% macro logging_func() %}

    {{ log("This is a drill.", info = True) }}

{% endmacro %}