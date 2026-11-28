-- 1. Create Parent Table: corporate_stores
CREATE TABLE IF NOT EXISTS public.corporate_stores
(
    store_id integer NOT NULL,
    city_location character varying(50),
    PRIMARY KEY (store_id)
);

-- 2. Create Child Table: checkout_registers
CREATE TABLE IF NOT EXISTS public.checkout_registers
(
    register_id integer NOT NULL,
    hardware_model character varying(100),
    store_id integer,
    PRIMARY KEY (register_id)
);

-- 3. Establish One-to-Many Foreign Key Relationship
ALTER TABLE IF EXISTS public.checkout_registers
    ADD CONSTRAINT fk_corporate_stores FOREIGN KEY (store_id)
    REFERENCES public.corporate_stores (store_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;