{{-
    config(
	    materialized = 'ephemeral'
    )
-}}

with source as (
    select *
    from
        {{ source('semana_schema','collaborators') }}
)

select * from source
