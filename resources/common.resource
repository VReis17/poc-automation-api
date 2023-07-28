*** Settings ***
Library     br.com.poc.robotframework.api.dummy.auth.AuthDataFactory
Library 	DateTime
Library		OperatingSystem
Library		HttpRequestLibrary
Library		Collections
Library		String



*** Keywords ***
Dado que esteja conectado a API com a configuracao
	[Documentation]   Funcao responsavel por configurar a conexao com a API
	[Arguments]   ${nome_json}
	${json_file_configuracao}=   Get File Json   ${nome_json}
	Set Test Variable   ${json_file_configuracao}
	Log   ${json_file_configuracao}
	${token}=   Get Token Basic   ${json_file_configuracao}
	${header}   Create Dictionary   Authorization= Bearer ${token}   Content-type=${json_file_configuracao["contentType"]}
	Create Session   ${json_file_configuracao["session"]}   ${json_file_configuracao["url"]}   headers=${header}
	Log   ${token}


Get Token Basic
	[Arguments]   ${json_file}
	${header}      Create Dictionary   Content-type=${json_file_configuracao["contentTypeAuth"]}
#	${data_auth}   Create Dictionary   username=${json_file_configuracao["username"]}   password=${json_file_configuracao["password"]}
	${data_auth}=   Get Auth Credentials
	Create Session   ${json_file_configuracao["sessionAuth"]}   ${json_file_configuracao["url"]}   headers=${header}
	${response_auth}=   Post Request   ${json_file_configuracao["sessionAuth"]}   ${json_file_configuracao["uriAuth"]}   data=${data_auth}
	Should Be Equal As Strings    ${response_auth.status_code}    200
	${token}=   Get From Dictionary   ${response_auth.json}   token
	Log   ${response_auth}
	[Return]	  ${token}

Get File Json
	[Arguments]   ${nome_aquivo}
	${arquivo}	  Get File   ${EXECDIR}/resources/data/${nome_aquivo}
	${json}		  Evaluate	 json.loads($arquivo)	json
	[Return]	  ${json}
	