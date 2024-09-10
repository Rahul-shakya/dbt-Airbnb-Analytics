{#  These models dont show up in Snowflake WH because the materialization level
    has been set to ephemeral. #}

with raw_hosts AS
(
    SELECT * FROM {{ source('airbnb', 'hosts') }}
)
SELECT
    id AS host_id,
    name AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM raw_hosts