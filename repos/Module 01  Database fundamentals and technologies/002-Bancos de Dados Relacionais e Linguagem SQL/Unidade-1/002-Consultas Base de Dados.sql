USE bd_filmes
;

-- 1) Digite o comando SQL
SELECT * FROM filmes
;

-- 2) Listar todos os filmes cadastrados:
SELECT * FROM filmes
;

-- 3) Listar todos os gêneros de filmes cadastrados:
SELECT * 
FROM generos
;

-- 4) Listar somente a descrição dos gêneros de filmes:
SELECT dsc_genero 
FROM generos
;

-- 5) Listar a descrição e a quantidade de votos dos filmes que tiveram mais de 1000 votos:
SELECT dsc_filme, qtd_votos
FROM filmes
WHERE qtd_votos > 10000
;


-- 6) Listar filmes com nota média entre 83 e 85:
SELECT *
FROM filmes
WHERE 	num_nota_media > 83 
	and num_nota_media < 85
;

-- 7) Em seguida, utilize o SQL Management Studio e o banco de dados db_filmes apresentado nas aulas mencionadas para gerar uma consulta SQL que gere os seguintes resultados:

-- 7.1) Resultado query simples com string.png
SELECT 	id_filme,
		dsc_filme,
		qtd_votos,
		num_nota_media 
FROM filmes
WHERE dsc_filme = 'Matrix'
; 

-- 7.2)  Resultado query dessafio 1.png
SELECT 	id_filme,
		dsc_filme,
		qtd_votos,
		num_nota_media
FROM filmes 
WHERE 	qtd_votos < 1000
		AND	num_nota_media > 80
		AND num_nota_media < 90	
;

-- 8) Listar todos os dados das tabelas empregado, departamento e projeto.
USE bd_empresa
;

SELECT * 
FROM empregado -- (fk) num_matricula_supervisor (fk) cod_depto
;

SELECT * 
FROM departamento -- (fk) num_matricula_gerente
;

SELECT * 
FROM projeto -- (fk)cod_depto
;

-- 9) Listar os projetos que acontecem em BH
SELECT * 
FROM projeto -- (fk)cod_depto
WHERE	nom_local = 'BH'
;

-- 10) Listar todos os empregados do sexo masculino que moram em MG
SELECT * 
FROM empregado -- (fk) num_matricula_supervisor (fk) cod_depto
WHERE 	sex_empregado = 'M'
		AND sig_uf = 'MG'
;