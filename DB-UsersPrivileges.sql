# 1. Crie 6 usuários para funcionários da sua empresa.
drop user a@localhost;
CREATE USER a@localhost IDENTIFIED BY 'aaa';
drop user b@localhost;
CREATE USER b@localhost IDENTIFIED BY 'bbb';
drop user c@localhost;
CREATE USER c@localhost IDENTIFIED BY 'ccc';
drop user d@localhost;
CREATE USER d@localhost IDENTIFIED BY 'ddd';
drop user e@localhost;
CREATE USER e@localhost IDENTIFIED BY 'eee';
drop user f@localhost;
CREATE USER f@localhost IDENTIFIED BY 'fff';
drop user g@localhost;
CREATE USER g@localhost IDENTIFIED BY 'ggg';
drop user h@localhost;
CREATE USER h@localhost IDENTIFIED BY 'hhh';

# 2. Crie pelo menos 3 papéis úteis para os funcionários.
drop role 'estagiario', 'supervisor', 'boss', 'mecanico','representante';
CREATE ROLE 'estagiario', 'supervisor', 'boss', 'mecanico','representante';

# 3. Atribua privilégios a cada papel (considerando bancos de dados e tabelas específicas).
GRANT ALL ON *.* TO boss;

GRANT SELECT, UPDATE, INSERT, DELETE ON primeiro.pilotos TO mecanico;

GRANT SELECT ON *.* TO supervisor;

GRANT SELECT, UPDATE ON *.* TO estagiario;

GRANT SELECT(modelo,armazenamento,valor) ON segundo.computadores TO representante;

# 4. Atribua papéis aos usuários.
GRANT supervisor TO a@localhost;

GRANT estagiario TO b@localhost;	

GRANT mecanico TO c@localhost;

GRANT estagiario TO d@localhost;

GRANT supervisor TO e@localhost;

GRANT boss TO f@localhost;

GRANT representante TO g@localhost;

GRANT representante TO h@localhost;

