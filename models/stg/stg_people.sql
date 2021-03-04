select

    person_id,
    first_name,
    last_name,
    address,
    assignee_id,
    company_id,
    company_name,
    title,
    date_last_contacted,
    date_created

    from {{ source('raw_copper','people')}}