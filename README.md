Pasos para deploy:

crear app rails modo api
   ```bash
rails new chatzia_api --api -d postgresql
bundle install
rails db:create db:migrate db:seed
rails server
   ```

#scaffolds
   ```bash
rails generate scaffold User email:string
rails db:migrate
   ```

Un usuario puede tener varios agentes
Todo agente pertenece a un usuario.

Crear el Agente

   ```bash
rails generate scaffold Agente name:string user:references channels:string status:integer
rails db:migrate
   ```
Crear la onversacion
   ```bash
rails generate scaffold Conversation user:references agente:references duracion:integer resumen:text
rails db:migrate
   ```

Crear los mensajes
   ```bash
rails generate scaffold Mensaje contenido:text user:references agente:references conversation:references
rails db:migrate
   ```
Creasr kis okanes
   ```bash

rails generate scaffold Plan name:string price:integer message_limit:integer chatbot_limit:integer
rails db:migrate
   ```

Creae
   ```bash
rails generate scaffold Faq agente:references question:string answer:string
rails db:migrate
   ```
bsfdzbzbdf
   ```bash
#añadir las claves ajenas y completar los modelos para integridad
rails generate migration AddDetailsToUsers
   ```

Haer el commit en Github   
   ```bash
git remote add origin https://github.com/chatziaai/chatzia_api.git
git add .
git commit -m "cc"
git push --set-upstream origin main

   ```



