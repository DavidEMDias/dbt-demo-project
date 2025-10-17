WITH trips as (

select 
ride_id,
date(TO_TIMESTAMP(started_at)) as trip_date,
start_statio_id as start_station_id,
end_station_id,
member_csual as member_casual,
TIMESTAMPDIFF(second, TO_TIMESTAMP(started_at), TO_TIMESTAMP(ended_at)) as trip_duration_seconds

from {{ ref('stg_bike') }}


)

select  * from trips