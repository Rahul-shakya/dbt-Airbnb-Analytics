{#  These models dont show up in Snowflake WH because the materialization level
    has been set to ephemeral. #}

with raw_listings AS (
    SELECT * FROM {{ source('airbnb', 'listings') }}
)
SELECT 
    id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
    raw_listings