select

    company_id,
    company_name,
    address,
    assignee_id,
    details,
    interaction_count,
    date_created

    from {{ source('raw_copper','company')}} 
