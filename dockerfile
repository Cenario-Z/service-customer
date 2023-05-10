# Define a imagem base do Docker
FROM node:14

# Cria o diretório de trabalho da aplicação dentro do contêiner
WORKDIR /app

# Copia os arquivos de configuração do projeto para o diretório de trabalho do contêiner
COPY package*.json ./

# Instala as dependências do projeto dentro do contêiner
RUN npm install

# Copia o código-fonte da aplicação para o diretório de trabalho do contêiner
COPY . .

# Define a porta que a aplicação ouvirá dentro do contêiner
EXPOSE 3000

# Inicia a aplicação quando o contêiner for executado
CMD ["npm", "start"]
