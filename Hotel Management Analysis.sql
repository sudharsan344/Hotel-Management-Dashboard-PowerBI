

create table Hotel(

    hotel_id INT PRIMARY KEY,
    hotel_code INT,
    hotel_name VARCHAR(100),

    city VARCHAR(50),
    state VARCHAR(50),
    region VARCHAR(30),
    country VARCHAR(50),
    area VARCHAR(50),

    star_rating INT,
    hotel_type VARCHAR(50),
    brand_tier VARCHAR(50),
    chain_name VARCHAR(100),
    ownership_type VARCHAR(50),

    total_rooms INT,
    total_floors INT,
    room_type VARCHAR(30),

    opening_year INT,
    renovation_year INT,
    year INT,

    avg_room_price INT,

    occupancy_rate DECIMAL(5,2),
    booking_rate DECIMAL(5,2),
    cancellation_rate DECIMAL(5,2),

    annual_revenue INT,
    operating_cost INT,
    profit_margin DECIMAL(5,2),
    tax_percentage DECIMAL(5,2),

    staff_count INT,

    avg_rating DECIMAL(3,2),
    total_reviews INT,
    cleanliness_score DECIMAL(3,2),
    service_score DECIMAL(3,2),
    food_score DECIMAL(3,2),

    marketing_budget INT,
    online_booking_percentage DECIMAL(5,2),

    ota_partner VARCHAR(100),
    discount_offered DECIMAL(5,2),
    loyalty_program VARCHAR(50),

    has_wifi BOOLEAN,
    has_pool BOOLEAN,
    has_gym BOOLEAN,
    has_spa BOOLEAN,
    has_parking BOOLEAN,
    has_restaurant BOOLEAN
);
select*from  Hotel
INSERT INTO  Hotel (
    hotel_id,
    hotel_code,
    hotel_name,
    city,
    state,
    region,
    country,
    area,
    star_rating,
    hotel_type,
    brand_tier,
    chain_name,
    ownership_type,
    total_rooms,
    total_floors,
    room_type,
    opening_year,
    renovation_year,
    year,
    avg_room_price,
    occupancy_rate,
    booking_rate,
    cancellation_rate,
    annual_revenue,
    operating_cost,
    profit_margin,
    tax_percentage,
    staff_count,
    avg_rating,
    total_reviews,
    cleanliness_score,
    service_score,
    food_score,
    marketing_budget,
    online_booking_percentage,
    ota_partner,
    discount_offered,
    loyalty_program,
    has_wifi,
    has_pool,
    has_gym,
    has_spa,
    has_parking,
    has_restaurant
)

WITH RECURSIVE numbers AS (
    SELECT 1 AS n

    UNION ALL

    SELECT n + 1
    FROM numbers
    WHERE n < 90
)

SELECT

    n AS hotel_id,

    1000 + n AS hotel_code,

    CONCAT(
        CASE MOD(n,10)
            WHEN 0 THEN 'Grand Palace'
            WHEN 1 THEN 'Royal Residency'
            WHEN 2 THEN 'The Meridian'
            WHEN 3 THEN 'Luxury Inn'
            WHEN 4 THEN 'Blue Horizon'
            WHEN 5 THEN 'Green Valley'
            WHEN 6 THEN 'City Heights'
            WHEN 7 THEN 'Urban Retreat'
            WHEN 8 THEN 'Golden Crown'
            ELSE 'Comfort Suites'
        END,
        ' Hotel ',
        n
    ) AS hotel_name,

    CASE MOD(n,8)
        WHEN 0 THEN 'Chennai'
        WHEN 1 THEN 'Bengaluru'
        WHEN 2 THEN 'Kochi'
        WHEN 3 THEN 'Hyderabad'
        WHEN 4 THEN 'Mumbai'
        WHEN 5 THEN 'Ahmedabad'
        WHEN 6 THEN 'New Delhi'
        ELSE 'Kolkata'
    END AS city,

    CASE MOD(n,8)
        WHEN 0 THEN 'Tamil Nadu'
        WHEN 1 THEN 'Karnataka'
        WHEN 2 THEN 'Kerala'
        WHEN 3 THEN 'Telangana'
        WHEN 4 THEN 'Maharashtra'
        WHEN 5 THEN 'Gujarat'
        WHEN 6 THEN 'Delhi'
        ELSE 'West Bengal'
    END AS state,

    CASE MOD(n,8)
        WHEN 0 THEN 'South'
        WHEN 1 THEN 'South'
        WHEN 2 THEN 'South'
        WHEN 3 THEN 'South'
        WHEN 4 THEN 'West'
        WHEN 5 THEN 'West'
        WHEN 6 THEN 'North'
        ELSE 'East'
    END AS region,

    'India' AS country,

    CONCAT('Area ', MOD(n,15) + 1) AS area,

    3 + MOD(n,3) AS star_rating,

    CASE MOD(n,5)
        WHEN 0 THEN 'Business'
        WHEN 1 THEN 'Luxury'
        WHEN 2 THEN 'Resort'
        WHEN 3 THEN 'Budget'
        ELSE 'Boutique'
    END AS hotel_type,

    CASE MOD(n,3)
        WHEN 0 THEN 'Premium'
        WHEN 1 THEN 'Luxury'
        ELSE 'Standard'
    END AS brand_tier,

    CASE MOD(n,5)
        WHEN 0 THEN 'Taj Group'
        WHEN 1 THEN 'ITC Hotels'
        WHEN 2 THEN 'Marriott'
        WHEN 3 THEN 'Hilton'
        ELSE 'Independent'
    END AS chain_name,

    CASE MOD(n,3)
        WHEN 0 THEN 'Private'
        WHEN 1 THEN 'Corporate'
        ELSE 'Independent'
    END AS ownership_type,

    80 + MOD(n * 17,220) AS total_rooms,

    4 + MOD(n,12) AS total_floors,

    CASE MOD(n,5)
        WHEN 0 THEN 'Standard'
        WHEN 1 THEN 'Deluxe'
        WHEN 2 THEN 'Suite'
        WHEN 3 THEN 'Executive'
        ELSE 'Family'
    END AS room_type,

    2010 + MOD(n,12) AS opening_year,

    2018 + MOD(n,9) AS renovation_year,

    2016 + MOD(n,11) AS year,

    2500 + MOD(n * 137,6000) AS avg_room_price,

    ROUND(55 + RAND() * 40,2) AS occupancy_rate,

    ROUND(50 + RAND() * 45,2) AS booking_rate,

    ROUND(3 + RAND() * 17,2) AS cancellation_rate,

    10000000 + MOD(n * 73129,40000000) AS annual_revenue,

    6000000 + MOD(n * 48123,25000000) AS operating_cost,

    ROUND(15 + RAND() * 25,2) AS profit_margin,

    ROUND(12 + RAND() * 8,2) AS tax_percentage,

    40 + MOD(n * 13,120) AS staff_count,

    ROUND(3.5 + RAND() * 1.4,2) AS avg_rating,

    500 + MOD(n * 37,5000) AS total_reviews,

    ROUND(3.5 + RAND() * 1.4,2) AS cleanliness_score,

    ROUND(3.5 + RAND() * 1.4,2) AS service_score,

    ROUND(3.5 + RAND() * 1.4,2) AS food_score,

    100000 + MOD(n * 1234,900000) AS marketing_budget,

    ROUND(45 + RAND() * 45,2) AS online_booking_percentage,

    CASE MOD(n,5)
        WHEN 0 THEN 'Booking.com'
        WHEN 1 THEN 'MakeMyTrip'
        WHEN 2 THEN 'Goibibo'
        WHEN 3 THEN 'Expedia'
        ELSE 'Direct'
    END AS ota_partner,

    ROUND(5 + RAND() * 15,2) AS discount_offered,

    CASE MOD(n,3)
        WHEN 0 THEN 'Silver'
        WHEN 1 THEN 'Gold'
        ELSE 'Platinum'
    END AS loyalty_program,

    TRUE AS has_wifi,

    MOD(n,2) = 0 AS has_pool,

    TRUE AS has_gym,

    MOD(n,3) = 0 AS has_spa,

    TRUE AS has_parking,

    TRUE AS has_restaurant

FROM numbers;




select*from Hotel





drop table empy
