-- PostgreSQL initialization script for ANTT
-- This script runs automatically when the container starts

-- Create extensions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pg_trgm";

-- Create schemas
CREATE SCHEMA IF NOT EXISTS public;
CREATE SCHEMA IF NOT EXISTS audit;

-- Grant privileges
GRANT ALL PRIVILEGES ON SCHEMA public TO postgres;
GRANT ALL PRIVILEGES ON SCHEMA audit TO postgres;

-- Create audit log table
CREATE TABLE IF NOT EXISTS audit.logs (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  table_name VARCHAR(255) NOT NULL,
  operation VARCHAR(10) NOT NULL,
  user_id UUID,
  old_data JSONB,
  new_data JSONB,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create index for better query performance
CREATE INDEX IF NOT EXISTS idx_audit_logs_created_at ON audit.logs(created_at);
CREATE INDEX IF NOT EXISTS idx_audit_logs_table_name ON audit.logs(table_name);
CREATE INDEX IF NOT EXISTS idx_audit_logs_user_id ON audit.logs(user_id);

-- Create function for audit trigger
CREATE OR REPLACE FUNCTION audit.audit_trigger_func()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO audit.logs (table_name, operation, user_id, old_data, new_data)
  VALUES (
    TG_TABLE_NAME,
    TG_OP,
    current_setting('app.current_user_id', true)::UUID,
    CASE WHEN TG_OP = 'DELETE' THEN row_to_json(OLD) ELSE NULL END,
    CASE WHEN TG_OP != 'DELETE' THEN row_to_json(NEW) ELSE NULL END
  );
  RETURN COALESCE(NEW, OLD);
END;
$$ LANGUAGE plpgsql;

-- Create comment
COMMENT ON SCHEMA audit IS 'Schema for audit logging';
COMMENT ON TABLE audit.logs IS 'Audit log table for tracking changes';
COMMENT ON FUNCTION audit.audit_trigger_func() IS 'Function for audit triggers';
