select 

    opportunity_id,
    opportunity_name,
    company_name,
    interaction_count,
    status, 
    monetary_unit,
    monetary_value,
    details,
    date_created,
    pipeline_id,
    pipeline_stage_id

    from {{ source('raw_copper','biz_dev_opportunity')}}