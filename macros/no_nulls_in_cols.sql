{# this macro will check every column and see if it is null #}

{% macro no_nulls_in_cols(model) %}
    SELECT * FROM {{ model }}
    WHERE {% for col in adapter.get_columns_in_relation(model) -%}
            {{ col.column }} IS NULL OR
        {% endfor %}
    FALSE
{% endmacro %}