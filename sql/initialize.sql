CREATE TABLE public.users (
  id int NOT NULL,
  first_name varchar(60),
  last_name varchar(60),
  email varchar(60),
  password varchar(60),
  created_at timestamp without time zone,
  updated_at timestamp without time zone
);

CREATE TABLE public.posts (
  id int NOT NULL,
  user_id int NOT NULL,
  body text,
  created_at timestamp without time zone,
  updated_at timestamp without time zone
);

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
  SEQUENCE NAME public.users_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1
);

ALTER TABLE public.posts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
  SEQUENCE NAME public.posts_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1
);

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);