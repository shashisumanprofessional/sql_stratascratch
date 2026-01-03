--ID - 10277  Find all inspections which are part of an inactive program

drop table inspections;
CREATE TABLE inspections (
    serial_number           TEXT,
    activity_date            DATE,
    facility_name            TEXT,
    score                    BIGINT,
    grade                    TEXT,
    service_code             BIGINT,
    service_description      TEXT,
    employee_id              TEXT,
    facility_address         TEXT,
    facility_city            TEXT,
    facility_id              TEXT,
    facility_state           TEXT,
    facility_zip             TEXT,
    owner_id                 TEXT,
    owner_name               TEXT,
    pe_description           TEXT,
    program_element_pe       BIGINT,
    program_name             TEXT,
    program_status           TEXT,
    record_id                TEXT
);


INSERT INTO inspections VALUES
(
    'SN001',
    '2024-01-10',
    'Central Cafe',
    95,
    'A',
    101,
    'Routine Inspection',
    'EMP01',
    '123 Main St',
    'San Jose',
    'FAC001',
    'CA',
    '95112',
    'OWN001',
    'John Foods LLC',
    'Food Safety Program',
    5001,
    'Food Safety',
    'inactive',
    'REC001'
),
(
    'SN002',
    '2024-01-12',
    'Green Deli',
    88,
    'B',
    102,
    'Follow-up Inspection',
    'EMP02',
    '456 Oak St',
    'San Mateo',
    'FAC002',
    'CA',
    '94401',
    'OWN002',
    'Green Eats Inc',
    'Food Safety Program',
    5001,
    'Food Safety',
    'active',
    'REC002'
),
(
    'SN003',
    '2024-02-05',
    'Urban Kitchen',
    72,
    'C',
    103,
    'Complaint Inspection',
    'EMP03',
    '789 Pine St',
    'Oakland',
    'FAC003',
    'CA',
    '94607',
    'OWN003',
    'Urban Foods',
    'Health Compliance',
    5002,
    'Health Compliance',
    'inactive',
    'REC003'
);


select * from inspections;

select * from inspections 
where 
cast (program_status as varchar(20))='inactive';