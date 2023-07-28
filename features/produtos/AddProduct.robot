*** Settings ***
Resource	${EXECDIR}/resources/steps/products/addProduct_step.resource

Documentation  Teste de versão Robot Framework API Publica DummyJson Adicionar Produto

*** Test Cases ***
Cenario: Adicionar Produto Valido
	[Documentation]   Teste para validar o cadastro de um produto
	[Tags]   Funcionalidade_Adicionar_Produto
	Dado que esteja conectado a API com a configuracao   auth/dummyjson_auth.json
	E obter os dados de um produto valido
	Quando enviar a solicitacao de cadastro
	Entao o status code da requisicao deve ser "200" e a resposta "products/response_produto_valido.json"