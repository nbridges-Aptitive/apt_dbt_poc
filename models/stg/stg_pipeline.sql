select

    id,
    name,
    stage_name,
    stage_win_probability,
    stage_id

    from {{ source('raw_copper','pipeline')}}

