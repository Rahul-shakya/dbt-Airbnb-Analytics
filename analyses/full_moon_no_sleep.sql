{#  To compile this analysis into runnable sql(Any .sql files found in the analyses/ 
    directory of a dbt project will be compiled, but not executed.), 
    run: dbt compile 
    
    The o/p queries will be present in target/compile/dbrproject/analyses#}

WITH mart_full_moon_reviews AS
(
    SELECT * FROM {{ ref('mart_fullmoon_reviews') }}
)
SELECT
    is_full_moon,
    review_sentiment,
    COUNT(*) as reviews
FROM
    mart_full_moon_reviews
GROUP BY
    is_full_moon,
    review_sentiment
ORDER BY
    is_full_moon,
    review_sentiment