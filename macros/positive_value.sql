{#  the test keyword speicifies that it is a special macro, it is a test macro
    the test name doesnt need to be the same as SQL file. Its the test name which
    is important. The params value will be filled automatically. And this whole thing 
    runs as if it was a singular test. #}
{% test positive_value(model, column_name)%}
SELECT 
    * 
FROM
    {{ model }}
WHERE
    {{ column_name }} < 1
{% endtest%}

{#  After creating the test, we add this test detail in schema.yml. Check 
    schema.yaml file for the implementation #}