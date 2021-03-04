select b.OPPORTUNITY_ID
    , b.OPPORTUNITY_NAME
    , b.COMPANY_NAME
    , b.INTERACTION_COUNT
    , b.STATUS
    , b.MONETARY_UNIT
    , b.MONETARY_VALUE
    , p.NAME as PIPELINE_NAME
    , b.DETAILS
    , b.DATE_CREATED
from {{ ref('stg_biz_dev_opportunity') }} b
left join {{ ref('stg_pipeline') }} p
    on b.PIPELINE_ID = p.ID
    and b.PIPELINE_STAGE_ID = p.STAGE_ID
where b.STATUS in ('Won', 'Open')