with source as (
    select * from {{source('northwind', 'customer')}}
)
select * from source
select 
    *,
    current_timestamp() as ingestion_timestamp
from source