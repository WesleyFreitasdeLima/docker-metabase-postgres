# Define a imagem de base
FROM metabase/metabase:v0.36.6

# Define que usário 'root' irá executar todas as instruções abaixo
USER root

# Define o diretório padrão de plguins
ENV MB_PLUGINS_DIR="/metabase/plugins"

# Adiciona o conteúdo da diretorio 'plugins' local, ao diretório 'plugins'
# da imagem de base contruida
ADD ["./plugins/*", "/metabase/plugins/" ]

# Adiciona a permissão para todos os usuário modificarem a pasta de 'plugins'
RUN /bin/bash -l -c "chmod -R a+rwX /metabase/plugins"

# Expõe a porta 3000, que é a porta padrão de execução do Metabase
EXPOSE 3000