INSERT INTO Cliente (id, Nome, Telefone, Email) VALUES ('001', 'Oswaldo da Cunha Junior', '(17)99863-5460', 'oswaldo@hotrum.com');
INSERT INTO Cliente (id, Nome, Telefone, Email) VALUES ('002', 'Gislaine Farias', '(71)99986-6966', 'gislaine_f@hotrum.com');
INSERT INTO Cliente (id, Nome, Telefone, Email) VALUES ('003', 'Ana Maria Disdaine', '(60)88173-0658', 'anamaria@yabroo.com');
INSERT INTO Cliente (id, Nome, Telefone, Email) VALUES ('004', 'Carlos Cerati', '(23)4022-5527', 'cerati@gcaqui.com');
INSERT INTO Cliente (id, Nome, Telefone, Email) VALUES ('005', 'Girson do Oeste', '(45)2325-6060', 'g_oeste@sai.com');

INSERT INTO StatusOrdemServico (id, Identificacao) VALUES ('111', 'ABERTO');
INSERT INTO StatusOrdemServico (id, Identificacao) VALUES ('222', 'EM ANDAMENTO');
INSERT INTO StatusOrdemServico (id, Identificacao) VALUES ('333', 'EM PAUSA');
INSERT INTO StatusOrdemServico (id, Identificacao) VALUES ('444', 'CANCELADO');
INSERT INTO StatusOrdemServico (id, Identificacao) VALUES ('555', 'CONCLUÍDO');

INSERT INTO OrdemServico (id, idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) VALUES (1, 1, 111, '0000000001', '2022-09-09', null, 250, '2022-09-08', null);
INSERT INTO OrdemServico (id, idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) VALUES (2, 2, 222, '0000000002', '2022-09-10', null, 123, '2022-09-08', null);

INSERT INTO Marca (id, Identificacao) VALUES ('1111', 'Chevrolet');
INSERT INTO Marca (id, Identificacao) VALUES ('2222', 'Fiat');
INSERT INTO Marca (id, Identificacao) VALUES ('3333', 'Volkswagen');
INSERT INTO Marca (id, Identificacao) VALUES ('4444', 'Ford');

INSERT INTO Modelo (id, idMarca, Identificacao, Ano) VALUES ('11111', 1111, 'Kadet', 1995);
INSERT INTO Modelo (id, idMarca, Identificacao, Ano) VALUES ('22222', 2222, 'Uno Way', 2013);
INSERT INTO Modelo (id, idMarca, Identificacao, Ano) VALUES ('33333', 3333, 'Gol', 2015);
INSERT INTO Modelo (id, idMarca, Identificacao, Ano) VALUES ('44444', 4444, 'Ranger', 2010);

INSERT INTO Equipe (id, Identificacao) VALUES ('0000001', 'Borracharia');
INSERT INTO Equipe (id, Identificacao) VALUES ('0000002', 'Pintura');
INSERT INTO Equipe (id, Identificacao) VALUES ('0000003', 'Funilaria');
INSERT INTO Equipe (id, Identificacao) VALUES ('0000004', 'Mecanica');
INSERT INTO Equipe (id, Identificacao) VALUES ('0000005', 'Elétrica');

INSERT INTO StatusServico (id, Identificacao) VALUES ('001', 'A FAZER');
INSERT INTO StatusServico (id, Identificacao) VALUES ('002', 'FAZENDO');
INSERT INTO StatusServico (id, Identificacao) VALUES ('003', 'AGUARANDO PEÇA');
INSERT INTO StatusServico (id, Identificacao) VALUES ('004', 'CANCELADO');
INSERT INTO StatusServico (id, Identificacao) VALUES ('005', 'CONCLUÍDO');

INSERT INTO TabelaServico (id, Identificacao, ValorTabela) VALUES ('00001', 'Pintura geral', 2000);
INSERT INTO TabelaServico (id, Identificacao, ValorTabela) VALUES ('00002', 'Troca do motor', 1500);
INSERT INTO TabelaServico (id, Identificacao, ValorTabela) VALUES ('00003', 'Troca de lampada do farol', 30);
INSERT INTO TabelaServico (id, Identificacao, ValorTabela) VALUES ('00004', 'Troca de pneu', 50);
INSERT INTO TabelaServico (id, Identificacao, ValorTabela) VALUES ('00005', 'Alinhamento', 50);

INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (2, 3333, 250025, 2015);
INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (1, 2222, 250025, 2013);
-- INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (3, 3333, 250025, 2015);
-- INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (3, 4444, 250025, 2010);

INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (1, 1, 1, 1, 'Trocar Pneu', 0, 50, '2022-09-10', '2022-09-10');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (2, 2, 2, 2, 'Instalar som', 1500, 250, '2022-09-10', '2022-09-10');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (3, 3, 3, 3, 'Trocar paralamas', 1000, 300, '2022-09-10', '2022-09-10');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (4, 4, 4, 4, 'Consertar motor', 100, 1000, '2022-09-10', '2022-09-10');

INSERT INTO Especialidade (Identificacao) VALUES ('Trocar Pneu');
INSERT INTO Especialidade (Identificacao) VALUES ('Pintar');
INSERT INTO Especialidade (Identificacao) VALUES ('Lixar');
INSERT INTO Especialidade (Identificacao) VALUES ('Mecanica Hidráulico');
INSERT INTO Especialidade (Identificacao) VALUES ('Instalar som');

INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, CEP, Logradouro, Numero,	Complemento) VALUES (1, 1, '001', 'Lemão Duarte', '00000-000', 'Rua..', 'S/N', null);
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, CEP, Logradouro, Numero,	Complemento) VALUES (2, 2, '002', 'Renato Catanduva', '00000-000', 'Rua..', 'S/N', null);
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, CEP, Logradouro, Numero,	Complemento) VALUES (3, 3, '003', 'Juares Junior', '00000-000', 'Rua..', 'S/N', null);
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, CEP, Logradouro, Numero,	Complemento) VALUES (4, 4, '004', 'Bastião Mecânico', '00000-000', 'Rua..', 'S/N', null);

INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Tinta Galão', 150);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Óloe 1lt', 40);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Lâmpada do farol', 30);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Pneu', 450);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Filtro de óleo', 50);

INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (1, 1, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (2, 2, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (3, 3, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (4, 4, 50);