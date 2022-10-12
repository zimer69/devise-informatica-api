
![Devise_Informática_API](https://user-images.githubusercontent.com/104525881/195370591-ff0416bd-dd72-4794-ba99-d8a846d0064b.png)


Aplicativo web desenvolvido para que usuários possam efetuar pedidos de compra de computadores. Apenas os pedidos que respeitarem as restrições de montagem serão adicionados à base de dados.


## Documentação da API


#### Como instalar

```
  > Clone este repositório
  $ git clone git@github.com:zimer69/devise-informatica-api.git
```
```
  > Entre no repositório
  $ cd devise-informatica
```
```
  > Instale as dependências
  $ bundle install
```
```
  > Rode as migrações
  $ rails db:migrate
```
```
  > Inicie o aplicativo
  $ rails server
```
## Funcionalidades

![devise informática](https://user-images.githubusercontent.com/104525881/195373654-d3c0f690-9a5e-447c-a66b-080aa349a8ff.png)

- Na página inicial o usuário deve efetuar o seu registro na plataforma com nome, e-mail e uma senha. O sistema de usuário foi gerado através da gem Devise.
- Um novo usuário é criado com um token de autenticação JTI (utilizando a gem devise-jwt)
- Modo tela cheia
- Após o registro, o usuário tem a opção de criar um novo pedido:

![devise informática2](https://user-images.githubusercontent.com/104525881/195374794-80b101b1-9b57-477e-98c5-5e50a1565aa4.png)

![image](https://user-images.githubusercontent.com/104525881/195375177-766093ca-2c9d-4ecb-996e-fb1179607c3d.png)

- Caso o usuário respeite as restrições de montagem, a página é redirecionada exibindo o pedido realizado e o pedido é salvo na base de dados como um arquivo JSON.
- Caso o usuário envie um pedido incorreto, a página exibe um arquivo JSON evidenciando qual foi o erro na montagem.

## Autores

- [Dimitri Zimermann](https://www.github.com/zimer69)


## Stack utilizada

Ruby on Rails

## Estilização

HTML | Sass

## Gems

Devise | devise-jwt
