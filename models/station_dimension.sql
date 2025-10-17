WITH station as (

select distinct
start_statio_id as station_id,
start_station_name as station_name,
start_lat as station_lat,
start_lng as staton_lng
from {{ source('demo', 'bike') }}

)

select * from station