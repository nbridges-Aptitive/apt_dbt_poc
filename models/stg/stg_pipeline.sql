select

    id,
    name,
    stage_id,
    stage_name,
    stage_win_probability

    from {{ source('raw_copper','pipeline')}}

