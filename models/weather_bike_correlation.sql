WITH CTE AS (

select 
t.*,
w.* 
from {{ ref('trip_fact') }} t
left join {{ ref('weather_dimension') }} w 
on 1=1
and t.trip_date = w.daily_weather_date

)

select * from cte