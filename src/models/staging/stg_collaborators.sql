with base_collaborators as (
    select * from {{ ref('base_collaborators') }}
)

select * from base_collaborators where name = 'Mathis LE GALL'
