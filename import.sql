USE kb_erros;

INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('O aumento da capacidade de armazenamento', 'Procedimentos', '', 'Aumente no quotas no JCA
Procure por disk
Verifique se o servidor que ele está alocado possui espaço para tal aumento');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Comando para verificar o servidor:', 'Procedimentos', '', 'df -h /vz
Se o cliente pede muito espaço valide antes se é necessário
Aumentar para um tanto especifico por exemplo 500gb
Informar que caso necessite de mais espaço, antes de chegar no limite, o senhor pode realizar nova solicitação de aumento.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Transformar o usuário em root', 'Procedimentos', '', 'Perguntar qual ambiente o cliente deseja
Importar
Selecionar o arquivo “root-addon”
Selecionar o nome do ambiente desejado
Nodo desejado
Algo relacionado a root:
O acesso root por padrão não é liberado nas instancias, salvo em VPSs onde o Usuário root é o padrão. O acesso root por padrão nao é liberado nas instancias, salvo em VPSs onde o Usuário root é o padrão.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Questionamento de SO', 'Procedimentos', '', 'SO padrão das instâncias criadasé almalinux
Caso precise de um Ubunto como SO base ou outra SO, o senhor precisará criar uma VPS Ubuntu ou outra desejada.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente dúvida ssh porta 22', 'Procedimentos', '', 'O acesso ssh na porta 22 é permitido apenas para rede local.
Caso o senhor precise acessar externamente, é possivel acessar via Gate, como mostrado no seguinte Doc:
https://docs.saveincloud.com/docs/opcoes-globais/ssh-gate
Ou caso precise de outro tipo de acesso, recomendo verificar na documentação oficial do serviço ssh, não esquecendo de realizar a liberação do firewall na instancia.
Cliente informa que não precisa ser 22, pode ser qualquer um:
será necessário liberar a porta no firewall, e após liberação, o senhor precisa configurar o serviço do ssh de acordo com a necessidade do acesso.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('(Cliente) Como Eu acesso via ftp pra fazer o upload dos arquivos?', 'Procedimentos', '', 'O senhor pode realizar a configuração do SFTP para acesso direto as instancias.
https://docs.saveincloud.com/docs/opcoes-globais/acesso-sftp
Acesso direto utilizando senha, via Cliente FTP só é possível caso a instancia possua o add-on FTP instalado, e o mesmo necessita de IP público para que o acesso funcione. Por questões de política de segurança, o IP público não é disponibilizado para contas teste.
Não é possível o acesso sem a chave
Mesmo com uma conta ativa, o recomendado sempre será utilizar o SFTP, com a autenticação via chave para aumentar a segurança do ambiente e do acesso externo.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Dúvidas sobre a conta teste', 'Procedimentos', '', 'A conta teste possui um limite de uso de até 14 dias.
Caso o usuário deseje, é possível realizar a ativação da conta a qualquer momento dentro desses 14 dias.
A recarga mínima para ativação da conta é de 50 Reais.
Esse valor ficará em sua conta como saldo para utilização.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Problema de proxy reverso NGINX', 'Procedimentos', '', 'Perguntar a IA se o problema da log está relacionado ao proxy reverso, geralmente é necessário criar uma .conf com as configurações de apontamento necessárias no diretorio, para o NGINX funcionar.
Muitos clientes utilizam um nginx para fazer o proxy para diversos serviços diferentes dentro de uma mesma instancia, então se ele utilizar um domínio diferente para cada serviço e não configurar o bloco 443 dentro de um arquivo.conf separado, vai cair no catch-all do ssl.conf e ser redirecionado para a instancia que estiver no proxy_pass');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Restrição de quem acessa somente a um ip fixo da empresa', 'Procedimentos', '', 'Cliente pode fazer via Windows Defender Firewall, dentro da própria VM
(Cliente) Não tem uma opção via painel?
Caso queira via painel, você poderia estar utilizando um NGINX e configurar um stream para fazer o redirecionamento para o Windows. Dessa forma, você pode fazer o gerenciamento de acesso no firewall da plataforma.
(Cliente) O serviço terá mais custo?
Tudo isso é caso o cliente queira configurar via painel:
sim, porém o custo não aumentará significativamente, pois o NGINX consome pouco disco, pouco recurso de processamento e o tráfego via rede privada (entre as instâncias) é gratuito.
Claro, caso o NGINX venha a receber muitas requisições e precise gastar mais recursos, o custo será maior.
O modelo de cobrança das instâncias baseadas em linux é conforme utilização, isto é, pagará apenas pelo que estiver usando no momento (cobrança feita por hora)
Cliente pode fazer um teste e monitorar os gastos via histórico de faturamento
Documentação sobre a configuração de stream no NGINX: https://docs.saveincloud.com/docs/ambientes/tipos-instancias/load-balancer/nginx/tcp-udp
Windows Defender Firewall: https://docs.saveincloud.com/docs/ambientes/tipos-instancias/vps/windows/firewall (recomendado consultar a documentação oficial da microsoft)');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Atualização versão antiga de so e firebird', 'Procedimentos', '', 'Para fazer tais atualizações sem arriscar a quebra do Sistema/Serviço do Firebird, e evitar a perda de dados, será necessário realizar a criação de novos ambientes contendo as versões do Ubuntu e Firebird desejados.
Mesmo criando outro ambiente, o senhor consegue realizar o mantenimento de IPs (Por meio de transferencia), e no tocante a senha (Para que não seja necessário realizar a troca da string de conexão), é possível trocá-la via comando para que a senha se mantenha a mesma que o ambiente anterior.
Caso pergunte sobre o ip:
A troca dos IPs deve ser feita diretamente via API da plataforma, já que não há opção de troca via dashboard.
Porém, a mesma pode ser feita rapidamente, logo após a finalização da preparação do novo ambiente atualizado.
https://docs.jelastic.com/api/');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Problema de disco não altera na plataforma', 'Procedimentos', '', 'comando a ser utilizado em seu nodo:
vzctl set 177985 --save --diskspace 100G
verificar o que está consumindo o armazenamento
df -ih');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente alega desligar uma instância sozinha.', 'Procedimentos', '', 'Quando o senhor a desliga através do ssh, a plataforma automaticamente “percebe” que a instancia está desligada e realiza o início do container, já que o ambiente se encontra como ligado.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Orientações', 'Procedimentos', '', 'Caso o senhor queira, é possivel remover a instancia pelo gerenciador de topologia, atentando-se para remover apenas a instancia desejada e evitar a perca de dados.
Atenção toda exclusão de instancia é permanente.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente fala de configurar um acesso de uma aplicação EXE no banco de dados para não consumir trafego pela saveincloud.', 'Procedimentos', '', 'R: A comunicação entre o Banco e o Exe, estando na mesma máquina, não são cobrados.
O exe comunica com o banco em localhost?
Cliente comenta "sobre consumo de trafego em média 20 Giga por dia … para acesso via terminal 40 usuários media, está muito alto"
Valor de tráfego está normal para 40 Usuários conectados no TS.
Dividindo o consumo, temos em média um consumo de 500MB de banda usuário/dia
Levando em consideração o período da jornada de trabalho de 8h, equivalem a 62,5MB por hora, para cada usuário.
Em uma conexão RDP padrão, são utilizados entre 100kbps a 300kbps, a depender da atividade, em uma hora, são gerados de 45MB a 135MB.
20GB de tráfego para 40 usuários, significa um uso moderado, sem uso intenso, como vídeos ou outras atividades entre o PC local e a VM (Conexão RDP)');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Problemas de conexão de rede', 'Procedimentos', '', 'Perguntar se está tendo lentidão no momento
Como está ocorrendo essa lentidão/queda?
Se for problema no banco, realizar a inspeção dentro da instância do banco');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Banco de dados está sofrendo quedas', 'Procedimentos', '', 'Como os senhores acessam o banco de dados?
Existe alguma conta teste, e um teste que possamos realizar para testarmos do nosso lado?
Como a app do Timoneiro se comunica com o Banco, seria via IP privado mesmo?
Onde posso verificar as configurações do banco e de conexão?
A lentidão no acesso, seria do acesso direto ao banco de dados, ou no processamento das requisições vindas de alguma aplicação?');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Diagnóstico Contínuo(quedas):', 'Procedimentos', '', 'ping
mtr -rw [ip_ou_dominio]
(Se houver perda de pacotes (Loss%) logo nos primeiros saltos, o problema costuma ser no host ou no switch virtual. Se for em saltos distantes, é um problema de rota na internet.)
ping -D [ip_destino]
Útil para deixar rodando e registrar exatamente quando a queda ocorreu.
ping -i 0.2 [ip]
Para um ping mais rápido (agressivo) para capturar micro-quedas (requer root).');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Resolução de DNS', 'Procedimentos', '', 'nslookup dominio.com
Falha de DNS (O "Query time". Se estiver muito alto ou der timeout, o problema é o servidor DNS configurado no /etc/resolv.conf.)');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Site não abre', 'Procedimentos', '', 'curl -I http://dominio.com
Verificar se o serviço HTTP responde.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente gostaria de modificar página de erro 502', 'Procedimentos', '', 'Necessário utilizar um domínio próprio e desativar o acesso via SLB
Essa página é gerada automaticamente pela plataforma, no SLB.
Para uso de domínio próprio, precisará de uma instancia do load balancer com um endereço IP para receber as requisições.
Sendo possível configurar as respostas para acesso diretamente no Nginx, sem que as mesmas passem pelo SLB da plataforma.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Mudando IPs de saída pelo CPanel e CWP - Bloqueio do Ip de saída (E-mail)', 'Procedimentos', '', 'https://treinamento.suporte.sic.tec.br/docs/hospedagem-de-sites-dns/mudando-ips-de-saida-pelo-cpanel-e-cwp/');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Acessar o CPanel do cliente', 'Procedimentos', '', 'Acessar o terminal
Realizar o seguinte comando:
chattr -i /etc/mailips
nano /etc/mailips
Procurar pelo dominio do cliente
Utilizar um ip disponível e realizar a troca do ip de saída
salvar
chattr +i /etc/mailips');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Acessar o CWP do cliente', 'Procedimentos', '', 'Acessar o FileManager
Caminho etc/postfix/main.cf (botão direito, editar conteúdo)
Dentro do main.cf localizar o parâmetro smtp_bind_address.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente pede ajuda para liberação de porta no firewall', 'Procedimentos', '', 'Segue um link que pode lhe ajudar:
https://www.innov4web.pt/knowledgebase/49/Abrir-portas-no-Windows-Server-2012-2016-2019-and-2022.html');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente pergunta sobre limite de nodes', 'Procedimentos', '', 'Pode ter até 48 nodes por ambiente
16 nodes dentro de uma mesma camada
Possível verificar em saldo/limites e preços/limites de conta');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Aumentar limite de cloudlets e armazenamento', 'Procedimentos', '', 'Se for muito, perguntar qual a finalidade.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Ativar licença VM Windows', 'Procedimentos', '', 'CTID =
Ambiente =
User ID (proprietário) =
Windows = versao
usernode =
enviar para equipe infra');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Verificar os processos do cliente, possível sobrecarga de memoria', 'Procedimentos', '', 'll | wc -l');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Verificar conexões ativas', 'Procedimentos', '', 'Possível ataque via ssh');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Listagem de processos organizados em uso de processamento', 'Procedimentos', '', 'ps aux --sort -pcpu');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Comando para verificar os IPs conectados', 'Procedimentos', '', 'netstat -t');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente deseja desativar o acesso SSH', 'Procedimentos', '', 'Todas as ações, até mesmo o deploy que realiza na instância, utiliza conexões SSH com a instancia para execução dos comandos necessários para a conclusão do deploy.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente pode modificar o firewall para apenas local network', 'Procedimentos', '', 'Para local network, os acessos seriam restritos para a infra, ou a partir de outros ambientes presentes em sua conta');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('DNS reverso:', 'Procedimentos', '', 'https://treinamento.suporte.sic.tec.br/docs/uteis/criacao-de-dns-reverso/');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Realização de apontamento do MX para o endereço do servidor', 'Procedimentos', '', 'Caso não possua acesso ao CWP de gerenciamento, precisarei que nos envie um email para suporte@saveincloud.com solicitando novas credenciais.
Assim posso realizar a alteração de uma nova senha e enviá-la como resposta.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Explicação de apontamento', 'Procedimentos', '', 'CWP Control
Funções DNS
Editor de zona DNS
Selecione um domínio
Coloque seu domínio');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Após isso:', 'Procedimentos', '', 'Podemos então modificar o apontamento MX existente, e criar um mail para o domínio.
Em adicionar registro coloque MX Mail Server
Em nome do Registro digite: @
Nome do servidor: dominio.com
TTL deixe vazio.
e em prioridade, digite 0.
Dessa maneira, o DNS avisará para todos que enviarem mensagem para @dominio.com que o servidor de e-mail está localizado em mail.dominio.com');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Novamente selecione adicionar registro. mas dessa vez selecione A -IPv4 Address', 'Procedimentos', '', 'nome de registro: mail
endereço: seuip
TTL: 14400');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente com problema da própria aplicação ou arquivo/administração de ambiente', 'Procedimentos', '', 'A administração do ambiente é por conta do cliente, não realizamos gestão ou analises dessa natureza.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Configuração de email tatransportes', 'Procedimentos', '', 'Sempre que a configuração solicitar um endereço de entrada/saída, deve utilizar o endereço: server8.pureteserver.com
O tipo de conexão deve ser IMAP, para não afetar a sincronização do servidor.
SMPT: porta 465 / IMAP: porta 993
caso uma não funcione, utilize a outra:
Nome de utilizador: O seu endereço de e-mail
Servidor de entrada: server8.pureteserver.com
Porta IMAP: 143
Servidor de saída: server8.pureteserver.com
Porta SMTP: 25
Nome de utilizador: O seu endereço de e-mail
Servidor de entrada: server8.pureteserver.com
Porta IMAP: 993
Servidor de saída: server8.pureteserver.com
Porta SMTP: 465
Tipo de Criptografia nos dois (IMAP e SMPT): SSL/TLS');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Exemplo de mail.nascimetal.com.br com SSL/TLS', 'Procedimentos', '', 'Username: Your Email Address
Incoming Server: mail.nascimetal.com.br
IMAP Port: 993
POP3 Port: 995
Outgoing Server: mail.nascimetal.com.br
SMTP Port: 465');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Non-SSL/TLS', 'Procedimentos', '', 'Username: Your Email Address
Incoming Server: mail.nascimetal.com.br
IMAP Port: 143
POP3 Port: 110
Outgoing Server: mail.nascimetal.com.br
SMTP Port: 25');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Snapshot', 'Procedimentos', '', 'https://treinamento.suporte.sic.tec.br/docs/snapshots-backup/processo-de-restauracao-de-snapshot/
https://billing.saveincloud.com/restore-snapshot
temos a opção do snapshot das instancias com um custo de R$80,00, que tem retenção de até 7 dias, não recuperamos pastas ou arquivos específicos, restauramos a instancia inteira a partir de uma data selecionada entre esses 7 dias.
Lembrando que o snapshot é uma imagem exata da sua instância no momento em que foi gerado, dessa forma, todo o conteúdo do seu node será sobrescrito com os dados da data que você solicitar.
Caso queira mais informações, pode acessar o link abaixo:
https://billing.saveincloud.com/restore-snapshot
é realizado no período da noite entre 19h e 23h');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('O valor abate dos créditos ou tem que fazer pagamento a parte?', 'Procedimentos', '', 'A cobrança é feita a parte, enviei a fatura via e-mail do proprietário da conta.
Apenas informando que as datas disponíveis são essas:
00/00/0000 00:00:00
Daremos início no procedimento, a instância ficará indisponível até ser finalizado.
irei informar tanto via e-mail quanto aqui quando o procedimento terminar');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente comenta que após migração o Load Average diminui/LA diminui', 'Procedimentos', '', 'o processo de migração desliga e liga a instância, pode-se perceber que após esta ação a instância realmente diminuiu o LA e isto pode estar relacionado ao fato que o desligamento zerou conexões, filas de I/O e processos em execução.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Instalação do certificado SSL/https', 'Procedimentos', '', 'Você pode realizar a instalação do Lets Encrypt e configurar o bloco 443 no nginx para receber as requisições e redirecionar para o IP interno conforme faz via HTTP
Veja a nossa documentação sobre este processo: https://docs.saveincloud.com/docs/ambientes/tipos-instancias/load-balancer/nginx/http');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente questiona limite de DNS no certificado SSL', 'Procedimentos', '', 'Esse limite é do próprio Let’s Encrypt, esse limite não pode ser alterado, pois é uma regra da autoridade certificadora.
(cliente) existe solução alternativa?
Os dns são todos do mesmo domínio base?');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Se sim', 'Procedimentos', '', 'Wildcard DNS
Pode criar um nginx em um ambiente novo e apenas gerar o SSL e configurar os proxys.
Basta eu configurar no IIS e apontar o DNS para lá? Se eu fizer isso não vai conflitar com o Let´s Encrypt?
Isso depende de onde o SSL do Let’s Encrypt está sendo utilizado atualmente.
Caso o wildcard seja instalado diretamente no IIS enquanto o LB continuar tratando o HTTPS, pode haver sobreposição de configuração, uma dupla terminação SSL talvez.
(Cliente) Posso configurar um Let´s para cada VM e remover ele do LB?
Para o caso não é o ideal, pois precisa o IP do LB recebe as conexões, e com isso o certificado precisa estar no LB.
Como todos os subdomínios pertencem ao mesmo domínio base, a solução mais adequada é utilizar um certificado wildcard. Esse modelo cobre todos os subdomínios com um único certificado e simplifica a gestão e a renovação do SSL.
Solução instalar o wildcard no Load Balancer (NGINX), manter os registros DNS apontando para o IP do Load Balancer e deixar os servidores IIS respondendo internamente via HTTP.
Cliente, deve emitir o wildcard, instalar no LB, validar as conf, recarregar o nginx e manter o dns apontando para o LB. Você pode ir realizando o processo, e tirando duvidas aqui.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente pergunta sobre preço da licensa do Windows que aparece gratuito', 'Procedimentos', '', 'Apenas a orquestração das VMs da plataforma pelo painel que não tem custo algum, porém a licença é um preço fixo da propria Microsoft, que seria as licenças aplicadas nas VMs durante a criação das mesmas.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('É possível criar VPS sem licensa?', 'Procedimentos', '', 'Todas as máquinas fazem cobrança de licença atualmente, não é possivel utilizar sem');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente reclama do site ficar inseguro, custom ssl ativo', 'Procedimentos', '', 'SSL personalizado está ativo, clique para desativar o ssl personalizado.
Necessário desativar, caso deseja usar Lets Encrypt
Está dando erro
Adicione seu domínio no campo de configure, conforme a documentação apresenta, separando por virgula sem espaço (dominio1, dominio2)
Cliente reclama que ainda aparece como não seguro, mesmo após
Peça para limpar cache');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Problema de compartilhamento de pasta no nextcloud', 'Procedimentos', '', 'Adicionou essa pessoa faltante? Para que tivesse permissão de ver a pasta?
Foi realizado a sincronização em outra máquina?
Teria alguma credencial de acesso para verificação do nosso lado.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Erro ao abrir o outlook', 'Procedimentos', '', '"Não é possível iniciar o Microsoft Outlook. Não é possível abrir a janela do Outlook. Não é possível abrir o conjunto de pastas. Falha na tentativa de logon no Microsoft Exchange."
verifique se abre assim outlook.exe /safe
Algum suplemento do Outlook pode estar atrapalhando a inicialização, já que o programa abriu em modo safe.
Seria necessário que verificasse se algo extra foi instaladado no outlook em
Arquivo > Opções > Suplementos.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente reclama de cobranças a mais', 'Procedimentos', '', 'Verifique o saldo
É possivel observar um aumento no consumo para o salto de faturamento,
Foi utilizado mais tráfego, alem da diferença dada em disco e recursos computacionais');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente período de teste / Conta nova', 'Procedimentos', '', 'Vejo também que a sua conta é nova em nossa plataforma, você passou pelo nosso time comercial? acredito que eles podem tirar algumas dúvidas referente à preço, apresentação da plataforma e também entender sobre a sua necessidade.
Não é possível criar uma instância firebird nesse período, você precisaria realizar uma recarga de R$50,00 para converter a conta');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Exclusão de nó da topologia', 'Procedimentos', '', 'Remover na topologia, o nó que aparenta ser a raiz da estrutura, não irá afetar de alguma forma os outros nós?
Não');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Problema no firebird no docker', 'Procedimentos', '', 'Verificar se a tag da imagem está errada
a estrutura é assim
repositorio/imagem:tag
tag geralmente: firebird:v5.0.0');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente comenta sobre armazenamento de disco que foi realizado um resize Windows Server', 'Procedimentos', '', 'Verificar o tamanho do disco via ssh acessando o nodo do cliente
Procurar pelas logs de audit
Verificar logs do jem
Pedir para o cliente ajustar pelo painel para o tanto informado que utilizava.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Subir o arquivo de banco de dados na plataforma', 'Procedimentos', '', 'Procurar o container e diretórios utilizados
Copie o arquivo.fdb para o diretório /home/firebird (diretório desejado)
Você pode fazer a transferência via SFTP, segue a nossa documentação sobre: https://docs.saveincloud.com/docs/opcoes-globais/acesso-sftp
O senhor pode realizar a configuração do acesso SFTP à instancia, e utilizar o Filezzila ou o WinSCP para realizar a cópia do arquivo para a instancia.
Caso o arquivo que queira subir possua menos que 200mb, é possivel adicionar diretamente pelo painel, caso contrário, a única maneira será pelo SFTP.
Cliente deve acessar as configs root diretorio no qual deseja enviar o arquivo
pasta selecionada/engrenagem/enviar');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente quer excluir um ip sujo da plataforma', 'Procedimentos', '', 'A maneira recomendada de realizar o mesmo é utilizar a API para trocar esse ip com um novo ambiente, e posteriormente excluir/remover o IP desse segundo ambiente.
Mesmo o IP sendo o principal, é possível realizar a movimentação através dos endpoints da API. recomendo a troca, ao invés da movimentação objetiva, pois se ocorrer algum erro, o IP ficará entre seus ambientes, podendo ser devolvido.
realizar a criação de um token de API
Settings/access tokens/generate
Selecione API Access e generate
Template para requisição:
https://app.jelastic.saveincloud.net/1.0/environment/binder/rest/moveextips?envName=[NOME_AMBIENTE]&session=[TOKEN]&sourceNodeId=[ID_NODE_FONTE]&targetNodeId=[ID_NODE_DESTINO]&ips=[IP_A_SER_MIGRADOS]
Essas são as informações que irão construir a requisição:
[NOME_AMBIENTE] = Nome do ambiente
[TOKEN] = Token da API
[ID_NODE_FONTE] = Node ID da Instancia que atualmente possui o IP
[ID_NODE_DESTINO] = Node ID da Instancia que irá receber o IP na troca
[IP_A_SER_MIGRADOS] = IP com pontos a ser migrado');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Espaço em disco disponível', 'Procedimentos', '', 'Ao passar o mouse por cima do icone de disco, ele mostrará o espaço Utilizado e o Alocado
A outra maneira seria executar o comando du -h no webSSH:
du = Disk Usage
caso queira ver o Livre: df -h');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Sem acesso SSH', 'Procedimentos', '', 'Verificar se mexeu na authorized_keys
ls -la /root/.ssh
Caso mexa:
Verifiquei que foi removida o conteudo da authorized_keys que é a chave usada para acesso da plataforma
vamos ver se conseguimos restaurar a chave, mas não é garantido
Como ocorre a exclusão?
possivelmente foi removido durante as configurações que foi feita nesta instancia, levando em consideração que tem outras chaves personalizadas dentro do mesmo diretório.
é feito por humano?
Sim, está ação não é feita de outra maneira.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente informa que não possui acesso ao ssh (utilizando Node.js)', 'Procedimentos', '', 'Explorar arquivos/possível ataque
lsof -p [PID]
Lista todos os arquivos abertos por um processo especifico.
Exemplo da última vez:
Identificamos que o ambiente foi alvo de exploração da vulnerabilidade conhecida como React2Shell, que permite a execução remota de comandos em aplicações baseadas em Next.js quando determinadas falhas de segurança estão presentes.
A partir dessa exploração, o invasor conseguiu obter acesso remoto ao servidor e executar comandos no sistema, caracterizando um cenário de RCE.
Durante a análise, foi verificado que um processo malicioso chamado "." foi criado e configurado para execução automática via crontab, com o objetivo de manter persistência no ambiente e garantir que o acesso continuasse mesmo após reinicializações ou interrupções. Para localizar o arquivo e validar a origem do processo, realizamos acesso ao ambiente com o usuário de sistema e navegamos até o diretório onde o script estava armazenado utilizando os comandos de acesso ao shell e mudança de diretório até o caminho /var/ftp/ROOT e /home/jelastic.
Como ação imediata de contenção, não realizamos a exclusão de arquivos para preservar evidências e permitir uma análise mais aprofundada posteriormente, caso necessário. Em seguida, removemos as permissões de execução do arquivo malicioso para impedir sua continuidade e, após isso, o processo ativo foi finalizado por meio de término forçado (kill -9), interrompendo a atividade indevida.
Recomendamos a atualização da aplicação e de todas as dependências para versões seguras, revisão das configurações de segurança e acessos, análise detalhada de logs, rotação de credenciais e chaves e uma verificação completa de integridade do ambiente para garantir que não haja outras formas de persistência ou comprometimento.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Lembre se também de ativar o 2FA de sua conta para manter uma segurança maior.', 'Procedimentos', '', 'Deve se atualizar o Node.js, a atualização é essencial porque apenas remover o processo malicioso ou limpar permissões não resolve a causa raiz. Se o sistema continuar na versão vulnerável, o ambiente pode ser explorado novamente da mesma forma. O ideal é atualizar para a versão mais recente estável, revisar também as bibliotecas do projeto (especialmente React, plugins e middlewares) e validar se não existem endpoints expostos ou configurações inseguras.
Além disso, é recomendável revisar logs para identificar o vetor inicial do ataque, aplicar boas práticas como WAF, restrição de acesso administrativo, variáveis de ambiente protegidas e rotação de credenciais. Isso reduz significativamente o risco de novos incidentes.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente informa que está com problemas de implantação no arquivo war(tomcat) só carrega', 'Procedimentos', '', 'Verifique as logs na aplicação:
tail -n 30 jem.log
Realize um teste com o jar para verificar a integridade do arquivo, e verifique o erro.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente deseja atualizar o ubunto 20.04 para 24.04', 'Procedimentos', '', 'No momento, a plataforma não possui suporte ao Ubuntu 24.04 e 26.04 mesmo, porém você pode utilizar a imagem dessa versão do Ubuntu via Docker Engine CE, fazendo o docker pull da imagem e depois subindo o container.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente comenta que não possui diretorio de backup_script.sh em seu banco de dados', 'Procedimentos', '', 'O script acompanhas as instancias baseadas na imagem da jelastic somente, como o senhor realizou a instalação em uma VPS, do zero, a mesma não possui o script inserido nos diretórios.
é necessário que alguns caminhos sejam iguais ao que estão presentes no script, a fim de evitar discrepâncias e erros por incompatibilidades.
BACKUPDIR=‘/var/lib/jelastic/backup’
LOG_FILE=“/var/log/mysql/logdb_bckp.log”;
SOCKET=‘/var/lib/mysql/mysql.sock’;
EXCLUDE=(‘information_schema’);
A maneira mais rápida seria utilizar o próprio terminal do mysql, com a seguinte consulta:
SHOW VARIABLES LIKE ‘socket’;');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente fala que o site está fora do ar', 'Procedimentos', '', 'O site do senhor está atrás de um proxy?
Por onde o senhor realiza o gerenciamento do site?
Se o site não estiver conosco, mas em um provedor terceirizado, verificar com o provedor do site.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente pede uma redefinição de senha para seu e-mail', 'Procedimentos', '', 'Solicitar via e-mail
Verifique o e-mail dando um ping mail.dominio
Certifique para onde está apontando e acesse');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente fala sobre senha do root da VM', 'Procedimentos', '', 'VPSs não precisam de senha para o Root.
O usuário root já é o padrão da VM.
Mas caso queira realizar a configuração/mudança da senha root, o senhor pode utilizar o comando passwd');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente pergunta os motivos de quedas de determinado dia', 'Procedimentos', '', 'Que tipo de queda foi identificada por vocês?
Verifique as estatísticas, caso tenha algo nas estatísticas:
Vejo pelas estatísticas de vocês que houve uma queda no uso de recursos da sua VM, isso pode se tratar de um processo que consome bastante recurso e por ventura acabar consumindo menos, como a falha de um serviço em execução dentro da VPS, por exemplo. No entanto, o cliente é responsável por fazer o gerenciamento dos serviços e a sua execução dentro da VPS.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente informa que está recebendo alertas no e-mail de sua instância', 'Procedimentos', '', 'Verifique se o alerta está configurado no ambiente do cliente
Configurações/Alertas de Load/ Verificar RAM/CPU se está acima do normal');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente pergunta sobre a expiração de senha', 'Procedimentos', '', 'O aviso de expiração de senha é feito a cada 180 dias');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente não consegue adicionar mais instâncias em seu ambiente', 'Procedimentos', '', 'Verifique se não está em conta teste
Necessário mudar para biling_v2');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente informa que não consegue reimplantar o container', 'Procedimentos', '', 'Qual mudança, está tentando fazer?
Possível que algum arquivo está lockando o serviço
Tentar reiniciar o nodo pelo nosso lado.
Peça um print de como está fazendo a implementação.
criar um novo e migrar aplicação');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente quer criar uma PrivateKey para colocar no N8N', 'Procedimentos', '', 'Para configurar a Private Key no n8n, você precisa.
Gerar uma chave SSH (isso criará uma chave privada e uma chave pública).
Adicionar a chave pública no servidor (no arquivo de autorização SSH).
Copiar o conteúdo da chave privada e colar no campo “Private Key” dentro da credencial do n8n.
Se o acesso for apenas para um banco específico, o ideal é criar um usuário próprio para isso e não utilizar o root, por questão de segurança.
Porém recomendo que verifique a documentação do próprio n8n se necessário.
https://docs.n8n.io/integrations/builtin/credentials/ssh/#using-password
ssh-keygen -t ed25519
(Gere a chave SSH usando o tipo ed25519.)
Vai criar as chaves em /root/.ssh/
(Ela será criada dentro do diretório /root/.ssh/.)
arquivo id_ed25519 -> chave privada (private key)
arquivo id_ed25519.pub -> chave pública, colocar no authorized_keys da instancia de destino (no caso do mariadb, /home/jelastic/.ssh/authorized_keys)
(Serão gerados dois arquivos:
id_ed25519 - é a chave privada (essa você vai colocar no campo Private Key do n8n).
id_ed25519.pub - é a chave pública (essa deve ser adicionada no arquivo authorized_keys da instância de destino)).
No caso do MariaDB, a chave pública deve ser adicionada em:
/home/jelastic/.ssh/authorized_keys
Depois disso, é só salvar a credencial no n8n e testar a conexão.
Verificar se é o cliente está tentando utilizar o comando no ambiente certo.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente quer alterar algo como e-mail, senha', 'Procedimentos', '', 'Alteramos no JCA
Cliente deve mandar e-mail para suporte@saveincloud.com para realizar tal alteração ou exclusão de dados');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente informa sobre erro "no free indoes"', 'Procedimentos', '', 'Tente aumentar um pouco o espaço em disco utilizado e realizar o reinício novamente.
Esse erro pode estar relacionado a um diretório com uma grande quantidade de arquivos, não em relação ao espaço consumido, mas sim com o total de arquivos em um diretório.
Seria necessário você estar verificando os diretórios e se os arquivos neles podem ser removidos.');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente quer fazer conexão com postgres', 'Procedimentos', '', 'Cliente pode usar o webSSH na própria plataforma.
Cliente quer acessar da própria maquina
Nesse caso, você pode usar o gate SSH, você pode criar as chaves utilizando o PuttyGEN e utilizar o Putty para acessar a instância.
veja a nossa documentação sobre esse processo: https://docs.saveincloud.com/docs/opcoes-globais/ssh-gate
Validando se o endereço do cara está aberto para conexão
telnet endereço do endpoint porta
echo | timeout 5 /bin/bash -c "curl -v telnet://[IP_OU_HOST]:[PORTA]"
timeout 5 curl -s telnet://[IP_OU_HOST]:[PORTA] < /dev/null && echo "Porta Aberta" || echo "Porta Fechada ou Timeout"
Problema em fazer curl performs SSL certificate verification by default, using a “bundle” of Certificate Authority (CA) public keys (CA certs).
O servidor não confia no CA do certificado SSL
Pode inserir o certificado da CA que eles usam em um arquivo.pem, depois você faz o curl --cacert arquivo.pem api.dominio.com
execute na instância esse comando
openssl s_client -connect api.ultracheck.com.br:443 -servername api.ultracheck.com.br -showcerts
pegue o segundo bloco de certificado e salve em um arquivo.pem e depois faça o curl com curl --cacert arquivo.pem api.dominio.com
Quiser contornar o uso do certificado de forma momentânea, você pode passar curl -k api.dominio.com
isso vai fazer um curl de forma insegura');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente tenta realizar acesso em um ambiente de cópia', 'Procedimentos', '', 'Utilizando no ambiente principal nc -zv ip porta (comando para estabelecer conexão) funciona, mas na cópia não
Cliente deve liberar a porta no firewall');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente informa que o e-mail é enviado, mas não é recebido', 'Procedimentos', '', 'Verificar como está configurado as portas do servidor de entrada e saída
Veja se a porta informada precise de criptografia
Tentar realizar a liberação no flush all blocks e verificar se funciona
Verificar se o e-mail está sendo enviado para outro e-mail diferente
Se estiver bloqueado deve ser feito a troca de ip de saída no cpanel');
INSERT INTO erros (titulo, categoria, descricao, solucao) VALUES ('Cliente informa que não é possível excluir/alterar o add-on de reinicio do host / não está funcionando', 'Procedimentos', '', 'Perguntar se já tentou alteração/remoção do add-on com a conta proprietária
Somente a conta proprietaria pode instalar e remover add-on
Cliente não tem acesso a conta proprietária
Deve pesquisar no jca no audit log a data que foi instalado o add-on
pesquisar em more o jps filtrado na data criada para descobrir o e-mail');
