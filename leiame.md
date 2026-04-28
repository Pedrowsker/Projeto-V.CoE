Auditoria de Vendas: Consolidando Dados com Python, SQL e BI 🚀
Este projeto nasceu de uma necessidade comum em grandes empresas: unificar dados de vendas que vêm de fontes diferentes (nacional e internacional), com nomes de colunas bagunçados e moedas diferentes, para criar um relatório que realmente faça sentido.

O que eu fiz na prática:
Python (ETL): Usei o Pandas para ler vários arquivos CSV de uma vez. O script padroniza os nomes das colunas e já faz a conversão de câmbio automática para as vendas internacionais.

SQL (Auditoria): Com os dados limpos, simulei uma consulta de banco de dados para cruzar as vendas com as metas da empresa, filtrando quem realmente atingiu os resultados.

Power BI: Montei um dashboard focado em KPIs reais: Faturamento Total, Ticket Médio e performance por produto. (Tem um vídeo meu demonstrando esse painel aqui no repositório!).

VBA (Excel): Criei uma automação para aquele gestor que ainda prefere o Excel. Um botão que formata tudo e acende um "alerta" visual em vendas acima de R$ 1.000.

Como o projeto está organizado:
data/: Onde ficam os dados brutos e o arquivo final gerado.

scripts/: Onde a mágica do Python e do SQL acontece.

dashboards/: O arquivo .pbix pronto para abrir no Power BI.

vba_macros/: A planilha com o botão de automação.

Como rodar:
Execute o script Python em scripts/ para processar os dados.

O arquivo limpo vai aparecer na pasta data/processed/.

Abra o Power BI ou o Excel para ver os resultados.