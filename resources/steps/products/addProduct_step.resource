*** Settings ***
Library    br.com.poc.robotframework.api.dummy.products.datafactory.AddProductsDataFactory

Resource   ${EXECDIR}/resources/common.resource


*** Keywords ***
E obter os dados de um produto valido
	[Documentation]   Funcao responsavel por obter o payload com os dados do teste
	${dados_body}=   Get Payload Valid Add Product
	Set Test Variable    ${dados_body}
	Log   ${dados_body}
	
Quando enviar a solicitacao de cadastro
	[Documentation]   Funcao responsavel por enviar a requisicao de acordo com o endpoint
	${response_add}   Post Request    alias=DummyJson   uri=/products/add   data=${dados_body}
	Set Test Variable   ${response_add}
	Log   ${response_add}
	
	
Entao o status code da requisicao deve ser "${status_code}" e a resposta "${nome_json}"
	[Documentation]   Funcao responsavel por validar o retorno da requisicao
	${json_response}=   Get File Json   ${nome_json}
	Response Code Should Be   DummyJson   ${status_code}
	${id}=   Get From Dictionary   ${response_add.json}   id
	Dictionary Should Contain Item   ${response_add.json}   title   ${json_response["title"]}
	Should Not be Empty   "${id}"
	