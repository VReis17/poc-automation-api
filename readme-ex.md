# 📝 API de Geração de Arquivos de Texto com Spring Boot

## 📖 Descrição da API

Esta API permite a geração de arquivos de texto a partir de templates predefinidos. Através de endpoints REST, os usuários podem fornecer dados que serão incorporados em um modelo de texto e gerar arquivos no formato desejado.

## 🛠️ Detalhes Técnicos

- **Linguagem**: Java 17
- **Framework**: Spring Boot 3.x
- **Build Tool**: Maven
- **Banco de Dados**: H2 (para armazenamento temporário, se necessário)
- **Template Engine**: Thymeleaf / Freemarker

## 🚀 Instalação

### 📥 Clonar o repositório:

```sh
 git clone https://github.com/seu-repositorio/api-geracao-arquivos.git
 cd api-geracao-arquivos
```

### 📦 Construir o projeto:

```sh
 mvn clean install
```

## ▶️ Execução Local

Para rodar a API localmente:

```sh
 mvn spring-boot:run
```

Ou, caso tenha o `.jar` gerado:

```sh
 java -jar target/api-geracao-arquivos-0.0.1-SNAPSHOT.jar
```

A API estará disponível em: [http://localhost:8080](http://localhost:8080)

## 🌍 Deploy

### Docker 🐳

```sh
 docker build -t api-geracao-arquivos .
 docker run -p 8080:8080 api-geracao-arquivos
```

### Heroku ☁️

```sh
 heroku create minha-api-geracao-arquivos
 git push heroku main
```

## ⚙️ Variáveis de Ambiente

| Nome            | Descrição                      | Padrão       |
| --------------- | ------------------------------ | ------------ |
| `SERVER_PORT`   | Porta do servidor              | `8080`       |
| `TEMPLATE_PATH` | Caminho dos templates de texto | `templates/` |

## 🚧 Principais Problemas

### 🛑 Template não encontrado

**Erro:** `TemplateNotFoundException` **Solução:** Verifique se o template está no diretório configurado (`TEMPLATE_PATH`).

### 🔄 Problema de permissão ao gerar arquivos

**Erro:** `AccessDeniedException` **Solução:** Execute com permissões adequadas ou altere o diretório de saída.

## 🔗 Links Úteis

- 📜 [Documentação do Spring Boot](https://spring.io/projects/spring-boot)
- 🏗️ [Maven Repository](https://mvnrepository.com/)
- 📂 [Exemplo de Template com Thymeleaf](https://www.thymeleaf.org/)

---

📌 *Mantenha este README atualizado para facilitar o uso e manutenção da API!* 🚀

