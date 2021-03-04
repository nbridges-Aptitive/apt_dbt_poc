select

    task_id,
    task_name,
    related_resource_id,
    related_resource_type,
    assignee_id,
    due_date,
    completed_date,
    priority,
    status,
    date_created

    from {{ source('raw_copper','task')}}