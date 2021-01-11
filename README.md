# MariaFlix

![MariaFlix](https://www.flaticon.com/svg/vstatic/svg/3253/3253916.svg?token=exp=1610371432~hmac=cdd8bbe0ba4e0b8ada22a76174a27de5)


Projeto final do curso Maria vai com as Devs.

  - Python
  - GitHub
  - Docker
  - Postgres

# Escopo!

  - Desenvolver um repositorio de filmes e series onde seja possivel manter todos os cadastros e listar os top 5 mais assistidos do mês


Requisitos:
  - Docker
  - Python
  - Postgres
  - GitHub

 

### Configuração inicial

As tecnologias serão necessárias para inspecionar o projeto ou rodar a aplicação:

* [Pycharm] - HTML enhanced for web apps!
* [Docker] - HTML enhanced for web apps!
* [Postgres] - HTML enhanced for web apps!


### Configurar banco de dados
  - Criar o database MariaFlix:
  - Caso já exista deve deletar todas as tabelas
  - Abrir editor SQL e copiar o conteudo do arquivo backup.sql
  - Executar todo o arquivo backup.sql
  
Com essas instruções já terá dados para login, filmes e series

Modelo ER
![Imgur](https://imgur.com/9df88fad-7567-4e8d-a159-ad1cd91297a8) 


### Executar o projeto
  - Abra o caminho venv/scripts e execute o arquivo cmd.bat
```sh
$ activate
$ cd..
$ cd..
$ py manage.py runserver
```

Após o servidor iniciar...

* [localhost] - Abrir a pagina inicial da aplicação em seu navegador
  
 Login:
  - login: eho
  - senha: eli.123 

    Ao passar o mouse sobre os itens serão apresentados os detalhes.
    Em cada categoria ao clicar no link do item será incrementado como "assistido"
    
    O Top 5 será reordenado automaticamente

   [Pycharm]: <https://www.jetbrains.com/pt-br/pycharm/download/>
   [Docker]: <https://www.docker.com/products/docker-desktop>
   [Postgres]: <https://www.postgresql.org/download/> 
   [localhost]: <localhost:8000> 
