O projeto foi feito usando o MySQL Workbench e consiste num banco de dados de uma produtora audiovisual.

**Descrição do negócio:**
- A produtora possui CNPJ, Telefone e Endereço;
- A produtora atende cliente, que possui CNPJ (pois só atende empresas), Nome e Telefone;
- A produtora possui funcionário, que tem matrícula de funcionário, nome, cargo (diretor, roteirista, assistente, editor de vídeo etc.), endereço e telefone;
- Cliente solicita um projeto, que possui ID, tipo (documentário, longa, videoclipe, curta), gênero e título;
- Funcionário é designado à projeto;
- Todo projeto usa equipamentos da produtora, cada equipamento possui seu ID e nome;
- A data de início e saída de um funcionário num projeto é registrada;
- A data de locação e devolução de equipamento em projeto também é registrada;
- Na produtora, há um diretor que chefia toda a equipe.

**Modelo ER:**
![image](https://github.com/lawtherea/bd-produtora-projfinal/assets/87096464/214549f4-4f6a-450d-a3f1-3aa28df272f9)

**Dependências funcionais:**
CNPJ da Produtora = {Telefone da Produtora, Endereço da Produtora}
CNPJ de Cliente = {Nome de Cliente, Telefone de Cliente}
Matrícula de Funcionário = {Nome do Funcionário, Cargo do Funcionário, Endereço do Funcionário, Telefone do Funcionário}
ID do Projeto = {Tipo de Projeto, Gênero do Projeto, Título do Projeto}
ID do Equipamento = {Nome do Equipamento}
Matrícula de Funcionário, ID de Projeto = {Data de entrada, Data de saída}
ID de Projeto, ID de Equipamento = {Data da locação, Data da devolução}

**Normalizações:**
Produtora = {CNPJ, Telefone, Endereço}
Cliente = {CNPJ, Nome, Telefone}
Funcionário = {Matrícula, Nome, Cargo, Endereço, Telefone}
Projeto = {ID, Tipo, Gênero, Título}
Equipamento = {ID, Nome}
Dias_Trabalhados = {Matrícula_Funcionário, ID_Projeto, Data_entrada, Data_Saída}
Dias_Equipamentos = {ID_Projeto, ID_Equipamento, Data_Locação, Data_Devolução}

1FN: O projeto já se encontra na 1FN, pois não há atributos compostos ou multivalorados.
2FN: Já está na 2FN, pois está na 1FN e, em cada tabela, todos os atributos não-chave são
totalmente dependentes da chave primária.
3FN: Já está na 3FN pois, além de já estar na 1FN e 2FN, não há dependência transitiva.

**Modelo lógico:**<br>
![image](https://github.com/lawtherea/bd-produtora-projfinal/assets/87096464/7783ae39-80c1-4e2d-ba3d-ebb114e7a7e3)
