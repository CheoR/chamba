-- Create ENUM type for userType
CREATE TYPE USERTYPES AS ENUM (
    '1000', -- default chamba worker
    '2000', -- private client looking for chamba worker
    '3000', -- direct hire representative looking to hire chamba worker
    '4000'  -- staffing agency representative looking for chamba worker
);

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    first_name VARCHAR NOT NULL CHECK (LENGTH(first_name) >= 1),
    last_name VARCHAR NOT NULL CHECK (LENGTH(last_name) >= 1),
    user_type USERTYPES NOT NULL
);
