# Use a imagem oficial do Ruby como base
FROM ruby:3.0.2

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o Gemfile e o Gemfile.lock para o diretório de trabalho
COPY Gemfile Gemfile.lock ./

# Instala as dependências do projeto
RUN bundle install

# Copia o restante do código-fonte para o diretório de trabalho
COPY . .

# Define os comandos a serem executados ao iniciar o contêiner
CMD ["rails", "server", "-b", "0.0.0.0"]

