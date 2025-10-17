WITH daily_weather as (

select 
date(time) as daily_weather_date,
weather,
temp,
pressure,
humidity,
clouds
from {{ source('demo', 'weather') }}

),

daily_weather_agg as (

select
daily_weather_date,
weather,
round(avg(temp),2) as avg_temp,
round(avg(pressure),2) as avg_pressure,
round(avg(humidity),2) as avg_humidity,
round(avg(clouds),2) as avg_clouds
from daily_weather
group by daily_weather_date, weather

qualify row_number() over (partition by daily_weather_date order by count(weather) desc) = 1 -- For each daily weather date check which weather type with most occurences

)

 



select * from daily_weather_agg