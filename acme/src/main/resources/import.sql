-- Seed States
insert into statecodes
    (code, name)
    values
        (01, 'Alabama' 'AL'),
        (02, 'Alaska' 'AK'),
        (04, 'Arizona' 'AZ'),
        (05, 'Arkansas'	'AR'),
        (06, 'California' 'CA'),
        (08, 'Colorado'	'CO'),
        (09, 'Connecticut' 'CT'),
        (10, 'Delaware'	'DE'),
        (11, 'District of Columbia' 'DC'),
        (12, 'Florida' 'FL'),
        (13, 'Georgia' 'GA'),
        (15, 'Hawaii' 'HI'),
        (16, 'Idaho' 'ID'),
        (17, 'Illinois'	'IL'),
        (18, 'Indiana' 'IN'),
        (19, 'Iowa'	'IA'),
        (20, 'Kansas' 'KS'),
        (21, 'Kentucky'	'KY'),
        (22, 'Louisiana' 'LA'),
        (23, 'Maine' 'ME'),
        (24, 'Maryland'	'MD'),
        (25, 'Massachusetts' 'MA'),
        (26, 'Michigan'	'MI'),
        (27, 'Minnesota' 'MN'),
        (28, 'Mississippi' 'MS'),
        (29, 'Missouri'	'MO'),
        (30, 'Montana'	'MT'),
        (31, 'Nebraska'	'NE'),
        (32, 'Nevada' 'NV'),
        (33, 'New Hampshire' 'NH'),
        (34, 'New Jersey' 'NJ'),
        (35, 'New Mexico' 'NM'),
        (36, 'New York' 'NY'),
        (37, 'North Carolina' 'NC'),
        (38, 'North Dakota'	'ND'),
        (39, 'Ohio'	'OH'),
        (40, 'Oklahoma'	'OK'),
        (41, 'Oregon' 'OR'),
        (42, 'Pennsylvania'	'PA'),
        (44, 'Rhode Island'	'RI'),
        (45, 'South Carolina' 'SC'),
        (46, 'South Dakota'	'SD'),
        (47, 'Tennessee' 'TN'),
        (48, 'Texas' 'TX'),
        (49, 'Utah'	'UT'),
        (50, 'Vermont' 'VT'),
        (51, 'Virginia'	'VA'),
        (53, 'Washington' 'WA'),
        (54, 'West Virginia' 'WV'),
        (55, 'Wisconsin' 'WI'),
        (56, 'Wyoming' 'WY')

-- Seed Disasters
insert into disaster
    (end_date, name, start_date)
values
    ('2022-06-11', 'South Dakota Severe Storm, Straight-line Winds, Tornadoes, and Flooding (DR-4664-SD)', '2022-06-14'),
    ('2022-07-26', 'Kentucky Severe Storms, Flooding, Landslides, and Mudslides (DR-4663-KY)', null),
    ('2022-05-12', 'Nebraska Severe Storms and Straight-line Winds (DR-4662-NE)', '2022-05-12'),
    ('2022-05-07', 'Alaska Landslide (DR-4661-AK)', '2022-05-07'),
    ('2022-07-22', 'California Oak Fire (FM-5445-CA)', null),
    ('2022-07-18', 'Texas Chalk Mountain Fire (FM-5444-TX)', null),
    ('2022-04-22', 'North Dakota Severe Winter Storm and Flooding (DR-4660-ND)', '2022-05-25'),
    ('2022-04-22', 'Minnesota Severe Storms, Straight-line Winds, and Flooding (DR-4659-MN)', '2022-06-15'),
    ('2022-06-12', 'Arizona Pipeline Fire (FM-5441-AZ)', null),
    ('2022-01-28', 'Rhode Island Severe Winter Storm and Snowstorm (DR-4653-RI)', '2022-01-29')

-- Seed Facilities
insert into facilities
    (facility_name, is_open, npi, statecode)
values
    ('UPMC Northwest', 1, '1003906488', 42),
    ('Banner University Medical Center', 1, '1417101098', 4),
    ('University of Alaska Anchorage General Hospital', 0, '1053866467', 2)