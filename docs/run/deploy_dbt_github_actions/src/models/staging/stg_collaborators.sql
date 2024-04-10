
  
    

        create or replace transient table MLEGALL_DB.ARTICLE_DBT_SCHEMA_DEV_staging.stg_collaborators
         as
        (with  __dbt__cte__base_collaborators as (
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
        );
      
  