with reviews as (
    select * from {{ref('fct_reviews')}}
),
listings as (
    select * from {{ref('dim_listings_cleansed')}}
)
select *
from reviews
left join listings  
    on reviews.listing_id = listings.listing_id
where reviews.review_date < listings.created_at