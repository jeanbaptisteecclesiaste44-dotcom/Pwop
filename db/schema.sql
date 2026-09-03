-- Schéma SQL initial pour PostgreSQL

CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  phone TEXT,
  password_hash TEXT NOT NULL,
  role TEXT NOT NULL DEFAULT 'client', -- client | admin | employee
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

CREATE TABLE employees (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  job_title TEXT,
  active BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

CREATE TABLE collection_requests (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE SET NULL,
  address TEXT NOT NULL,
  description TEXT,
  waste_type TEXT,
  scheduled_for TIMESTAMP WITH TIME ZONE,
  status TEXT NOT NULL DEFAULT 'requested', -- requested | accepted | in_progress | completed | cancelled
  assigned_employee UUID REFERENCES employees(id),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);

CREATE TABLE payments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE SET NULL,
  amount_cents INT NOT NULL,
  currency CHAR(3) DEFAULT 'HTG',
  method TEXT, -- cash | mobile_money | card | other
  status TEXT NOT NULL DEFAULT 'pending', -- pending | paid | failed
  collected_at TIMESTAMP WITH TIME ZONE
);

CREATE TABLE notifications (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  title TEXT,
  body TEXT,
  data JSONB,
  sent_at TIMESTAMP WITH TIME ZONE DEFAULT now()
);
