SELECT 1
FROM
    {{ ref('dim_reviews_clean') }} rev_c JOIN {{ ref('dim_listings_clean') }} list_c
    ON rev_c.listing_id = list_c.listing_id
WHERE rev_c.review_date <= list_c.created_at