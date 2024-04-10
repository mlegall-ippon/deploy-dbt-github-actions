with  __dbt__cte__base_collaborators as (
with source as (
    select *
    from
        MLEGALL_DB.semana_schema.collaborators
)

select * from source
),base_collaborators as (
    select * from __dbt__cte__base_collaborators
)

select * from base_collaborators where name = 'Mathis LE GALL'