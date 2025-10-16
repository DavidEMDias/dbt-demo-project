-- Test sources

select * from {{ source('demo', 'bike') }}
limit 10