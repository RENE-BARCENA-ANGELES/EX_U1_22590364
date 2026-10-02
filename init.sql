DROP TABLE IF exists categories CASCADE;
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

DROP TABLE IF exists posts CASCADE;
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    content TEXT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL
);

INSERT INTO public.categories (id, name) VALUES (1, 'Tecnología');
INSERT INTO public.categories (id, name) VALUES (2, 'Negocios');
INSERT INTO public.categories (id, name) VALUES (3, 'Entretenimiento');
INSERT INTO public.categories (id, name) VALUES (4, 'Finanzas');
INSERT INTO public.categories (id, name) VALUES (5, 'Salud');

INSERT INTO public.posts (id, title, content, category_id) VALUES (1, ' Bitcoin alcanza su máximo histórico en 2023', 'El Bitcoin ha superado nuevamente las expectativas al alcanzar un nuevo máximo histórico de $45,000 este mes, impulsado por la adopción masiva de criptomonedas en países emergentes y el interés de grandes instituciones financieras. Analistas sugieren que este repunte se debe a la creciente demanda de activos digitales como alternativa a las monedas tradicionales. Sin embargo, expertos advierten sobre la volatilidad del mercado y recomiendan invertir con precaución. Mientras tanto, otras criptomonedas como Ethereum y Solana también han experimentado alzas significativas.', 2);
