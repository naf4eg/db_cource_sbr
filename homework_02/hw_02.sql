CREATE TABLE IF NOT EXISTS student02.author();

ALTER TABLE IF EXISTS student02.author
    ADD COLUMN IF NOT EXISTS id                         BIGSERIAL,
    ADD COLUMN IF NOT EXISTS first_name                 VARCHAR,
    ADD COLUMN IF NOT EXISTS last_name                  VARCHAR
;

COMMENT ON TABLE  student02.author                 	   IS 'Таблица авторов книг';
COMMENT ON COLUMN student02.author.id                   IS 'Идентификатор автора';
COMMENT ON COLUMN student02.author.first_name           IS 'Имя';
COMMENT ON COLUMN student02.author.last_name            IS 'Фамилия';

ALTER TABLE student02.author ADD primary key (id);


--------------------------------------------------------------------------------------------------


CREATE TABLE IF NOT EXISTS student02.books();

ALTER TABLE IF EXISTS student02.books
    ADD COLUMN IF NOT EXISTS id                         BIGSERIAL,
    ADD COLUMN IF NOT EXISTS isbn                       VARCHAR,
    ADD COLUMN IF NOT EXISTS title                      VARCHAR,
    ADD COLUMN IF NOT EXISTS description                VARCHAR,
    ADD COLUMN IF NOT EXISTS author_id                  BIGSERIAL,
    ADD COLUMN IF NOT EXISTS price                      NUMERIC
;

COMMENT ON TABLE  student02.books                 	   IS 'Таблица электронных книг';
COMMENT ON COLUMN student02.books.id                   IS 'Идентификатор книги';
COMMENT ON COLUMN student02.books.isbn                 IS 'Уникальный идентификационный номер издания';
COMMENT ON COLUMN student02.books.title                IS 'Название книги';
COMMENT ON COLUMN student02.books.description          IS 'Описание книги';
COMMENT ON COLUMN student02.books.author_id            IS 'Идентификатор автора';
COMMENT ON COLUMN student02.books.price                IS 'Цена';


ALTER TABLE student02.books ADD primary key (id);
ALTER TABLE student02.books ADD foreign key (author_id) REFERENCES student02.author(id);


--------------------------------------------------------------------------------------------------


CREATE TABLE IF NOT EXISTS student02.orders();

ALTER TABLE IF EXISTS student02.orders
    ADD COLUMN IF NOT EXISTS id                         BIGSERIAL,
    ADD COLUMN IF NOT EXISTS date                       DATE,
    ADD COLUMN IF NOT EXISTS status                     VARCHAR,
    ADD COLUMN IF NOT EXISTS user_id                    BIGSERIAL
;

COMMENT ON TABLE  student02.orders                 	    IS 'Таблица заказа';
COMMENT ON COLUMN student02.orders.id                   IS 'Идентификатор заказа';
COMMENT ON COLUMN student02.orders.date                 IS 'Дата заказа';
COMMENT ON COLUMN student02.orders.status               IS 'Статус заказа';
COMMENT ON COLUMN student02.orders.user_id              IS 'Идентификатор покупателя';


ALTER TABLE student02.orders ADD primary key (id);
ALTER TABLE student02.orders ADD foreign key (user_id) REFERENCES student02.users(id);


--------------------------------------------------------------------------------------------------


CREATE TABLE IF NOT EXISTS student02.users();

ALTER TABLE IF EXISTS student02.users
    ADD COLUMN IF NOT EXISTS id                         BIGSERIAL,
    ADD COLUMN IF NOT EXISTS first_name                 VARCHAR,
    ADD COLUMN IF NOT EXISTS last_name                  VARCHAR
;

COMMENT ON TABLE  student02.users                 	   IS 'Таблица покупателей книг';
COMMENT ON COLUMN student02.users.id                   IS 'Идентификатор покупателя';
COMMENT ON COLUMN student02.users.first_name           IS 'Имя';
COMMENT ON COLUMN student02.users.last_name            IS 'Фамилия';

ALTER TABLE student02.users ADD primary key (id);


--------------------------------------------------------------------------------------------------


CREATE TABLE IF NOT EXISTS student02.order_items();

ALTER TABLE IF EXISTS student02.order_items
    ADD COLUMN IF NOT EXISTS order_id                   BIGSERIAL,
    ADD COLUMN IF NOT EXISTS book_id                    BIGSERIAL
;

COMMENT ON TABLE  student02.order_items                 	IS 'Таблица заказов';
COMMENT ON COLUMN student02.order_items.order_id            IS 'Идентификатор заказа';
COMMENT ON COLUMN student02.order_items.book_id             IS 'Идентификатор книги';


ALTER TABLE student02.order_items ADD primary key (order_id, book_id);
ALTER TABLE student02.order_items ADD foreign key (order_id) REFERENCES student02.orders(id);
ALTER TABLE student02.order_items ADD foreign key (book_id) REFERENCES student02.books(id);