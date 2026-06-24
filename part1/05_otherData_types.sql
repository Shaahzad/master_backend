


DROP TABLE IF EXISTS basics.app_event;

CREATE TABLE basics.app_event 
(
    -- UUID
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    event_name TEXT NOT NULL,

    -- JSONB
    metadata JSONB DEFAULT '{}'::jsonb,


    created_at TIMESTAMP DEFAULT NOW()
);


INSERT INTO basics.app_event 
(
    event_name, metadata
)
VALUES
(
    'sign_up',
    '{"browser": "Chrome"}'
),
(
    'sign_in',
    '{"user": "Shahzad"}'
);

SELECT * FROM basics.app_event;