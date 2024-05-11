# Modelagem de Banco de Dados - Ponderada de Programação

##### Gabriela Silva
<p>Ateliê 3 - Turma 13 </p>

#### Modelo conceitual 

&nbsp;&nbsp;&nbsp;&nbsp;Um modelo conceitual de banco de dados é uma representação abstrata e independente de software dos requisitos e estruturas de dados de um sistema de banco de dados. Ele descreve os principais conceitos e relações entre os dados, mas não está preocupado com detalhes de implementação ou com a tecnologia específica do banco de dados.
&nbsp;&nbsp;&nbsp;&nbsp;Esse modelo é criado durante a fase de projeto de banco de dados e serve como uma ponte entre os requisitos do usuário e o design físico do banco de dados. Ele ajuda a capturar a visão geral do sistema e fornece uma base para a criação de modelos mais detalhados.
&nbsp;&nbsp;&nbsp;&nbsp;Normalmente, um modelo conceitual é representado por meio de diagramas de relacionamento-entidade (ER), cujas entidades representam objetos do mundo real (como pessoas, lugares ou coisas) e os relacionamentos entre essas entidades são definidos. Atributos também estão incluídos para descrever as características das entidades.

##### Modelo conceitual da DellAware

<div align="center">
<p>Figura 1 - Modelo conceitual do bando de dados</p>
<img src="/assets/ModeloOFC.png">
<p>Fonte: Material Produzido pela Autora (2024)</p>
</div>


&nbsp;&nbsp;&nbsp;&nbsp;No contexto da aplicação web de treinamento desenvolvida para a empresa Dell, os princípios de relacionamento 1:N (um para muitos) e N:N (muitos para muitos) são fundamentais para organizar e disponibilizar os materiais técnicos, como manuais de montagem, de forma eficiente. O relacionamento 1:N é exemplificado pela conexão entre os montadores da linha de montagem com as tarefas de manuais, isso permite que várias tarefas de manuais sejam atribuídas a um montador, refletindo a distribuição dos materiais de treinamento dentro da empresa. Já o relacionamento N:N é evidenciado pela interação entre as tarefas e os manuais disponíveis, essa relação possibilita que diversos manuais façam parte de diversas tarefas de manuais, contribuindo para a delegação dos manuais pelo engenheiro.

&nbsp;&nbsp;&nbsp;&nbsp;No que diz respeito às conexões entre chaves primárias e estrangeiras, essenciais para garantir a integridade e consistência dos dados, elas refletem a estrutura de relacionamento entre os diversos elementos da aplicação. As chaves primárias, como ID_Enginner, ID_workers e ID_Manuals, identificam exclusivamente cada entidade dentro do sistema, enquanto as chaves estrangeiras, como ID_workers em uma tabela de tarefa de manuais, estabelecem as associações entre entidades, como os montadores e os manuais atribuídos a eles. Essas conexões garantem que os montadores tenham acesso aos materiais pertinentes, permitindo tanto o aprendizado específico dos processos de montagem para novos funcionários quanto a revisão e atualização dos manuais para os funcionários mais experientes, contribuindo para a disseminação eficaz de informações e o aumento da eficiência das linhas de produção da empresa.

#### Modelo Lógico 

&nbsp;&nbsp;&nbsp;&nbsp;Um modelo lógico de banco de dados é uma representação entre o modelo conceitual e o modelo físico, fornecendo uma visão estruturada dos dados que é independente de detalhes de implementação, mas mais próxima do que será implementada no sistema de gerenciamento de banco de dados ( SGBD). Ele descreve a estrutura lógica dos dados, incluindo tabelas, colunas, relações e restrições, de forma mais detalhada do que o modelo conceitual, mas sem entrar em aspectos específicos de implementação, como a escolha de índices ou otimizações de desempenho.

&nbsp;&nbsp;&nbsp;&nbsp;No modelo lógico, as entidades e relacionamentos definidos no modelo conceitual são mapeados para tabelas e associações, respeitando as regras de normalização e integridade referencial. As chaves primárias e estrangeiras são definidas para garantir a integridade dos dados e permitir a navegação entre as entidades. Além disso, são especificadas restrições de integridade, como restrições de chave única e restrições de integridade referencial, que ajudam a garantir a consistência dos dados.

##### Modelo Lógico da DellAware

<div align="center">
<p>Figura 2 - Modelo lógico do bando de dados</p>
<img src="/assets/ModeloLogico.png">
<p>Fonte: Material Produzido pela Autora (2024)</p>
</div>

&nbsp;&nbsp;&nbsp;&nbsp;O modelo de banco de dados lógico para o DellAware visa permitir que os engenheiros da fábrica deleguem manuais aos montadores das linhas de produção, eliminando a necessidade de treinamento presencial toda vez que um manual é atualizado. O modelo consiste em várias tabelas interligadas. A tabela "workers" armazena informações sobre os montadores, enquanto a tabela "enginners" registra dados dos engenheiros. A tabela "manual's tasks" é uma tabela de associação que conecta os montadores, engenheiros e manuais delegados. A tabela "manuals" contém informações sobre os manuais disponíveis, incluindo nomes, categorias e descrições. 
&nbsp;&nbsp;&nbsp;&nbsp;Por fim, a tabela "files" armazena os arquivos associados aos manuais, como formatos e nomes. Essa estrutura permite uma gestão eficiente da delegação de manuais e promove o treinamento remoto, atendendo às regras de negócio definidas para o projeto desde a primeira sprint.

#### Modelo Físico 

&nbsp;&nbsp;&nbsp;&nbsp;Um modelo físico de banco de dados é uma representação detalhada e concreta da estrutura de dados de um sistema de banco de dados, que reflete como os dados serão armazenados e organizados no nível do sistema de gerenciamento de banco de dados (SGBD) específico que será utilizado. Ao contrário do modelo lógico, que é mais abstrato e independente de implementação, o modelo físico leva em consideração aspectos específicos da tecnologia do SGBD escolhido, como tipos de dados suportados, mecanismos de armazenamento, índices, otimizações de desempenho e detalhes de implementação.

&nbsp;&nbsp;&nbsp;&nbsp;O modelo físico descreve a estrutura concreta das tabelas, índices, chaves primárias, chaves estrangeiras e outras restrições de integridade necessárias para armazenar os dados de forma eficiente e garantir a integridade dos mesmos. Ele fornece uma visão detalhada dos recursos e características específicas do banco de dados, o que facilita a implementação e manutenção do sistema. O modelo físico é desenvolvido com base no modelo lógico e nas necessidades específicas do sistema, e serve como a base para a criação do esquema físico do banco de dados durante o processo de implementação.

##### Modelo físico da DellAware

&nbsp;&nbsp;&nbsp;&nbsp; Para acessar o modelo físico do banco de dados da DellAware, acesse o arquivo .sql desse repositório.