select p.PERSON_ID
    ,p.FIRST_NAME
    ,p.LAST_NAME
    ,p.ADDRESS
    ,c.COMPANY_NAME
    ,c.INTERACTION_COUNT
    ,p.DATE_CREATED
from {{ ref('stg_people') }} p
left join {{ ref('stg_company') }} c
    on p.COMPANY_ID = c.COMPANY_ID
order by p.FIRST_NAME, p.LAST_NAME, p.DATE_CREATED desc