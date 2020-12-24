<html>
<h1>Executando Metabase com Postgres no Docker</h1>
<p>
    Para esse projeto utilizei de referência a
    <a href="https://www.metabase.com/docs/latest/operations-guide/running-metabase-on-docker.html" target="_blank">
        documentação oficial do Metabase
    </a>
</p>

<hr>
<h3>Modificações realizadas:</h3>
<ul>
    <li>Definido 'America/Sao_Paulo' como timezone padrão</li>
    <li>Definido 2GB de limite de uso de memória RAM para o JVM</li>
    <li>Definido 'pt' como locale padrão</li>
    <li>Definido '/metabase/plugins' como caminho para o diretório padrão de plugins</li>
    <li>Adicionado plugins para conexão com OracleDB</li>
</ul>

<h3>Especificações dos serviços utilizados:</h3>
<table border="1">
    <tr>
        <th>
            Serviço
        </th>
        <th>
            Versão da imagem base
        </th>
        <th>
            Nome container
        </th>
        <th>
            Porta
        </th>
    </tr>
    <tr>
        <td>
            Metabase
        </td>
        <td>
            0.36.6
        </td>
        <td>
            metabase-app
        </td>
        <td>
            3000
        </td>
    </tr>
    <tr>
        <td>
            Postgres
        </td>
        <td>
            13.01
        </td>
        <td>
            metabase-database
        </td>
        <td>
            5432
        </td>
    </tr>
</table>
</p>

<hr>
<h2>Passo-a-passo para inicialização dos containers</h2>
<h3>Passo 1: Criar os volumes persistentes no servidor Docker</h3>
<p>
    <b>~$:</b> sudo docker volume create --name=volume-metabase-database </br>
    <b>~$:</b> sudo docker volume create --name=volume-metabase-app </br>
    <b>~$:</b> sudo docker volume create --name=volume-metabase-app-plugins </br>
</p>

<h3> Passo 2: Executar o docker-compose para montar os containers necessários para o funcionamento do Metabase</h3>
<p>
    <b>~$:</b> sudo docker-compose up --detach
</p>

<h3> Passo 3: Finalizar a instalação do Metabase pela web</h3>
<p>
    Exemplo de link de acesso: <a href="http://localhost:30000/setup">http://localhost:30000/setup</a>
</p>

</html>