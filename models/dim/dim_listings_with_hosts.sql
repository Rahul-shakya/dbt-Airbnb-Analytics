WITH
listings_cte AS (
    SELECT
    *
    FROM
    {{ ref('dim_listings_clean') }}
),
hosts_cte AS (
    SELECT *
    FROM {{ ref('dim_hosts_clean') }}
)
SELECT
    listings_cte.listing_id,
    listings_cte.listing_name,
    listings_cte.room_type,
    listings_cte.minimum_nights,
    listings_cte.price,
    listings_cte.host_id,
    hosts_cte.host_name,
    hosts_cte.is_superhost as host_is_superhost,
    listings_cte.created_at,
    GREATEST(listings_cte.updated_at, hosts_cte.updated_at) as updated_at
FROM 
    listings_cte
LEFT JOIN 
    hosts_cte ON (hosts_cte.host_id = listings_cte.host_id)