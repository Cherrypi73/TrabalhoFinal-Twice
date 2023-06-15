CREATE TABLE produtos (
	codigo INTEGER SERIAL PRIMARY KEY,
	titulo TEXT NOT NULL,
	data_cadastro DATE NOT NULL,
	preco REAL NOT NULL,
	descricao TEXT NOT NULL,
	imagem string NOT NULL
)

INSERT INTO produtos(titulo, data_cadastro, preco, descricao, imagem) 
VALUES 
('Vestido Dior Preto', '20220705', 20000 , 'Vestido Clássico usado pela integrante do BlackPink Jisoo.', ''),
('Bolsa Lady Dior Mini Preto', '19980910', 2220 , 'Bolsa Mini, Linha Italiana, Bolso interno com zíper.', ''),
('Sapato Dior Silk Preto', '19781012', 1800 , 'Sapato da dior confeccionado em couro com Bico Fino.', ''),

('Bolsa Chanel Double Preta', '19881015', 61369.99 , 'Peça Original, em couro, com saco original e caixa.', ''),
('Vestido Branco Chanel 164', '19901105', 80000 , 'Vestido Clássico usado pela integrante do BlackPink Jennie.', ''),
('Perfume Chanel Coco Mademoiselle', '19830404', 1275 , 'Perfume Clássico Chanel criado na França em 1883.', ''),

('Sandália Opyum Saint Laurent', '20050505', 8750 , 'Sandália com acabamento de cetim e grandes laços.', ''),
('Vestido Longo com Pregas Saint Laurent', '20230720', 51170 , 'Vestilo Longo com Pregas, transparente e com decote.', ''),
('Par de brincos Curvy Square Saint Laurent', '20221009', 6450 , 'Dourado, shape quadrado, logo gravado na parte posterior.', ''),

('Cardigan With Gourmette Celine', '20101009', 11000 , 'Cardigan With Gourmette in Heritage Cashmare.', ''),
('Boné de Baseboll Celine', '20220210', 2800 , 'Utilizado pela Lisa do BlackPink, Tamanho M, Preto, para esportes.', ''),
('Celine Bulky Laced', '20201105', 6500 , 'Butina preta fosca da celine.', ''),

('Tiffany & Co. - Return To Tiffany', '20000605',260000  , 'Pendente Com Berloque De Coração Duplo.', ''),
('Anel de noivado Tifanny ', '19870505', 294000 , 'Anel de noivado Tifanny true com aro em platina com diamantes.', '')
