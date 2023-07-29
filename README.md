<h1>Projeto de Automação de Teste com Robot Framework e Java</h1>

<p align="center">
<img src="https://img.shields.io/static/v1?label=java&message=11&color=turquoise&style=for-the-badge&logo=oracle"/>
<img src="https://img.shields.io/static/v1?label=maven&message=3.9&color=crimson&style=for-the-badge&logo=apachemaven"/>
<img src="https://img.shields.io/static/v1?label=robot&message=framework&color=yellow&style=for-the-badge&logo=robotframework"/>
</p>

>Status do Projeto:  :heavy_check_mark: Em melhoria

### Tópicos
:small_blue_diamond: [Descrição do Projeto](#descrição-do-projeto)
:small_blue_diamond: [Detalhes tecnicos](#detalhes-tecnicos)
:small_blue_diamond: [Funcionalidades](#funcionalidades)
:small_blue_diamond: [Pré-requisitos](#pré-requisitos)
:small_blue_diamond: [Como executar](#como-executar)

## Descrição do projeto

<p align="justify">

    Projeto de exemplo com testes de API utilizando o RobotFramework com Java e Maven

</p>

## Detalhes tecnicos

<p align="justify">

   Embora o Robot Framework seja baseado em Python, ele pode ser usado para testar aplicações em Java. Para testes de interface do usuário em aplicações web, utilizamos a biblioteca SeleniumLibrary junto com o WebDriver do Selenium. O WebDriver do Selenium suporta navegadores como Chrome, Firefox e Safari, permitindo que os testes de interface do usuário sejam executados em qualquer navegador suportado.
   Para testar APIs ou serviços, utilizamos a biblioteca RequestsLibrary do Robot Framework.
   Além disso, o projeto está configurado para usar o plugin Maven do Robot Framework. Isso permite que os testes do Robot Framework sejam executados como parte do ciclo de vida de construção do Maven. Isso é especialmente útil para integração contínua/entrega contínua (CI/CD), onde você pode querer executar seus testes automaticamente como parte do seu pipeline de construção.
   
</p>

## Funcionalidades

- :heavy_check_mark: AddProduct


## Pré-requisitos

:warning: [Java 11](https://www.oracle.com/java/technologies/javase/jdk11-archive-downloads.html)
:warning: [Maven](https://maven.apache.org/download.cgi)
:warning: [RobotFramework](https://robotframework.org/)


## Como executar

Para executar o RobotFramework com Maven utilizar o commando abaixo:

``````
mvn robotframework:run -Dincludes=Nome_Tag
``````

## URLs de apoio

Links com a documentação do framework

- [Robot Framework HttpRequestLibrary](https://repo1.maven.org/maven2/com/github/marketsquare/robotframework-httprequestlibrary/0.0.19/robotframework-httprequestlibrary-0.0.19.html)
- [Robot Framework Maven Plugin](http://robotframework.org/MavenPlugin/run-mojo.html)