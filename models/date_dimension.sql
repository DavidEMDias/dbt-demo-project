WITH CTE AS (

select 
    TO_TIMESTAMP(STARTED_AT) as STARTED_AT,
    DATE(TO_TIMESTAMP(STARTED_AT)) as DATE_STARTED_AT,
    HOUR(TO_TIMESTAMP(STARTED_AT)) as HOUR_STARTED_AT,

    /*CASE WHEN DAYNAME(TO_TIMESTAMP(STARTED_AT)) in ('Sat','Sun')
    THEN 'WEEKEND'
    ELSE 'BUSINESSDAY' END AS DAY_TYPE,*/

    {{get_day_type('STARTED_AT')}} AS DAY_TYPE, -- Macro to retrieve day type (WEEKEND or BUSINESSDAY)

    /*CASE WHEN MONTH(TO_TIMESTAMP(STARTED_AT)) in (12,1,2)
    THEN 'WINTER'
    WHEN MONTH(TO_TIMESTAMP(STARTED_AT)) in (3,4,5)
    THEN 'SPRING'
    WHEN MONTH(TO_TIMESTAMP(STARTED_AT)) in (6,7,8)
    THEN 'SUMMER'
    ELSE 'AUTUMN' END AS STATION_OF_YEAR*/

    {{get_season('STARTED_AT')}} AS STATION_OF_YEAR -- Macro to retrieve station of the year 

from 
{{ source('demo', 'bike') }}

) 

select * from CTE