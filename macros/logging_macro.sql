{# the macro name can be anything, does not depend on the file name. #}

{% macro logging_func() %}

    {# info = True for showing up the log message on the screen during execution. #}
    {{ log("This is a drill.", info = True) }}

{% endmacro %}