-- Script de importacao gerado pelo convert.py

INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Guias do trabalho em geral', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Trocar/colocar e-mail para receber notificações', 'Guias', 'docx, importado', 'Importado via script', 'https://billing.saveincloud.com/support-intervention');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Limite de Armazenamento', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O aumento da capacidade de armazenamento', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Aumente no quotas no JCA', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Procure por disk', 'Guias', 'docx, importado', 'Importado via script', 'Verifique se o servidor que ele está alocado possui espaço para tal aumento');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Plataforma', 'Guias', 'docx, importado', 'Importado via script', 'Cliente está com problema de envio de email para saveincloud, porém não é problema nosso');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ele deve realizar o envio de ticket pela plataforma', 'Guias', 'docx, importado', 'Importado via script', 'Caso o senhor esteja logado na plataforma, peço por gentileza que nos envie o ticket de solicitação seguindo esse passo a passo, para que possamos confirmar a titularidade e seguirmos com o processo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Saldo - view invoices - area do cliente - tickets abrir novo ticket', 'Guias', 'docx, importado', 'Importado via script', 'Enviando o ticket dessa forma, o ticket é gerado diretamente em nosso sistema, sem a necessidade de realizar o envio da mensagem por email.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Feito alteração para', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problema de disco não altera na plataforma', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('comando a ser utilizado em seu nodo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vzctl set CTID --save --diskspace 100G', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('verificar o que está consumindo o armazenamento', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('df -ih', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Aumentar limite de cloudlets e armazenamento', 'Guias', 'docx, importado', 'Importado via script', 'Se for muito, perguntar qual a finalidade.
Cliente questiona falha de sincronização em limite de disco da instância
Pode ter ocorrido apenas uma falha na sincronização do limite de armazenamento do painel da plataforma com o espaço em disco da instância.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Comando para verificar o servidor:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('df -h /vz', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se o cliente pede muito espaço valide antes se é necessário', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Aumentar para um tanto especifico por exemplo 500gb', 'Guias', 'docx, importado', 'Importado via script', 'Informar que caso necessite de mais espaço, antes de chegar no limite, o senhor pode realizar nova solicitação de aumento.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Root', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Transformar o usuário em root', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntar qual ambiente o cliente deseja', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Importar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Selecionar o arquivo “root-addon”', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Selecionar o nome do ambiente desejado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nodo desejado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Algo relacionado a root:', 'Guias', 'docx, importado', 'Importado via script', 'O acesso root por padrão não é liberado nas instancias, salvo em VPSs onde o Usuário root é o padrão.
Gostaríamos de ressaltar que, ao assumir o controle total do sistema, a responsabilidade pela integridade das configurações, atualizações e segurança é inteiramente do usuário. Alterações que causem instabilidade ou perda de dados no sistema operacional são total responsabilidade do cliente, ciente?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente fala sobre senha do root da VM', 'Guias', 'docx, importado', 'Importado via script', 'VPSs não precisam de senha para o Root.
O usuário root já é o padrão da VM.
Mas caso queira realizar a configuração/mudança da senha root, o senhor pode utilizar o comando passwd');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Firewall', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mexeu no iptables / firewall', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ver se está escutando porta que ele usa pra conexão', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netstat -lntp | grep 27017 (porta que ele usa pra conexão)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Teste localmente na própria máquina:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('telnet localhost 27017', 'Guias', 'docx, importado', 'Importado via script', 'Se funcionar localmente, o serviço está ok.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar no firewall porta especifica:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iptables-legacy -L INPUT -n -v --line-numbers | grep 27017', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Procurar por Drop ou Reject', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iptables-legacy -L INPUT -n -v --line-numbers | egrep "DROP|REJECT"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar todos os firewall(se quiser):', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iptables -L -n -v', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iptables-legacy -L -n -v', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iptables-nft -L -n -v', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('nft list ruleset', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso exista firewalld', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('firewall-cmd --list-all', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para remover a regra:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iptables-legacy -D INPUT (Número da regra)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SSH', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja adicionar senha no acesso ssh', 'Guias', 'docx, importado', 'Importado via script', 'https://serverpilot.io/docs/guides/ssh/password-auth/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Necessário acesso root', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não está conseguindo acessar o usuário por ssh externo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar nos logs', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('grep "bad ownership" /var/log/secure', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se o usuário tem permissões:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ls -lha', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chmod 700 ~/.ssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chmod 600 ~/.ssh/authorized_keys', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chmod 750 ~', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chown -R usuario:usuario ~/.ssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja acessar o ssh em sua instância', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('é possível, via gate SSH', 'Guias', 'docx, importado', 'Importado via script', 'configs da instância / acesso SSH - comando de portas SSH: o acesso está lá');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O usuário são os números antes do @', 'Guias', 'docx, importado', 'Importado via script', 'Mas antes o senhor precisar realizar a criação de um par de chaves assimétrico e fazer o upload da chave pública na plataforma.
veja a nossa documentação sobre o SSH via gate e também sobre a criação das chaves: https://docs.saveincloud.com/cloudlets/opcoes-globais/ssh-gate');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer excluir a chave ssh privada', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Configurações / chave ssh / chaves privadas / tem X', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar a versão do ssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ssh -v', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('yum info openssh-server', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente dúvida ssh porta 22', 'Guias', 'docx, importado', 'Importado via script', 'O acesso ssh na porta 22 é permitido apenas para rede local.
Caso o senhor precise acessar externamente, é possível acessar via Gate, como mostrado no seguinte Doc:
https://docs.saveincloud.com/cloudlets/opcoes-globais/ssh-gate
Ou caso precise de outro tipo de acesso, recomendo verificar na documentação oficial do serviço ssh, não esquecendo de realizar a liberação do firewall na instancia.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa que não precisa ser 22, pode ser qualquer um:', 'Guias', 'docx, importado', 'Importado via script', 'será necessário liberar a porta no firewall, e após liberação, o senhor precisa configurar o serviço do ssh de acordo com a necessidade do acesso.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sem acesso SSH', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Deve estar configurado no arquivo a porta 22 do ssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Realizar as verificações no termius:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('service sshd status', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('service sshd start', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/usr/sbin/sshd -d (verificar suas bibliotecas se estão instaladas)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se mexeu na authorized_keys:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ls -la /root/.ssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso mexa:', 'Guias', 'docx, importado', 'Importado via script', 'Verifiquei que foi removida o conteudo da authorized_keys que é a chave usada para acesso da plataforma');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vamos ver se conseguimos restaurar a chave, mas não é garantido', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se mexeu', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cat /etc/.bash_history', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifica se os serviços estão ativos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status sshd', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status ssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Realiza o debug', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/usr/sbin/sshd -d', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique se o PermitRootLogin está no', 'Guias', 'docx, importado', 'Importado via script', 'grep -Ei "PermitRootLogin|PasswordAuthentication|AllowUsers|DenyUsers" /etc/ssh/sshd_config');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se estiver troque para prohibit-password', 'Guias', 'docx, importado', 'Importado via script', 'identificamos que a indisponibilidade de acesso SSH externo estava relacionada à configuração do arquivo /etc/ssh/sshd_config. O parâmetro PermitRootLogin estava definido como no, bloqueando o acesso direto do usuário root via SSH.
Realizamos o ajuste alterando a configuração para PermitRootLogin prohibit-password, mantendo o acesso root permitido apenas via autenticação por chave SSH, que é uma prática mais segura.
Recomendamos que seja realizada uma validação dos logs do ambiente para identificar quando e por qual motivo essa configuração foi alterada, pois não realizamos modificações nesse arquivo/configuração.
Como o ambiente é administrado pelo cliente, a análise de alterações internas, acessos e possíveis automações que possam ter aplicado essa mudança deve ser avaliada pela equipe responsável pelo ambiente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como ocorre a exclusão?', 'Guias', 'docx, importado', 'Importado via script', 'possivelmente foi removido durante as configurações que foi feita nesta instancia, levando em consideração que tem outras chaves personalizadas dentro do mesmo diretório.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('é feito por humano?', 'Guias', 'docx, importado', 'Importado via script', 'Sim, está ação não é feita de outra maneira.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sem acesso SSH – REDE venet0', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se possui a interface do venet0', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ip a', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ifconfig -a', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('docker network ls', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status docker', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('hostname -I', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Outras verificações:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ip addrip routecat /etc/network/interfaces', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso não tem', 'Guias', 'docx, importado', 'Importado via script', 'ifconfig venet0 <IP-PRIVADO_NODE> netmask <mascara correta da instância> up');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Máscaras:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('255.255.255.0 -> /24', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('255.255.0.0 -> /16', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('255.128.0.0 -> /9', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('255.255.255.255 -> /32', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('route add default dev venet0', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('apt install iproute2', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se não tiver, vai ter que setar o ip privado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se não funcionar o install iproute2', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Deve instalar manualmente o binário correto com wget', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SSH fora', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Entrar no container que está com problema', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl stop ssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('rodar em debug', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/usr/sbin/ssh -d', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tente conectar no ssh via Webssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique se deu o erro no termius e copie e cole no chatgpt', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não pode dar o chwon jelastic', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('provavelmente trocar as devidas permissões do arquivo ssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ls -l /var/lib/pgsql', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ls -l /var/lib/', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('verificar a lib se está certo as permissões', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('se nao estiver', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chown postgres:postgres /var/lib/pgsql/', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chomod 755 /var/lib/pgsql', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/usr/sbin/ssh -d', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Negócio é ir tentando e colar os erros no chatgpt', 'Guias', 'docx, importado', 'Importado via script', 'Cliente, consegui recuperar as permissões do SSH, porém, tem muitos mais diretorios do SO que estão com permissão incorreta que vao causar problemas');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Recomendo pegar o banco de dados e subir em um novo ambiente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tentar realizar a correção é bem menos recomendado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta como conectar uma máquina a outra via ssh?', 'Guias', 'docx, importado', 'Importado via script', 'crie um par de chaves com o comando ssh-keygen -t ed25519 na instância do Ubuntu, vai gerar as chaves pública e privada.
a chave pública você salva o conteúdo e insere dentro de $HOME/.ssh/authorized_keys no NGINX.
obs.: adicionar em uma linha abaixo, pois possui uma chave padrão que o WebSSH utiliza para fazer o acesso, se apagar ela, vai perder o acesso via WebSSH');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Qual ip usar?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('use o IP privado da máquina e a porta 22 mesmo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('usuário da conexão é jelastic', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('por exemplo, ssh -i <caminho-da-chave-privada> jelastic@ip-privado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa que não possui acesso ao ssh (utilizando Node.js)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Explorar arquivos/possível ataque', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('lsof -p [PID]', 'Guias', 'docx, importado', 'Importado via script', 'Lista todos os arquivos abertos por um processo especifico.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo da última vez:', 'Guias', 'docx, importado', 'Importado via script', 'Identificamos que o ambiente foi alvo de exploração da vulnerabilidade conhecida como React2Shell, que permite a execução remota de comandos em aplicações baseadas em Next.js quando determinadas falhas de segurança estão presentes.
A partir dessa exploração, o invasor conseguiu obter acesso remoto ao servidor e executar comandos no sistema, caracterizando um cenário de RCE.
Durante a análise, foi verificado que um processo malicioso chamado "." foi criado e configurado para execução automática via crontab, com o objetivo de manter persistência no ambiente e garantir que o acesso continuasse mesmo após reinicializações ou interrupções. Para localizar o arquivo e validar a origem do processo, realizamos acesso ao ambiente com o usuário de sistema e navegamos até o diretório onde o script estava armazenado utilizando os comandos de acesso ao shell e mudança de diretório até o caminho /var/ftp/ROOT e /home/jelastic.
Como ação imediata de contenção, não realizamos a exclusão de arquivos para preservar evidências e permitir uma análise mais aprofundada posteriormente, caso necessário. Em seguida, removemos as permissões de execução do arquivo malicioso para impedir sua continuidade e, após isso, o processo ativo foi finalizado por meio de término forçado (kill -9), interrompendo a atividade indevida.
Recomendamos a atualização da aplicação e de todas as dependências para versões seguras, revisão das configurações de segurança e acessos, análise detalhada de logs, rotação de credenciais e chaves e uma verificação completa de integridade do ambiente para garantir que não haja outras formas de persistência ou comprometimento.
Lembre se também de ativar o 2FA de sua conta para manter uma segurança maior.
Deve se atualizar o Node.js, a atualização é essencial porque apenas remover o processo malicioso ou limpar permissões não resolve a causa raiz. Se o sistema continuar na versão vulnerável, o ambiente pode ser explorado novamente da mesma forma. O ideal é atualizar para a versão mais recente estável, revisar também as bibliotecas do projeto (especialmente React, plugins e middlewares) e validar se não existem endpoints expostos ou configurações inseguras.
Além disso, é recomendável revisar logs para identificar o vetor inicial do ataque, aplicar boas práticas como WAF, restrição de acesso administrativo, variáveis de ambiente protegidas e rotação de credenciais. Isso reduz significativamente o risco de novos incidentes.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer realizar a exclusão de conta', 'Guias', 'docx, importado', 'Importado via script', 'Verificar no grupo, mas da ultima vez foi encaminhado para a Susi, para entendimento melhor da exclusão da conta.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Redeploy', 'Guias', 'docx, importado', 'Importado via script', 'https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/containers/imagem-personalizada/deploy-continuo#-como-funciona-o-redeploy');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Oque acontece ao realizar um redeploy:', 'Guias', 'docx, importado', 'Importado via script', 'Um novo container é criado internamente a partir da nova imagem (tag).
Os dados personalizados do container atual são mapeados e preservados.
O container original é parado e atualizado com os arquivos do novo.
Se você usa múltiplas instâncias (escalabilidade horizontal), é possível atualizar cada container de forma sequencial, reduzindo ou até evitando downtime.
Um snapshot é criado antes da operação para permitir rollback em caso de falha.
Porém devo lhe informar, é de extrema importância que seja feito todos testes em um ambiente de homologação antes de incluir esse tipo de processo em um ambiente produtivo, visto que, a má configuração dos dados a ser preservados pode levar a perda de dados');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Via API', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Use o endpoint:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('POST /1.0/environment/control/rest/redeploycontainers', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está com ambiente quebrado / quebrou', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tente desligar ambiente pela API', 'Guias', 'docx, importado', 'Importado via script', 'https://treinamento.suporte.sic.tec.br/docs/virtuozzo-paas/atualizar-status-por-api/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SSL Integrado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente tenta requisição na aplicação internamente com SSL integrado', 'Guias', 'docx, importado', 'Importado via script', 'o SSL integrado não funciona internamente, é só para requisição vindo de fora.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Geralmente vai dar algo de erro como no route to host', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Node.js', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os logs do pm2 / pm2 logs', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Comando', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pm2 logs', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tail -f /home/jelastic/.pm2/pm2.log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não reinicia o Node.js', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status nodejs.service -l --no-pager', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('journalctl -u nodejs.service -n 100 --no-pager', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente cria let''s encrypt no NodeJS', 'Guias', 'docx, importado', 'Importado via script', 'Da pra utilizar o LE nele, mas precisa importar duas bibliotecas e fazer uma configuração para a API carregar os certificados SSL, é mais complexo, teria que fazer o ajuste no código.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Recomendamos seguir a abordagem com NGINX', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pode subir uma aplicação Node.js com 3 server.js?', 'Guias', 'docx, importado', 'Importado via script', 'Pode utilizar o PM2 para gerenciar o funcionamento das 3 “aplicações”, mantendo execução das 3 de acordo com o caminho de diretório.
é possível, basta cada um ter nome distinto, ou estarem em diretórios separados, pois caso contrario o problema estará no SO ao conflitar com arquivos.
Cliente estava com problema em sua aplicação Node.js / Não subia o serviço
o NGINX ele redireciona para a aplicação na porta que está em execução quando a plataforma inicia a aplicação corretamente, sem ser um processo manual, desse modo, o tráfego é redirecionado para o servidor mesmo sem configurar o proxy reverso.por padrão a configuração do NGINX vem definida para rotear o tráfego para a porta 80. O ideal é realizar a criação do arquivo de configuração para a aplicação definindo o IP e porta que a aplicação escuta (3000 nesse caso)Temas essa documentação que pode auxiliar o senhor:docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/load-balancer/nginx/http
Para o PM2 e reiniciar o nó, faz com que a plataforma reinicie o serviço e inicie a aplicação caso tenha o arquivo entrypoint no caminho definido em $ROOT_DIR
Cliente deseja atualizar o nodejs sem precisar mudar todos os ips e configurações');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Existem algumas opções que pode seguir, como:', 'Guias', 'docx, importado', 'Importado via script', 'Clonar o ambiente e em seguida realizar o update, caso funcione ok, torne esse ambiente produção, ou, então subir um novo ambiente do zero e realizar os updates(redeploy) e configurações necessários para tornar o ambiente produção.
Porém nunca recomendamos atualizar diretamente o ambiente que hoje é de produção. Sempre um novo ambiente de homologação ou clone de homologação. Quanto à IP Público, caso possua, podemos migrar para o novo ambiente sem problemas, se achar necessário após realizar os testes.
Cliente alega desligar uma instância sozinha.
Quando o senhor a desliga através do ssh, a plataforma automaticamente “percebe” que a instancia está desligada e realiza o início do container, já que o ambiente se encontra como ligado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Orientações', 'Guias', 'docx, importado', 'Importado via script', 'Caso o senhor queira, é possivel remover a instancia pelo gerenciador de topologia, atentando-se para remover apenas a instancia desejada e evitar a perca de dados.
Cliente aumenta a memória da instância, mas ela para de funcionar.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os processos do cliente, possível sobrecarga de memoria', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux | wc -l', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar conexões ativas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Possível ataque via ssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netstat -tnp state established', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('last -a | grep "still logged in" (ultima vez logado)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Listagem de processos organizados em uso de processamento', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux --sort -pcpu', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Comando para verificar os IPs conectados', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netstat -t', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Quantidades de conexões por estado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ss -ant | grep :3306 | awk ''{print $1}'' | sort | uniq -c', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('IPs com maior numero de conexoes', 'Guias', 'docx, importado', 'Importado via script', 'ss -ant | grep :3306 | awk ''{print $5}'' | cut -d: -f1 | sort | uniq -c | sort -nr | head');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja desativar o acesso SSH', 'Guias', 'docx, importado', 'Importado via script', 'Todas as ações, até mesmo o deploy que realiza na instância, utiliza conexões SSH com a instancia para execução dos comandos necessários para a conclusão do deploy.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pode modificar o firewall para apenas local network', 'Guias', 'docx, importado', 'Importado via script', 'Para local network, os acessos seriam restritos para a infra, ou a partir de outros ambientes presentes em sua conta');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('N8n', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro Connection lost n8n', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pede pra ele mandar um print do erro que é gerado no f12 no navegador', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('verifique o log do nginx se tiver', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tail -n 50 /var/log/nginx/localhost.error_log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('joga no gpt os logs e erros', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se usa opera', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Provavelmente aumentar header_buffer no nginx', 'Guias', 'docx, importado', 'Importado via script', 'O navegador envia cookies grandes, e nginx esta recusando.
adicione em seu arquivo do nginx essa variavel que vai aumentar o aceite de cookies maiores:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('client_header_buffer_size 16k;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('large_client_header_buffers 8 64k;', 'Guias', 'docx, importado', 'Importado via script', 'procure pelo .conf específico - nginx -t verifica quais arquivos estão na ativa do nginx');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como não possui um .conf específico', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/etc/nginx/nginx-jelastic.conf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Substituir:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('client_header_buffer_size 1k;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('large_client_header_buffers 4 2k;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('por:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('client_header_buffer_size 16k;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('large_client_header_buffers 4 32k;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Salve e reinicie o NGINX', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro 400 Bad Request / Request Header Or cookie too large - nginx', 'Guias', 'docx, importado', 'Importado via script', 'Aumentar o large cliente header buffers no nginx-jelastic.conf pra reoslver isso');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro 429 Too many requests', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode ser loop https, ou, alguem acessando', 'Guias', 'docx, importado', 'Importado via script', 'O senhor verificou se tem algum limite nos containers? É necessario verificar os logs de todas as instancias para identificar o que pode estar causando essa lentidão.
É interessante verificar o error_log, no momento ainda está ocorrendo o erro? Pode ser também a quantidade de processos que está causando essa lentidão.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Loop infinito no n8n no sign in', 'Guias', 'docx, importado', 'Importado via script', 'Verificar na aba DevTools console o too many requests.
Na aba de console do DevTools do Chrome está retornando muitos 429 (too many requests), você precisaria verificar nos logs do container executando dentro do Docker Engine CE e ajustar.
Poderia atribuir um IP público para o NGINX e verificar se comportamento permanece, por favor?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer criar uma PrivateKey para colocar no N8N', 'Guias', 'docx, importado', 'Importado via script', 'Para configurar a Private Key no n8n, você precisa.
Gerar uma chave SSH (isso criará uma chave privada e uma chave pública).
Adicionar a chave pública no servidor (no arquivo de autorização SSH).
Copiar o conteúdo da chave privada e colar no campo “Private Key” dentro da credencial do n8n.
Se o acesso for apenas para um banco específico, o ideal é criar um usuário próprio para isso e não utilizar o root, por questão de segurança.
Porém recomendo que verifique a documentação do próprio n8n se necessário.
https://docs.n8n.io/integrations/builtin/credentials/ssh/#using-password');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ssh-keygen -t ed25519', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('(Gere a chave SSH usando o tipo ed25519.)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Vai criar as chaves em /root/.ssh/', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('(Ela será criada dentro do diretório /root/.ssh/.)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('arquivo id_ed25519 -> chave privada (private key)', 'Guias', 'docx, importado', 'Importado via script', 'arquivo id_ed25519.pub -> chave pública, colocar no authorized_keys da instancia de destino (no caso do mariadb, /home/jelastic/.ssh/authorized_keys)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('(Serão gerados dois arquivos:', 'Guias', 'docx, importado', 'Importado via script', 'id_ed25519 - é a chave privada (essa você vai colocar no campo Private Key do n8n).
id_ed25519.pub - é a chave pública (essa deve ser adicionada no arquivo authorized_keys da instância de destino)).');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('MariaDB', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Acessos mariadb', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat /root/.my.cnf', 'Guias', 'docx, importado', 'Importado via script', 'Cliente está com erro de too many connections/ Precisa aumentar o many conections no mariadb
Vai em variáveis / Max_connections e pode alterar por lá o limite de conexão');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ou', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('my.cnf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('na linha max_connections', 'Guias', 'docx, importado', 'Importado via script', 'Se o cliente quiser ajustar manualmente o my.cnf, o cliente precisa definir a variavel JELASTIC_AUTOCONFIG como false, por exemplo
Por conta da auto configuração da plataforma acabar alterando as configs que colocar no arquivo
Pode mostrar também que no log mysqld.log demonstra o erro de limite de conexão');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Duvida de verificação do logs do MariaDB', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso não tenho acessos há alguns logs', 'Guias', 'docx, importado', 'Importado via script', 'Utilizando esse comando é exibido as mensagens do kernel.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('dmesg', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer saber como fazer acesso ao MariaDB', 'Guias', 'docx, importado', 'Importado via script', 'Você pode acessar diretamente via webssh, por exemplo, dentro do webssh, execute mysql -u <usuario> -p');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('irá solicitar a senha que foi enviada no email', 'Guias', 'docx, importado', 'Importado via script', 'Cliente reclama sobre picos intermitentes que não é exibido no gráfico
No caso, o gráfico se trata de uma média do consumo, o ideal é verificar o recurso no momento que o alerta é recebido, o senhor pode utilizar o comando top no WebSSH de sua instância no momento de pico, e observar os processos que estão gerando esse pico no momento, filtrando no comando top com shift + M para memória RAM e shift + P para CPU.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No caso do MariaDB, a chave pública deve ser adicionada em:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/home/jelastic/.ssh/authorized_keys', 'Guias', 'docx, importado', 'Importado via script', 'Depois disso, é só salvar a credencial no n8n e testar a conexão.
Verificar se é o cliente está tentando utilizar o comando no ambiente certo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Versões', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Versão do ambiente linux', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Distribuições modernas:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat /etc/os-release', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nome do sistema e versão do kernel:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('hostnamectl', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Apenas versão do kernel:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('uname -a', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sistemas baseados em RedHat:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat /etc/redhat-release', 'Guias', 'docx, importado', 'Importado via script', 'Cliente pergunta sobre atualizações de kernel é feita automaticamente?
As atualizações à nível de kernel são realizadas de forma automática neste caso.
É atualizado de acordo com o que o servidor atualiza.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sobre o Kernel 6, o Debian 12.12 da plataforma possui a versão 6.1.0', 'Guias', 'docx, importado', 'Importado via script', 'No momento, não é possível utilizar o ubuntu 22.04 com o kernel na versão 6. Uma alternativa seria o uso do Debian nas versões 12.x
Não há uma previsão no momento para que a versão do kernel desejado esteja disponível para a distro ubuntu 22.04.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Questionamento de SO', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SO padrão das instâncias criadas é almalinux', 'Guias', 'docx, importado', 'Importado via script', 'Caso precise de um Ubunto como SO base ou outra SO, o senhor precisará criar uma VPS Ubuntu ou outra desejada.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('FTP / SFTP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Espaço extra o acesso FTP é o mesmo do ambiente ou são separados', 'Guias', 'docx, importado', 'Importado via script', 'Os acessos são diferentes.
pode utilizar tanto o acesso FTP (precisa ser instalado em cada nó em que ele vai acessar) ou SFTP (via par de chaves)
via FTP, basta instalar o FTP que ele vair receber os dados de acesso no email.
via SFTP, ele pode seguir a documentação onde ensina a gerar o par de chaves e também, como a cahve publica eh atribuida ao ambiente, ele só alteracao a conexao do node dentro do memso ambiente mudando o node id');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente com dúvida no acesso FTP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('(Cliente) Como Eu acesso via ftp pra fazer o upload dos arquivos?', 'Guias', 'docx, importado', 'Importado via script', 'O senhor pode realizar a configuração do SFTP para acesso direto as instancias.
https://docs.saveincloud.com/cloudlets/opcoes-globais/ssh-gate
Acesso direto utilizando senha, via Cliente FTP só é possível caso a instancia possua o add-on FTP instalado, e o mesmo necessita de IP público para que o acesso funcione. Por questões de política de segurança, o IP público não é disponibilizado para contas teste.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não é possível o acesso sem a chave', 'Guias', 'docx, importado', 'Importado via script', 'Mesmo com uma conta ativa, o recomendado sempre será utilizar o SFTP, com a autenticação via chave para aumentar a segurança do ambiente e do acesso externo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Subir o arquivo de banco de dados na plataforma', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Procurar o container e diretórios utilizados', 'Guias', 'docx, importado', 'Importado via script', 'Copie o arquivo.fdb para o diretório /home/firebird (diretório desejado)
Você pode fazer a transferência via SFTP, segue a nossa documentação sobre: https://docs.saveincloud.com/cloudlets/opcoes-globais/ssh-gate
O senhor pode realizar a configuração do acesso SFTP à instancia, e utilizar o Filezzila ou o WinSCP para realizar a cópia do arquivo para a instancia.
Caso o arquivo que queira subir possua menos que 200mb, é possivel adicionar diretamente pelo painel, caso contrário, a única maneira será pelo SFTP.
Cliente deve acessar as configs root diretorio no qual deseja enviar o arquivo');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pasta selecionada/engrenagem/enviar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer enviar um arquivo maior que 200mb', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Deseja saber onde encontrar os parametros da conta para logar via FTP', 'Guias', 'docx, importado', 'Importado via script', 'O senhor pode encontrar as informaçoes de FTP em seu email, as credenciais para conexão foram enviadas no momento em que o ambiente foi criado, como por exemplo: print de e-mail com dados ftp no firebird
Porém pode tambem acessar via SFTP, segue documentação que pode auxiliar o senhor:
https://docs.saveincloud.com/cloudlets/opcoes-globais/ssh-gate');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Contas testes', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Dúvidas sobre a conta teste', 'Guias', 'docx, importado', 'Importado via script', 'A conta teste possui um limite de uso de até 14 dias.
Caso o usuário deseje, é possível realizar a ativação da conta a qualquer momento dentro desses 14 dias.
A recarga mínima para ativação da conta é de 50 Reais.
Esse valor ficará em sua conta como saldo para utilização.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente com dúvidas nas instâncias', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Retirar dúvidas e depois', 'Guias', 'docx, importado', 'Importado via script', 'Além disso, caso o senhor deseje posso encaminhar o seu contato para o time comercial e eles estarão entrando em contato com o senhor para marcar uma reunião e entender melhor sobre suas necessidades e ajudar o senhor a entender melhor como a plataforma funciona.
Cliente deseja abrir uma nova conta como subconta, ou até ter um link de indicação e abrir em CPF
Fui informado que para a criação de conta, o senhor pode realizar o processo normal, pode abrir uma conta com outro email, e outro número.
Após isso realizar a recarga da conta e começar a utiliza-la.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente período de teste / Conta nova', 'Guias', 'docx, importado', 'Importado via script', 'Vejo também que a sua conta é nova em nossa plataforma, você passou pelo nosso time comercial? acredito que eles podem tirar algumas dúvidas referente à preço, apresentação da plataforma e também entender sobre a sua necessidade.
Não é possível criar uma instância firebird nesse período, você precisaria realizar uma recarga de R$50,00 para converter a conta');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ambiente status hibernando', 'Guias', 'docx, importado', 'Importado via script', 'Isso da por conta de ser ambiente de uma conta trial, quando ambientes de conta trial ficam 24 horas inativos, eles entram em modo de hibernação, senhor.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Conta destruída', 'Guias', 'docx, importado', 'Importado via script', 'Infelizmente, Devido ao período de inatividade da conta (60 dias), o sistema executou o protocolo automático de destruição. Ambientes com pendências prolongadas são removidos permanentemente após ultrapassar o limite de inatividade.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Conta negativa / inativa / destruída', 'Guias', 'docx, importado', 'Importado via script', 'Notei que sua conta se encontra como destruída no momento, o que ocorre após um período de inatividade de conta prolongada (60 dias após o último faturamento com saldo positivo).
Como ainda há cobrança de armazenamento e IPs públicos nos ambientes desligados, a plataforma ainda mantém as instancias durante esse período antes da exclusão permanente de todos os ambientes da conta, por conta disso, o saldo pode ficar negativado durante esse tempo.
Cliente questiona o por que cobrar e realizar a exclusão de inatividade mesma com ambiente desligado');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Entrar na conta destruída e ver os logs', 'Guias', 'docx, importado', 'Importado via script', 'O ambiente não havia sido excluído até o dia **, quando o período de inatividade acabou, e o mesmo foi excluído automaticamente.
O ambiente desligado deixa de cobrar apenas os recursos computacionais, já que não são utilizados; Porém armazenamento e o IP Público são mantidos e reservados caso o usuário deseje voltar a utilizá-los, evitando a perca de dados e do Endereço IP durante o período de inatividade.
O saldo a chegar a 0 limita os serviços não permitindo que sejam ligados os ambientes da conta, apenas permitindo o mantenimento dos mesmos.
A cobrança referente ao armazenamento dos dados contidos na instancia e o endereço IP atribuido.
RAM, CPU e rede não foram cobrados.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente conta teste/destruida', 'Guias', 'docx, importado', 'Importado via script', 'Nesse caso, como a sua conta expirou o prazo do uso de período de teste e não converteu a conta depois, ela acabou sendo destruída mesmo.
Você pode realizar uma recarga com um valor mínimo de R$50,00 para ativar a sua conta.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Demonstrar assinar cloud', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('NGINX', 'Guias', 'docx, importado', 'Importado via script', 'No such file or directory\n/etc/tinyproxy/tinyproxy.conf: No such file or directory\n/etc/tinyproxy/tinyproxy.conf: No such file or directory"
Esse erro se dá por conta de ter 1 cloudlet reservado 1 limite de escalonamento');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Deixar um node fora no arquivo de upstream', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No /etc/nginx/nginx-jelastic.conf', 'Guias', 'docx, importado', 'Importado via script', 'Caso seja apenas o arquivo padrão, é possivel desativar o upstream (Redirecionamento) adicionando um “down” frente do server, como por exem:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Server 10.0.0.0 down;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nginx com erro 502', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se os serviços estão rodando na porta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar a data de emissão do let''s encrypt', 'Guias', 'docx, importado', 'Importado via script', 'Se foi emitida no dia anterior, pois pode ocorrer um erro se aplicação conter alguns problemas pendentes');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Olhar logs do erro informado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pedir pra reiniciar a instância', 'Guias', 'docx, importado', 'Importado via script', 'Cliente está realizando o upload através do HyperServer Unigui / aceitar tamanho Nginx');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Error Status = 413 unigserver', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Está gerando erro de tamanho', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pergunta se ele realizou este ajuste conforme a documentação', 'Guias', 'docx, importado', 'Importado via script', 'https://www.unigui.com/doc/online_help/adjusting-upload-limit.htm');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente conseguiu ajustar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('nginx-jelastic.conf -> client_max_body_size 100m;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problema de proxy reverso NGINX', 'Guias', 'docx, importado', 'Importado via script', 'Perguntar a IA se o problema da log está relacionado ao proxy reverso, geralmente é necessário criar uma .conf com as configurações de apontamento necessárias no diretorio, para o NGINX funcionar.
Muitos clientes utilizam um nginx para fazer o proxy para diversos serviços diferentes dentro de uma mesma instancia, então se ele utilizar um domínio diferente para cada serviço e não configurar o bloco 443 dentro de um arquivo.conf separado, vai cair no catch-all do ssl.conf e ser redirecionado para a instancia que estiver no proxy_pass');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('VM Windows', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre cloudets na VM Windows', 'Guias', 'docx, importado', 'Importado via script', 'Os cloudlets são atribuídos à instância de forma fixa, não tendo a feature de cloudlets reservados e dinâmicos como em instâncias sobre distribuições linux.
VM Windows cobra-se os recursos de CPU, RAM e disco que foram atribuídos à máquina.
caso queira economizar no uso desses recursos, existe o add-on Env Start/Stop Scheduler onde desliga o ambiente em momentos necessários (como em finais de semana caso não seja utilizado).
com o ambiente desligado, você é cobrado apenas pelo IP público atribuído (caso tenha) e disco definido na topologia do ambiente.
add-on Env Start/Stop Scheduler: https://docs.saveincloud.com/cloudlets/addons/administracao/env-start-stop-scheduler');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Licenciamento Windows', 'Guias', 'docx, importado', 'Importado via script', 'Somente reforçando que quando o senhor cria a VM não é gerado uma fatura da licença, pois o licenciamento do Windows não é adquirido, ele é cobrado durante a existência da VM Windows, esse valor que informamos é cobrado por hora, como um aluguel da licença.
Após a exclusão da VM esse licenciamento será excluído também.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente reclama de lentidão em Firebird na VM Windows', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntar se o banco e o sistema estão na mesma VM', 'Guias', 'docx, importado', 'Importado via script', 'As consultas realizadas diretamente no banco retornam a mesma lentidão quando executadas na aplicação?
Cliente conexão simultânea VM Windows tela preta.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Quantas conexões simultâneas estão sendo feita?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Está dando tela preta em algumas sessões', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se o acesso é via RDP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se ele utiliza tsplus, alguma solução de acesso remoto', 'Guias', 'docx, importado', 'Importado via script', 'Cliente só pode ter 2 usuários em seu ambiente Win Server, como administrator e usuário.
Senhor, nesse caso esse comportamento é esperado. Por padrão, o Windows Server permite apenas 2 conexões simultâneas via RDP para usuários.
Ao tentar realizar um terceiro acesso, uma das sessões já ativas pode ser encerrada automaticamente.
Para permitir mais conexões simultâneas, para mais acessos, é necessário adquirir licença adicional (RDS CAL).');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O senhor pode obter mais detalhes em nossas documentações:', 'Guias', 'docx, importado', 'Importado via script', 'https://docs.saveincloud.com/cloudlets/faq/vps-windows');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso cliente deseje comprar licença RDS CAL', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Time comercial – pos pago – informar ao time', 'Guias', 'docx, importado', 'Importado via script', 'Certo senhor, nesse caso irei encaminha-lo para o time responsável por essa demanda, eles poderão orienta-lo melhor sobre as dúvidas solicitadas.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Procedimento para Ativar Licença RDS CAL', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Informar ao danielzão e tem que abrir chamado na Microsoft', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Necessário logar na conta do danielzão pra abri o chamado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Razão social: SCLOUD HOSPEDAGEM NA NUVEM LTDA', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('CNPJ 47.807.497/0001-18', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Informar nosso CNPJ: 66.925.934/0001-42', 'Guias', 'docx, importado', 'Importado via script', 'Rua do divino salvador 82, Nova Paulinia, Paulinia, São Paulo, 13140-299, Brasil');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Fabio de Carvalho Vieira', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('fabio.vieira@saveincloud.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('5519991826498', 'Guias', 'docx, importado', 'Importado via script', 'Sobre o chamado com a Microsoft após os dados do danielzão e ter entrado em contato já com eles');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Estou bem, preciso de ajuda para ativar as RDS CALs', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tentei fazer via web mas não foi possível', 'Guias', 'docx, importado', 'Importado via script', 'Informar ID do servidor e a chave de produto.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ID: CV9RK-3G246-FQ766-4WV37-G4GYC-VGDFJ-YVJHT', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Chave de produto:  00377-70126-04218-AA155', 'Guias', 'docx, importado', 'Importado via script', 'Relatos: Não tenha nenhuma opção de ativar por telefone, tentei o suporte por ligação, mas me atenderam ficaram sem falar nada por 20 minutos e desligaram a ligação');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntaram onde compramos a licença', 'Guias', 'docx, importado', 'Importado via script', 'Temos um fornecedor softwareone, somente realizamos somente o reporte mensal de licensas, o tipo é SPLA
Eles irão tentar ativar o CALs e, se não funcionar você precisará entrar em contato com o vendedor e pegar a chave de produto.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Quando era por telefone nunca passamos pelo nosso vendedor', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não seria o ID de parceiro? Poderia tentar 6711718', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntam qual endereço de e-mail temos a conta Microsoft', 'Guias', 'docx, importado', 'Importado via script', 'Acredito que seja um desses, o primeiro é o que conectei aqui para falar com o senhor.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('daniel.guidolin@scloudhosp.onmicrosoft.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('daniel.guidolin@saveincloud.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('fabio.vieira@saveincloud.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('RDS CAL é por usuário', 'Guias', 'docx, importado', 'Importado via script', 'gpedit.msc...');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Navegar até:', 'Guias', 'docx, importado', 'Importado via script', 'Computer Configuration -> Administrative Templates -> Windows Components -> Remote Desktop Services -> Remote Desktop Session Host -> Licensing.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sobre essa parte coloquei assim:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('primeiro: nome do computador', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('segundo: somente habilitei', 'Guias', 'docx, importado', 'Importado via script', 'terceiro: selecionei por usuário já que foi o tipo de licença comprada');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente não consegue realizar acesso a VM Windows / Mas a gente sim', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Provavelmente erro com o provedor de internet do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pedir testes de ping, tracert, ip de saída', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se utilizar endpoint pedir telnet host porta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Windows não acessa o RDP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Dê um telnet no ip + porta padrão ou 3301/ 3389', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se não der certo, pergunte se ele mudou a porta', 'Guias', 'docx, importado', 'Importado via script', 'Entre via termius e rode o comando para verificar se o serviço está rodando:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sc query TermService', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sc start TermService', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifica as dependências se não for possível iniciar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sc qc TermService', 'Guias', 'docx, importado', 'Importado via script', 'Se existir outro serviço do TS-Plus verficiar a possibilidade de setar apenas para o RPCSS');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sc config TermService depend= RPCSS', 'Guias', 'docx, importado', 'Importado via script', 'Ele vai apenas setar a dependência do RPCSS não irá excluir a outra dependência');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se está ouvindo a porta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netstat -ano | findstr 3389', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ver se a porta ta rodando', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netstat -ano', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Desativar o firewall', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netsh advfirewall set allprofiles state off', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ativar o firewall', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netsh advfirewall set allprofiles state on', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifica se o firewall está ligado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netsh advfirewall show allprofiles', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifica se o RDP está ativo', 'Guias', 'docx, importado', 'Importado via script', 'reg query "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Habilitar o RDP via registro', 'Guias', 'docx, importado', 'Importado via script', 'reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após habilitar o rdp', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('reiniciar o serviço termservice', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mas atenção isso derruba as sessões antigas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('net stop TermService', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('net start TermService', 'Guias', 'docx, importado', 'Importado via script', 'Verificar o firewall se está tudo certo, pergunte para o chatgpt sobre quais são as regras feitas se há bloqueio na porta do endpoint
Ou desativar o firewall pra testar o acesso.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se estiver rodando e ainda não consegue acesso, liberar VNC', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('TSPlus', 'Guias', 'docx, importado', 'Importado via script', 'Certo, nesse caso, foi identificado antes do reinicio, que havia uma dependência do TS (SVCM), juntamente com o RDP, após realizar um teste de remoção foi adquirido o acesso novamente a VM, seria necessário verificar com suporte do software terceiro a respeito desta inconsistencia de acesso, tendo em visto que seria do lado da dependencia vinda suporte do software terceiro o problema, sendo necessário entrar em contato com eles.Para realizar a inclusão da dependencia novamente, basta parar o serviço do RDP e executar no CMD: sc config TermService depend= RPCSS/SVCM');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('VNC', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pegar o nome da VM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl list -a | grep ip público/ CTID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode verificar o status da VM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl list -o name,status NomeVM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tem que desligar a VM primeiro', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl stop nomeVM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se está aberto a porta:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iptables -L | grep 33335', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se estiver off:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iptables -A INPUT -p tcp --dport 33335 -j ACCEPT', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iptables -A INPUT -p udp --dport  33335 -j ACCEPT', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iptables -I INPUT -p tcp --dport 33335 -j ACCEPT', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo iptables-save -c', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('criar acesso ao VNC', 'Guias', 'docx, importado', 'Importado via script', 'prlctl set NomeVM --vnc-mode manual --vnc-port 33335 --vnc-passwd senhanova');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl start NomeVM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Deve passar para o cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ippublico do usernode + porta 33335 e senha criada', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pega o ip do usernode:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Curl ipinfo.io', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES (':33335', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('senha:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para desligar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl stop NomeVM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl set NomeVM --vnc-mode off', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl start NomeVM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se já existe o VNC ativo no usernode/instância', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl list -i NomeVM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('parâmetro:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('remote display: mode=manual port=33335', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente questiona sobre o erro em conexão com Windows server', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cuidado: conexão remota desconhecida', 'Guias', 'docx, importado', 'Importado via script', 'A mensagem em questão parece estar relacionado à estação de trabalho local do usuário, pode ter ocorrido alguma atualização no windows desktop dos clientes e a partir da nova conexão estar exibindo o aviso.
Normalmente este aviso normalmente está relacionado a questão de certificado SSL confiável no servidor.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sempre realizou a conexão por IP ou utilizava algum DNS?`', 'Guias', 'docx, importado', 'Importado via script', 'Para Windows na documentação da microsoft pedem que seja um certificado com a extensão .pfx
https://learn.microsoft.com/pt-br/windows-server/remote/remote-desktop-services/remote-desktop-services-certificates?tabs=gui');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja instalar o firebird na VM Windows e transferir o app', 'Guias', 'docx, importado', 'Importado via script', 'Transferir um aplicativo executavel para dentro de nossa plataforma nao é possivel, o senhor tera que realizar o download do seu app ou instalar ele, dentro de sua VM, via web, google drive, entre outros.
Ou realizar essa transferencia via ftp, por exemplo usando o filezilla server.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pelo ftp:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Antes de acessar rdp tem:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Show options', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Recursos locais', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Dispositivos e recursos locais - mais', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Unidades - ok', 'Guias', 'docx, importado', 'Importado via script', 'Vai estar em este computador - vai ter uma nova pasta e unidades redirecionadas');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para acessar ibexpert de um banco de dados dentro da Vm Windows', 'Guias', 'docx, importado', 'Importado via script', 'Precisa criar um outro endpoint da vm windows mesmo, e apontar ele para a porta do banco que roda dentro da vm.
Verifique tambem se a porta privada do serviço esta liberada no firewall
Cliente fala que está recebendo muito ataques por conta de RDP exposto
Um opção valida é o senhor realizar uma configuração com load balancer, na camada de cima dessa VM Windows e em seguida realizar a configuração desse balancer, para que todo o acesso ocorra por ele e o IP publico seja adicionado também nesse load balancer, deixando a VM privado, apenas acessivel via load balancer.
Com isso sua VM não ficaria exposta publicamente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('A configuração tem base nessa documentação', 'Guias', 'docx, importado', 'Importado via script', 'https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/load-balancer/nginx/tcp-udp');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Então após tudo configurado, ficará o acesso dessa maneira:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('IP Público > LoadBalancer > IP Privado > VM Windows', 'Guias', 'docx, importado', 'Importado via script', 'Com isso também é possivel realizar a configuração diretamente no firewall desse loadbalancer bloqueando os IPs que não deseja ter acesso, ou liberando somente os que são permitido o acesso.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja apontar um CNAME para VM Windows', 'Guias', 'docx, importado', 'Importado via script', 'Senhor nesse caso é necessário adicionar um ipv4 em sua instância Windows Server 2022 e realizar um apontamento do tipo A para o ipv4 criado, somente deste modo o acesso irá funcionar.Recomendamos a criação de um load balancer acima de sua VM Windows para maior segurança, recebendo todo o acesso ocorra por ele, deixando a VM privado, apenas acessivel via load balancer.
Com isso sua VM não ficaria exposta publicamente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('A configuração tem base nessa documentação', 'Guias', 'docx, importado', 'Importado via script', 'https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/load-balancer/nginx/tcp-udp');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Então após tudo configurado, ficará o acesso dessa maneira:', 'Guias', 'docx, importado', 'Importado via script', 'Apontamento do tipo A > IP Público > LoadBalancer > IP Privado > VM Windows
Com isso também é possivel realizar a configuração diretamente no firewall desse loadbalancer bloqueando os IPs que não deseja ter acesso, ou liberando somente os que são permitido o acesso.
Cliente informa que a VM Windows reinciou sozinha registrando erro crítico no visualizador de eventos');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntar se chegou a ficar indisponível', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se não', 'Guias', 'docx, importado', 'Importado via script', 'Em ambientes em nuvem/contêinerizados, isso pode ocorrer por ações automáticas da própria plataforma, como ajustes internos, balanceamento ou pequenos resets para manter a estabilidade do serviço. Como o ambiente não apresentou indisponibilidade e continuou funcionando normalmente após o ocorrido, não há indícios de falha crítica no momento.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Quedas de rede em Windows', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso utilize endpoint', 'Guias', 'docx, importado', 'Importado via script', 'Verifiquei que o senhor realiza a conexão a esse ambiente via Endpoint, o que não é recomendado para ambientes em produção, visto que o endpoint utiliza o SLB (Shared LoadBalancer) em que diversos clientes utilizam para testes e homologações. Nesse caso aconselho testar utilizando um IP Público no ambiente ou então adicionando um loadbalancer com IP Público no ambiente e em seguida configurar esse balancer, direcionando o acesso a essa VM Windows.
Outro caminho que pode seguir, é no momento que ocorrer essa instabilidade nos chamar, para que consigamos investigar e entender onde ocorre essa falha, o senhor pode testar com ping e tracert no momento da falha, porém é necessário nos informar para que consigamos realizar também os testes do nosso lado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer saber o motivo do reinicio repentino de sua VM Windows', 'Guias', 'docx, importado', 'Importado via script', 'Ele pode verificar os logs da VM se há algum registro especifico do reinicio');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Win + R > eventvwr.msc', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa que tela windows via rdp está preta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntar se já chegou a reinciar a VPS', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Quais as últimas alterações feitas?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pede ajuda para liberação de porta no firewall', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Segue um link que pode lhe ajudar:', 'Guias', 'docx, importado', 'Importado via script', 'https://www.innov4web.pt/knowledgebase/49/Abrir-portas-no-Windows-Server-2012-2016-2019-and-2022.html');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Conta do windows bloqueado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Listar contas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl list | grep', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl enter nomedaVM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('net user', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar info das contas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('net user <Nome-Da-Conta>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ativar conta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('net user <Nome-Da-Conta> /active:yes', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Proibir o bloqueio de contas por tentativa de logon', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não usar apenas informar: net accounts /lockoutthreshold:0', 'Guias', 'docx, importado', 'Importado via script', 'O senhor pode realizar esse comando para deixar desabilitar temporariamente a política de bloqueio por tentativas inválidas de login, mas isso pode tornar a VM suscetivel a ataque por brute force
Senhor, para realizar o desbloqueio do acesso RDP da sua VPS, foi necessário desabilitar temporariamente a política de bloqueio por tentativas inválidas de login. Após conseguir acessar novamente a VM, recomendamos reativar essa política através de:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ou', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O senhor pode realizar a alteração de bloqueio de conta aqui', 'Guias', 'docx, importado', 'Importado via script', '“Política de Segurança Local” → “Políticas de Conta” → “Política de bloqueio de conta”
Assim você consegue manusear e ter a escolha de quantas tentativas devem ser feitas.
Sendo possível ajustar a política de bloqueio de conta para ficar menos restritiva, aumentando a quantidade de tentativas permitidas antes do bloqueio ou reduzindo o tempo de bloqueio automático.
Assim, o ambiente volta a contar com a proteção contra múltiplas tentativas incorretas de autenticação.
No momento está desativado essa política, com ela desativa fica vuneravel a Brute Force
Para evitar novos bloqueios, recomendamos verificar se existe algum sistema, serviço, usuário remoto ou dispositivo utilizando credenciais antigas/senhas incorretas para acessar a VPS, pois isso normalmente gera múltiplas tentativas inválidas em segundo plano até ocasionar o bloqueio da conta.
Também é possível ajustar a política de bloqueio de conta para ficar menos restritiva, aumentando a quantidade de tentativas permitidas antes do bloqueio ou reduzindo o tempo de bloqueio automático.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Restrição de quem acessa somente a um ip fixo da empresa', 'Guias', 'docx, importado', 'Importado via script', 'Cliente pode fazer via Windows Defender Firewall, dentro da própria VM');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('(Cliente) Não tem uma opção via painel?', 'Guias', 'docx, importado', 'Importado via script', 'Caso queira via painel, você poderia estar utilizando um NGINX e configurar um stream para fazer o redirecionamento para o Windows. Dessa forma, você pode fazer o gerenciamento de acesso no firewall da plataforma.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('(Cliente) O serviço terá mais custo?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tudo isso é caso o cliente queira configurar via painel:', 'Guias', 'docx, importado', 'Importado via script', 'sim, porém o custo não aumentará significativamente, pois o NGINX consome pouco disco, pouco recurso de processamento e o tráfego via rede privada (entre as instâncias) é gratuito.
Claro, caso o NGINX venha a receber muitas requisições e precise gastar mais recursos, o custo será maior.
O modelo de cobrança das instâncias baseadas em linux é conforme utilização, isto é, pagará apenas pelo que estiver usando no momento (cobrança feita por hora)
Cliente pode fazer um teste e monitorar os gastos via histórico de faturamento
Documentação sobre a configuração de stream no NGINX: https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/load-balancer/nginx/tcp-udp
Windows Defender Firewall: https://docs.saveincloud.com/docs/ambientes/tipos-instancias/vps/windows/firewall (recomendado consultar a documentação oficial da microsoft)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ativar licença VM Windows', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('CTID =', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ambiente =', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('User ID (proprietário) =', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Windows = versao', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('usernode =', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('enviar para equipe infra', 'Guias', 'docx, importado', 'Importado via script', 'Cliente comenta sobre armazenamento de disco que foi realizado um resize Windows Server');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar o tamanho do disco via ssh acessando o nodo do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Procurar pelas logs de audit', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar logs do jem', 'Guias', 'docx, importado', 'Importado via script', 'Pedir para o cliente ajustar pelo painel para o tanto informado que utilizava.
Cliente pergunta sobre preço da licensa do Windows que aparece gratuito
Apenas a orquestração das VMs da plataforma pelo painel que não tem custo algum, porém a licença é um preço fixo da propria Microsoft, que seria as licenças aplicadas nas VMs durante a criação das mesmas.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('É possível criar VPS sem licensa?', 'Guias', 'docx, importado', 'Importado via script', 'Todas as máquinas fazem cobrança de licença atualmente, não é possivel utilizar sem');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Migrar/migração', 'Guias', 'docx, importado', 'Importado via script', 'Poderiamos realizar uma operação interna em sua instância do nodo **, que ela irá ficar desligada por um período de  **min, será feito essa ação para reajustes em sua instância, qual seria o melhor horário e data para esta ação?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Df -h /vz', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar no usernode que está recebendo a migração', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('du -sh /vz/private/CTID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se o cliente questionar (Mas perguntar antes)', 'Guias', 'docx, importado', 'Importado via script', 'A manutenção é preventiva para evitar problemas futuros somente, por sobrecarga de infraestrutura. Da forma que o seu ambiente está trabalhando atualmente, a nossa equipe de infraestrutura recomendou essa ação como forma de prevenir incidentes futuros. Por isso precisamos realizar o balanceamento por parte de infraestrutura.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Forma rápida de pesquisar que a instância foi migrada', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pegar o CTID', 'Guias', 'docx, importado', 'Importado via script', 'Reports...');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ctrl + F e boa', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar Usernode para migração', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('df -h /vz', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('free -h', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('HQFirebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Versão:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/opt/firebird/bin/isql -z', 'Guias', 'docx, importado', 'Importado via script', 'Caso cliente realize a instalação do HQbird pelo marketplace, algumas versão estão vindo com erros de permissão e alguns serviços não inicializava  (testei a versão 2.5 e a 3.0) Resolvi desta forma:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Versão 2.5:', 'Guias', 'docx, importado', 'Importado via script', '(esses dois provavelmente vai falar coisas tipo "Já existe", é esperado)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('groupadd -g 84 firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('useradd -u 84 -g 84 -d /opt/firebird -s /bin/false firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chown -R root:root /opt/firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chown firebird:firebird /opt/firebird/fb_guard', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chown firebird:firebird /opt/firebird/firebird.log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chown firebird:firebird /opt/firebird/security2.fdb', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chmod 600 /opt/firebird/fb_guard', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chmod 600 /opt/firebird/firebird.log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chmod 600 /opt/firebird/security2.fdb', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl daemon-reload', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl start firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status firebird', 'Guias', 'docx, importado', 'Importado via script', 'sed -i ''s/20240321/20251017/g'' /opt/hqbird/conf/agent/servers/hqbirdsrv/server.properties
sed -i ''s/20240321/20251017/g'' /opt/hqbird/conf/agent/servers/hqbirdsrv/databases/test_employee_fdb/database.properties');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl start hqbird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status hqbird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cp /opt/hqbird/amv/fbccamv.service /lib/systemd/system/', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl daemon-reload', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl enable fbccamv', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl start fbccamv', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status hqbird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status fbccamv', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status fbcclauncher', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netstat -ptln', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Versão 3.0:', 'Guias', 'docx, importado', 'Importado via script', '(esses dois provavelmente vai falar coisas tipo "Já existe", é esperado)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('groupadd -g 84 firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('useradd -u 84 -g 84 -d /opt/firebird -s /bin/false firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chown -R root:root /opt/firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chown firebird:firebird /opt/firebird/fb_guard', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chown firebird:firebird /opt/firebird/firebird.log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chown firebird:firebird /opt/firebird/security3.fdb', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chmod 600 /opt/firebird/fb_guard', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chmod 600 /opt/firebird/firebird.log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chmod 600 /opt/firebird/security3.fdb', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl daemon-reload', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl start firebird-superserver', 'Guias', 'docx, importado', 'Importado via script', 'sed -i ''s/20240321/20251017/g'' /opt/hqbird/conf/agent/servers/hqbirdsrv/server.properties
sed -i ''s/20240321/20251017/g'' /opt/hqbird/conf/agent/servers/hqbirdsrv/databases/test_employee_fdb/database.properties');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl start hqbird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cp /opt/hqbird/amv/fbccamv.service /lib/systemd/system/', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl daemon-reload', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl enable fbccamv', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl start fbccamv', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status firebird-superserver', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status hqbird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status fbccamv', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status fbcclauncher', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netstat -ptln', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Instalação de um firebird', 'Guias', 'docx, importado', 'Importado via script', 'a instalação eh so dar um wget https://github.com/FirebirdSQL/firebird/releases/download/v5.0.3/Firebird-5.0.3.1683-0-android-x86.tar.gz');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('descompactar e depois rodar o script de instalação', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar conexões ativas no firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ss -ant | grep :3050', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ss -ant | grep :3050 | grep ESTAB | wc -l', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Acessos ao firebird/backup', 'Guias', 'docx, importado', 'Importado via script', 'Você recebe em seu email os dados de acesso, como usuário e senha.
Você pode subir um backup do seu banco na sua instância via FTP, realizar o restore e depois acessar usando o utilitário isql. Outra forma, seria utilizar um gerenciador de banco de dados como o IBExpert com o endpoint criado');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Conexão local com o firebird', 'Guias', 'docx, importado', 'Importado via script', '/opt/firebird/bin/isqlSQL> CONNECT "/opt/firebird/data/banco.fdb" user ''SYSDBA'' password ''suaSenha'';');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente não consegue conectar ao firebird / ping funciona', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como realiza o acesso? Qual a porta usada?', 'Guias', 'docx, importado', 'Importado via script', 'Se nos logs do Firebird foi encontrado o erro relacionado ao bind IPv6:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('setsockopt: error setting IPV6_V6ONLY to 0', 'Guias', 'docx, importado', 'Importado via script', 'Para corrigir, foi adicionada a configuração abaixo no arquivo /opt/firebird/firebird.conf:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('RemoteBindAddress = 0.0.0.0', 'Guias', 'docx, importado', 'Importado via script', 'Depois reiniciado o serviço.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Firebird para do nada de funcionar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('verificar o df -h', 'Guias', 'docx, importado', 'Importado via script', 'Verificar nos logs se o firebird estava em um loop de erro /opt/firebird/bin/fbguard: /opt/firebird/bin/firebird terminated abnormally (-1) de acordo com o log /opt/firebird/firebird.log
Precisa de um aumento no espaço em disco, pois o firebird precisa de espaço em disco para criar locks, arquivos temporários e registrar logs (como está registrando agora neste arquivo /opt/firebird/firebird.log), mas como estava em 100%, impossibilitava as escritas e o serviço parava
Cliente fala que está com limite de conexão em um firebird acessando atráves do Windows server com ip publico
Certifique-se de estar utilizando o ip privado e porta 3050 para conexão da sua aplicação com o banco de dados, pois por padrão não há limite de 50 conexões
Erro: [FireDAC][Stan]-708. Cannot acquire item (connection) from pool. Maximal number [50] of simultaneous items (connections) reached.
Nesse caso, seria a configuração feita em seu pool de conexão de sua aplicação, poderia verificar como está definido o pool de conexão em sua aplicação.
https://docwiki.embarcadero.com/RADStudio/Florence/en/Multithreading_(FireDAC)#Connection_Pooling');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Atualização versão antiga de so e firebird', 'Guias', 'docx, importado', 'Importado via script', 'Para fazer tais atualizações sem arriscar a quebra do Sistema/Serviço do Firebird, e evitar a perda de dados, será necessário realizar a criação de novos ambientes contendo as versões do Ubuntu e Firebird desejados.
Mesmo criando outro ambiente, o senhor consegue realizar o mantenimento de IPs publicos (Por meio de transferencia), e no tocante a senha (Para que não seja necessário realizar a troca da string de conexão), é possível trocá-la via comando para que a senha se mantenha a mesma que o ambiente anterior.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso pergunte sobre o ip:', 'Guias', 'docx, importado', 'Importado via script', 'A troca dos IPs deve ser feita diretamente via API da plataforma, já que não há opção de troca via dashboard.
Porém, a mesma pode ser feita rapidamente, logo após a finalização da preparação do novo ambiente atualizado.
https://docs.jelastic.com/api/
Cliente informa erro firebird setsockopt error setting ipv6_v6only to 0, está msg é do firebird log
Perguntar se a conexão é feita por outras máquinas, se houve algum teste em outros dispositivos');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ou testar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('versão do firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/opt/firebird/bin/isql -z', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se o problema for apenas em uma máquina', 'Guias', 'docx, importado', 'Importado via script', 'Na máquina que não consegue se conectar, utiliza ipv6? se sim, tente forçar o uso do IPv4 para acesso, visto que o problema se encontra em apenas uma estação de trabalho na sua rede.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problema no firebird no docker', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se a tag da imagem está errada', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('a estrutura é assim', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('repositorio/imagem:tag', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tag geralmente: firebird:v5.0.0', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja acessar o banco firebird via ip publico', 'Guias', 'docx, importado', 'Importado via script', 'Se o acesso está sendo realizado via endpoint, recomendável que o senhor adicione o IP público em um outro momento, já que o link de endpoint irá parar de funcionar');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Lentidão de processos firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Firebird cliente fala que os processos demorar pra processar', 'Guias', 'docx, importado', 'Importado via script', 'precisa perguntar sobre como ocorre a lentidao, em que acao, se eh pra abrir o sistema, consultar algo, processar alguma coisa');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Que tipo de lentidão é enfrentada, como foi percebida essa lentidão?', 'Guias', 'docx, importado', 'Importado via script', 'O problema é no sistema como um todo ou apenas durante alguma ação que envolve a comunicação com o banco de dados?
Se comentar que está conforme o passar do tempo vem gerando essa lentidão de processos ainda:
Foi realizada a otimização do seu banco de dados no arquivo /opt/firebird/firebird.conf? A otimização é essencial para um bom desempenho do banco. Você pode realizar por meio da calculadora https://cc.ib-aid.com/ informando os recursos da sua instância com a quantidade de usuários e o tamanho de página do banco, gerando um arquivo ideal para a configuração do Firebird.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Passo a passo?', 'Guias', 'docx, importado', 'Importado via script', 'Você pode acessar o site da calculadora e especificar os parâmetros necessários para que seja gerado o arquivo de configuração.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Home/Calculate Firebird configuration', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Choose your: firebird 3 vanilla', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Choose your arch: superserver', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('user exemplos como:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('database page siz: 4096', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('database size (GB) : 100', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('main database name: testdb', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('main database path: c:\temp\mydb1.fdb', 'Guias', 'docx, importado', 'Importado via script', 'em CPUs, pode definir o valor 10 para a sua instância (conforme saída do comando lscpu).');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('use o comando lscpu', 'Guias', 'docx, importado', 'Importado via script', 'O gerenciamento e otimização do banco é de responsabilidade do cliente nesse caso.
É necessário que verifiquem a otimização dos recursos, tipo de firebird a ser utilizado bem como otimizar as consultas (query) com índices se necessário.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Lentidão no firebird', 'Guias', 'docx, importado', 'Importado via script', 'Senhor poderia realizar uma query externamente, por algum gerenciador de banco, como o dbeaver ou ibexpert e nos enviar o resultado, por gentileza
O senhor possui alguma credencial de teste para podermos realizar um teste do nosso lado?
https://firebirdsql.org/file/documentation/reference_manuals/fbdevgd-en/html/fbdevg30-db-load-test-data.html
A mesma consulta realizada diretamente na instância via SSH, retorna a mesma lentidão?
Pra utilizar o isql, precisa passar o caminho inteiro do binário via webssh.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('seria: /opt/firebird/bin/isql', 'Guias', 'docx, importado', 'Importado via script', 'Tente realizar o teste solicitado diretamente na instância para verificarmos se ocorre a mesma demora em relação ao IBExpert, por favor.
A lentidão no acesso, seria do acesso direto ao banco de dados, ou no processamento das requisições vindas de alguma aplicação?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Lentidão por conta de processos', 'Guias', 'docx, importado', 'Importado via script', 'A respeito das lentidões do firebird, recomendo verificar como está a otimização do mesmo, você pode usar a calculadora https://cc.ib-aid.com/ informando os recursos da sua instância e outras informações solicitadas
Atenção toda exclusão de instancia é permanente.
infelizmente, após a exclusão de um ambiente, não é possível realizar a restauração de snapshot pois é necessário que ele exista para que o procedimento seja realizado e, no momento de excluir, o cliente confirma que irá deletar todos os dados permanentemente.
Cliente fala de configurar um acesso de uma aplicação EXE no banco de dados para não consumir trafego pela saveincloud.
R: A comunicação entre o Banco e o Exe, estando na mesma máquina, não são cobrados.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O exe comunica com o banco em localhost?', 'Guias', 'docx, importado', 'Importado via script', 'Cliente comenta "sobre consumo de trafego em média 20 Giga por dia … para acesso via terminal 40 usuários media, está muito alto"
Valor de tráfego está normal para 40 Usuários conectados no TS.
Dividindo o consumo, temos em média um consumo de 500MB de banda usuário/dia
Levando em consideração o período da jornada de trabalho de 8h, equivalem a 62,5MB por hora, para cada usuário.
Em uma conexão RDP padrão, são utilizados entre 100kbps a 300kbps, a depender da atividade, em uma hora, são gerados de 45MB a 135MB.
20GB de tráfego para 40 usuários, significa um uso moderado, sem uso intenso, como vídeos ou outras atividades entre o PC local e a VM (Conexão RDP)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problemas de conexão de rede', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntar se está tendo lentidão no momento', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como está ocorrendo essa lentidão/queda?', 'Guias', 'docx, importado', 'Importado via script', 'Se for problema no banco, realizar a inspeção dentro da instância do banco');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Quedas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntas:Como foi percebida essa queda?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ainda está tendo esta queda?', 'Guias', 'docx, importado', 'Importado via script', 'Realize um teste de ping, tracert e nos informe seu ip de saída, por gentileza');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O seu ip de saída pode ser obtido em meuip.com.br', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Realizar um tracerout', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Comandos para testes de rede:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Diagnóstico Contínuo(quedas):', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ping', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('mtr ipdesaída -z', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('mtr -rw [ip_ou_dominio]', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('traceroute --icmp', 'Guias', 'docx, importado', 'Importado via script', '(Se houver perda de pacotes (Loss%) logo nos primeiros saltos, o problema costuma ser no host ou no switch virtual. Se for em saltos distantes, é um problema de rota na internet.)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ping -D [ip_destino]', 'Guias', 'docx, importado', 'Importado via script', 'Útil para deixar rodando e registrar exatamente quando a queda ocorreu.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ping -i 0.2 [ip]', 'Guias', 'docx, importado', 'Importado via script', 'Para um ping mais rápido (agressivo) para capturar micro-quedas (requer root).');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Resolução de DNS', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('nslookup dominio.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os apontamentos do ip', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nslookup', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja fixar um DNS', 'Guias', 'docx, importado', 'Importado via script', 'https://treinamento.suporte.sic.tec.br/docs/virtuozzo-paas/configurando-dns-vm-windows/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ele informa o DNS que quer fixar', 'Guias', 'docx, importado', 'Importado via script', 'Falha de DNS (O "Query time". Se estiver muito alto ou der timeout, o problema é o servidor DNS configurado no /etc/resolv.conf.)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ICMP', 'Guias', 'docx, importado', 'Importado via script', 'O retorno "Esgotado o tempo limite do pedido" em um tracert não significa necessariamente uma falha na rota ou na comunicação.
É bastante comum que alguns roteadores pertencentes às operadoras ou provedores de trânsito estejam configurados para não responder (ou limitar respostas) às mensagens ICMP utilizadas pelo comando tracert. Nesses casos, o salto aparece como "tempo limite esgotado", mas o tráfego continua sendo encaminhado normalmente para os próximos equipamentos.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Site não abre', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('curl -I http://dominio.com', 'Guias', 'docx, importado', 'Importado via script', 'Verificar se o serviço HTTP responde.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Curl -v http://ipprivado:porta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifica se fecha conexão com a instância', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('telnet host | porta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifica se há conectividade com a porta alta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Banco de dados está sofrendo quedas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como os senhores acessam o banco de dados?', 'Guias', 'docx, importado', 'Importado via script', 'Existe alguma conta teste, e um teste que possamos realizar para testarmos do nosso lado?
Como a app do Timoneiro se comunica com o Banco, seria via IP privado mesmo?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Onde posso verificar as configurações do banco e de conexão?', 'Guias', 'docx, importado', 'Importado via script', 'A lentidão no acesso, seria do acesso direto ao banco de dados, ou no processamento das requisições vindas de alguma aplicação?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente comenta sobre quedas que está tendo em seu ambiente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como o problema está sendo no Nginx', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('verifique a pasta do nginx/error.log ; php_erros.log ;  php-fpm.log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status nginx', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Estatísticas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente com dúvida a respeito da estatistica na plataforma', 'Guias', 'docx, importado', 'Importado via script', 'O senhor pode passar o mouse por cima do grafico que é exibido detalhadamente o limite, o uso no determinado dia que foi usado.
Apenas informando o senhor, não é possível escolher o mês que desejar, só é possível visualizar de até 1 mês atrás.
Se desejar um monitoramento mais detalhado o senhor pode configurar no ambiente, também é possível olhar o historico de faturamento e lá verá quanto de cloudlets dinamicos consome por hora para analisar melhor os custos, sendo possível por lá ver de outros meses se desejar.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta os motivos de quedas de determinado dia', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Que tipo de queda foi identificada por vocês?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique as estatísticas, caso tenha algo nas estatísticas:', 'Guias', 'docx, importado', 'Importado via script', 'Vejo pelas estatísticas de vocês que houve uma queda no uso de recursos da sua VM, isso pode se tratar de um processo que consome bastante recurso e por ventura acabar consumindo menos, como a falha de um serviço em execução dentro da VPS, por exemplo. No entanto, o cliente é responsável por fazer o gerenciamento dos serviços e a sua execução dentro da VPS.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SLB', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente não possui ip publico e quer acessar https:', 'Guias', 'docx, importado', 'Importado via script', 'Deve ativar o SSL integrado na topologia.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após isso apenas para reforço:', 'Guias', 'docx, importado', 'Importado via script', 'Apenas reforçando, você está utilizando o SLB no momento, ele possui limitação na largura de banda (até 30Mbps) e um limite de conexões simultâneas (até 50 conexões simultâneas), sendo recomendado para ambientes de testes/homologação. Para ambientes de produção, recomendamos atribuir um IP público no NGINX e utilizar o Let’s Encrypt para gerar o certificado SSL para o acesso via https.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente gostaria de modificar página de erro 502', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Necessário utilizar um domínio próprio e desativar o acesso via SLB', 'Guias', 'docx, importado', 'Importado via script', 'Essa página é gerada automaticamente pela plataforma, no SLB.
Para uso de domínio próprio, precisará de uma instancia do load balancer com um endereço IP para receber as requisições.
Sendo possível configurar as respostas para acesso diretamente no Nginx, sem que as mesmas passem pelo SLB da plataforma.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('CWP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso não possua acesso ao terminal do cwp no termius', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('acesse h - 3', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ssh ip -p porta do cwp', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ctrl + c', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('E tente novamente pelo termius', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar envio de e-mail', 'Guias', 'docx, importado', 'Importado via script', 'Sempre verificar no dns checker o NS para onde está o dominio e ver se as configurações estão certas dentro do NS');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Realizar um envio e ver se está 10/10 no tester', 'Guias', 'docx, importado', 'Importado via script', 'https://mail-tester.com/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O site do cliente está erro 500 internal', 'Guias', 'docx, importado', 'Importado via script', 'Verificar a integridade dos arquivos, por exemplo /public_html/index.php');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ver se está com nogroup mudar, exemplo de um stat:', 'Guias', 'docx, importado', 'Importado via script', 'Access: (0644/-rw-r--r--)  Uid: ( 1044/parojuco)   Gid: (   99/  nobody)
Access: (0644/-rw-r--r--)  Uid: ( 1044/parojuco)   Gid: ( 1044/parojuco)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente não está conseguindo acessar diretório pelo file manager', 'Guias', 'docx, importado', 'Importado via script', 'Verificar se no diretório que ele está acessando não existe algum arquivo com nomenclatura de “´” “^” “~”.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No caso podemos realizar um cp para um diretório exemplo, como /tmp', 'Guias', 'docx, importado', 'Importado via script', 'Pois se existir arquivo com isso, irá impedir o acesso.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Backups de cwp', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ficam no diretório', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/backup_jelastic_new', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Vai ter que dar um cp no diretório do /home do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se está com espaço em disco cheio no CWP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('du -sh /home/* | sort -hr', 'Guias', 'docx, importado', 'Importado via script', 'du sh.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('geralmente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cd /home/tmp_bak/', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('rm nos arquivos que tem lá', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('rm -rf /home/tmp_bak/.backup*', 'Guias', 'docx, importado', 'Importado via script', 'Depende das situações pergunta se pode ser excluído algo que não conhece sempre que for excluir algo');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar quantos e-mails na fila', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('mailq | grep -c "support@monsurefest.com.br"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Limpeza de fila', 'Guias', 'docx, importado', 'Importado via script', 'postqueue -p | awk '' /^[A-F0-9]/ {id=$1; gsub(/[*!]/,"",id)} /support@monsurefest.com.br/ {print id} '' | postsuper -d -');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mudando o ip de saída do CWP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('smtp_bind_address no /etc/postfix/main.cf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Teste de envio de e-mail', 'Guias', 'docx, importado', 'Importado via script', 'https://mail-tester.com/
A pessoa que está com problema de e-mail deve enviar para o e-mail que aparece no site.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro ao acessar webmail', 'Guias', 'docx, importado', 'Importado via script', 'vi /usr/local/cwpsrv/var/services/roundcube/program/lib/Roundcube/rcube_spoofchecker.php');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Coloque', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('return false;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Antes de', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('// Spoofchecker is part of ext-intl (requires ICU >= 4.2)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('$checker = new Spoofchecker();', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro no Servidor: Failed to send FETCH command', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Webmail ERRO no servidor', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('não foi possível carregar a mensagem do servidor', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode ser erro de limite no dovecot', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar o /var/log/dovecot.log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('talvez seja necessário aumentar algum limite do dovecot', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/etc/dovecot/dovecot.conf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro 502 bad gateway', 'Guias', 'docx, importado', 'Importado via script', 'Ver se encontra algo nos logs primeiro, como usuário que não existe sendo requisitado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se for usuário inexistente verificar qual é nos logs e criar ele:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/etc/passwd e /etc/group', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para subir o serviço php', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os serviços php-fpm', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sh /scripts/restart_cwpsrv', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ultimo caso de todos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Faça isso:', 'Guias', 'docx, importado', 'Importado via script', 'cp /usr/local/cwp/php71/etc/php-fpm.d/users/NomeUser.conf /root/NomeUSER_backup.conf');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('rm -f /usr/local/cwp/php71/etc/php-fpm.d/users/NomeUser.conf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sh /scripts/restart_cwpsrv', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sh /scripts/update_cwp', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente com problemas de envio e recebimento no CWP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar como estão as configurações do DNS do cliente', 'Guias', 'docx, importado', 'Importado via script', 'No nosso CWP temos o email routing, verifique se a conta é remote/local
Temos também a opção de List DNS Zone no cwp para editar por ali caso não conseguimos no painel do cliente');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('IN A apontado para o ip do servidor ou load balancer do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('IN MX apontado para o domínio do cliente ou mail.dominio', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pop, pop3, SMTP apontados para o domínio do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Configurações de iphone', 'Guias', 'docx, importado', 'Importado via script', 'https://billing.saveincloud.com/knowledgebase/1/Configurando-e-mail-no-iPhone---POP.html
https://billing.saveincloud.com/knowledgebase/4/Configurando-e-mail-no-iPhone---IMAP.html');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro 502 Bad Gateway - cwpsrv', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Dentro do container:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/scripts/restart_cwpsrv', 'Guias', 'docx, importado', 'Importado via script', 'Caso esteja dando algum b.ozin de enviar e-mail e receber em apenas um e-mail:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl restart postfix', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl restart dovecot', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Diretorio de CWP invadido', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique cd /home/nomedocliente', 'Guias', 'docx, importado', 'Importado via script', 'Para decodificação.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('echo "" | base64 -d', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se os processos estão rodando no process list do cwp', 'Guias', 'docx, importado', 'Importado via script', 'Perguntar onde subiu o site novo se subiu algum novo.
Pelo que foi possível verificar, os arquivos do site aparentam ter sido alterados, possivelmente com a inserção de conteúdos maliciosos, assim quebrando o site(deixando-o fora do ar).
Recomendo a realização de uma análise detalhada dos arquivos e, caso confirmada a inconsistência, a restauração do site a partir de um backup íntegro, bem como a reconstrução dos arquivos comprometidos.
Ressalto que esse tipo de análise e reconstrução foge do escopo do suporte, sendo necessário o envolvimento de um responsável técnico pelo desenvolvimento ou manutenção do site.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Recebendo spam do proprio e-mail/ Spoofing', 'Guias', 'docx, importado', 'Importado via script', 'Isso se trata de e-mail spoofado, que é uma técnica utilizada por spammers onde eles falsificam o remetente da mensagem para que pareça que o e-mail foi enviado por você mesma ou por alguém conhecido.
É como se alguém enviasse uma carta pelos Correios colocando o seu próprio endereço como remetente, a carta não saiu da sua casa, mas parece que sim. Isso é feito justamente para enganar e passar pela impressão de que é uma mensagem legítima.
Esses e-mails não estão sendo enviados a partir da sua conta nem do nosso servidor, são mensagens externas que apenas imitam o seu endereço para parecerem confiáveis. Do nosso lado não há nenhuma ação a ser tomada pois o problema não se origina em nossa infraestrutura.
spammers possuem listas com milhões de endereços de e-mail coletados pela internet ao longo do tempo, seja por vazamentos de dados, cadastros em sites, ou simplesmente por tentativas automáticas. Ao identificar que um endereço está ativo e recebendo mensagens, eles não hesitam em utilizá-lo como alvo e até como remetente falso, justamente para aumentar a chance de a mensagem passar despercebida e ser aberta. Infelizmente é algo muito comum e que qualquer e-mail ativo está sujeito a sofrer.
O que recomendamos é que você crie um filtro diretamente no seu cliente de e-mail para mover essas mensagens automaticamente para a lixeira ou para uma pasta de spam.
Cliente quer saber a configuração que precisa ser feita após apontar dominio no registro.br (CWP)
Os nameservers (ns) devem ser respectivos ao servidor em que seu dominio está hospedado, após isso deve criar um apontamento tipo A primeiramente de seu dominio para o ip do servidor.
Depois criar apontamentos como MX, CNAME, e configurar o spf, DMARC, DKIM, para que, as contas de email tenham uma nota de segurança boa');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('GPT pra bloqueio no sender_access', 'Guias', 'docx, importado', 'Importado via script', 'Preciso de um bloqueio em meu servidor do CWP, crie no padrão do regex o bloqueio dos seguintes domínios:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('regexp:/etc/postfix/sender_access', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo de padrão regex', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/^.*@dominio\.com$/        REJECT', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/^user[0-9]+@gmail\.com$/  REJECT', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/@spammer.*\.com$/         REJECT', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Veja como já está no arquivo sender_access do servidor:', 'Guias', 'docx, importado', 'Importado via script', 'Crie da mesma forma para os novos domínios informados.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('postmap /etc/postfix/sender_access', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl reload postfix', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pode acessar o webmail pelo servidor que está', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Por exemplo:', 'Guias', 'docx, importado', 'Importado via script', 'https://server7.pureteserver.com/roundcube
Cliente deseja acessar o webmail com ssl por exemplo webmail.dominio.com.br');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique se o dominio está apontado para o ip do servidor', 'Guias', 'docx, importado', 'Importado via script', 'Se não estiver, não é possível, ele pode acessar somente pelo server.pureteserver/roundcube
Verifiquei que este dominio não está apontado para o nosso servidor. Nesse caso para ativar o certificado ele teria que estar apontando.
O senhor tem opção de utilizar este link para realizar o acesso do seu webmail com https:
Entretanto caso deseje utilizar o dominio informado é necessario que o senhor realize o apontamento.
Caso o cliente tenha dúvidas sobre apontar no registro.br e tenha apontamentos já feito
Nesse caso senhor eu recomendo que mantenha como está, pois seria necessario realizar o apontamento do dominio principal e isso causaria a indisponibilidade do seu site, pois ele está hospedado em outro local. Infelizmente não é possivel somente apontar os secundarios como o webmail.interdentaldf.com.br e mail.interdentaldf.com.br.
Dado as circunstâncias, recomendo que utilize o webmail do cwp server* mesmo (server*.pureteserver.com/roundcube)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Site do cliente não está subindo na hospedagem compartilhada / CWP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique o domínio no registro.br, provavelmente domínio congelado', 'Guias', 'docx, importado', 'Importado via script', 'Ele deve realizar o pagamento com o e-mail que é informado logo abaixo no registro.br');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após realizar o pagamento deve esperar a propagação do domínio', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente não acesso ao painel CWP control pane', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar espaço em disco do pacote', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Realizar um pequeno aumento no espaço em disco e acessar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar o que está consumindo a hospedagem de e-mail do cliente', 'Guias', 'docx, importado', 'Importado via script', 'Se o cliente solicita mudança de senha no FTP(hospedagem compartilhada CWP)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Informar no e-mail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('host: ftp.dominio.com.br', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('usuario: o usuario dele q ta no CWP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('senha: ??? a senha dele', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como aumentar o limite de espaço em disco no CWP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Deve ir em Disk Space Usage:', 'Guias', 'docx, importado', 'Importado via script', 'Selecionar lapis em Usage da conta e colocar o limite de espaço em disco definido.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No CWP ao tentar acessar conta da erro 502 Bad Gateway', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Normalmente qnd da esse erro:', 'Guias', 'docx, importado', 'Importado via script', 'cp /usr/local/cwp/php71/etc/php-fpm.d/users/NOME_USER.conf /root/NOME_USER_backup.conf');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('rm -f /usr/local/cwp/php71/etc/php-fpm.d/users/NOME_USER.conf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sh /scripts/restart_cwpsrv', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sh /scripts/update_cwp', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se não funcionar reiniciar o servidor, problemar maior JEVVVVV', 'Guias', 'docx, importado', 'Importado via script', 'Erro 502 Bad Gateway CWP NAE acesso para reiniciar servidor do CWP NAE
Podemos simplesmente reiniciar no painel do cwp (Restart CWP Services)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ou', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ssh root@ip -p 7580', 'Guias', 'docx, importado', 'Importado via script', 'porem nem sempre é 7580, na maioria dos casos nao precisa colocar esse -p da porta');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('senha do passbolt', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/script/restart_cwpsrv', 'Guias', 'docx, importado', 'Importado via script', 'Cliente está com erro ao enviar e-mail, ele recebe e-mail, mas não envia SMTP error(504)
Realizar teste de envio do e-mail dele para outro pelo webmail, verificar
Se exibido erro de smtp informal o pessoal (talvez tenha que rebuildar o cwp)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso de certo, erro no outlook ou mail do ios', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso cliente teima que é erro de servidor', 'Guias', 'docx, importado', 'Importado via script', 'Em certas circunstâncias o Outlook pode ter atualizado e mudado a forma que estava cadastrados os e-mails utilizados.
Por outro lado seguindo os prints enviados pelo webmail é possível ver que o servidor ta conseguindo enviar e receber normalmente o que descarta essa possibilidade de erro nele.
Mudando IPs de saída pelo CPanel e CWP - Bloqueio do Ip de saída (E-mail)
https://treinamento.suporte.sic.tec.br/docs/hospedagem-de-sites-dns/mudando-ips-de-saida-pelo-cpanel-e-cwp/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Acessar o CPanel do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Acessar o terminal', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Realizar o seguinte comando:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chattr -i /etc/mailips', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('nano /etc/mailips', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Procurar pelo dominio do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Utilizar um ip disponível e realizar a troca do ip de saída', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('salvar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chattr +i /etc/mailips', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja incluir um e-mail no CWP', 'Guias', 'docx, importado', 'Importado via script', 'Mostrar onde criar a conta no CWP e selecionar o envio de redefinição de senha para o e-mai desejado');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Acessar o CWP do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Acessar o FileManager', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caminho etc/postfix/main.cf (botão direito, editar conteúdo)', 'Guias', 'docx, importado', 'Importado via script', 'Dentro do main.cf localizar o parâmetro smtp_bind_address.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso seja bloqueio por spam realizar um ticket', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Temos serviços de hospedagem de sites compartilhados, tipo hosgator?', 'Guias', 'docx, importado', 'Importado via script', 'No marketplace temos uma solução pré pronta de CWP. segue a documentação sobre: https://docs.saveincloud.com/cloudlets/marketplace/hospedagem/cwp');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Realização de apontamento do MX para o endereço do servidor', 'Guias', 'docx, importado', 'Importado via script', 'Caso não possua acesso ao CWP de gerenciamento, precisarei que nos envie um email para suporte@saveincloud.com solicitando novas credenciais.
Assim posso realizar a alteração de uma nova senha e enviá-la como resposta.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cPanel', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Acesso ao ipcompany', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ipc', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ou pegar o ip e colocar em ip pool', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('2 fatores no cPanel', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('whmapi1 --help | grep -i twofactor', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('twofactorauth_disable_policy', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('twofactorauth_enable_policy', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('twofactorauth_generate_tfa_config', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('twofactorauth_get_issuer', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('twofactorauth_get_user_configs', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('twofactorauth_policy_status', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('twofactorauth_remove_user_config', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('twofactorauth_set_issuer', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('twofactorauth_set_tfa_config', 'Guias', 'docx, importado', 'Importado via script', 'whmapi1 comando desejado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Bloqueio no nosso ip, acesse o termius', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se o ip está bloqueado:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('csf -g SEU_IP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Remover o ip da lista de bloqueio:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('csf -dr SEU_IP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para remover ip bloqueado temporário:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('csf -tr IP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Reiniciar o csf para aplicar:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('csf -r', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Trocando ip de saída cPanel', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chattr -i /etc/mailips', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('nano /etc/mailips', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Digite * ip publico como o outro', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Coloque o ip novo na frente do domínio do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chattr +i /etc/mailips', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl restart exim', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl restart dovecot', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Liberação de ip bloqueado na Microsoft', 'Guias', 'docx, importado', 'Importado via script', 'https://sender.office.com/
Cliente informa que o e-mail é enviado e vai diretamente pra uma caixa de entrada automaticamente
Pelo comportamento descrito, é muito provável que exista alguma regra, filtro automático ou política antispam tratando os e-mails enviados para o endereço antigo, chegou a verificar isso?
Nem mesmo na ferramenta que esta usando, no caso outlook, não há regra criada?
Verificar na conta se há alguma regra criada no cPanel no webmail.
O ideal é criar uma regra para que todos os próximos e-mail dessa conta ou com esse titulo seja marcado como importante e enviado para caixa de entrada, ele pode ter jogado para lixeira por N motivos, conteúdo, arquivo em anexo, nome dos arquivos, ou até mesmo o domínio do próprio remetente
Cliente que está com erro no cPanel 550 this message contains a virus or other harmful contente
O senhor pode solicitar ao cliente para que ele envie o arquivo compactado, por gentileza?
Verifiquei do nosso lado e não há nenhum tipo de “bloqueio”. No entanto, identificamos que a dificuldade no envio pode estar relacionada à presença de macros no arquivo, o que ocasionalmente aciona os filtros de segurança do Imunify. Acredito que se o arquivo for compactado será possível realizar o envio.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Outros casos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pedir o e-mail que está tendo este erro', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('entrar no Plugins Configure ClamAV Scanner', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Retirar o Scan Mail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se ainda é identificado como vírus', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('(não tinha dado certo)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perdeu o acesso ao cPanel', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pedir solicitação de troca de senha', 'Guias', 'docx, importado', 'Importado via script', 'Verifiquei que há muitas tentativas de acesso a sua conta vindo de ips distintos, isso pode estar ocasionando o bloqueio do usuario. Também verifiquei que o senhor possui algumas subaccounts, recomendo que realize a troca de senhas delas.
Caso o senhor deseje podemos realizar a troca do usuario do painel para um nome mais discreto, entretando isso também irá alterar o usuario do ftp etc.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erros de envio referente a arquivos com macros', 'Guias', 'docx, importado', 'Importado via script', 'Geralmente o antivirus ClamAV bloqueia o arquivo por padrão.
Antivirus ClamAV está realizando o bloqueio dos e-mails que contém arquivos com macro. Isto é um padrão de segurança esperado, pois um arquivo de macro que não seja legítimo pode conter um código malicioso e comprometer o cliente ao ser executado.
Para que fosse possível realizar o envio do e-mail com o anexo que contém macro, desativamos o serviço do antivirus no cPanel.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para desativar:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('service manager / desmarque ClamAV Daemon', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('DNS reverso:', 'Guias', 'docx, importado', 'Importado via script', 'https://treinamento.suporte.sic.tec.br/docs/uteis/criacao-de-dns-reverso/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Configurar o PTR', 'Guias', 'docx, importado', 'Importado via script', 'Perguntar qual o PTR precisa que seja configurado? Qual ip e qual dominio?
Verifique se já existe algum PTR configurado para o ip informado: https://mxtoolbox.com/SuperTool.aspx');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Explicação de apontamento', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('CWP Control', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Funções DNS', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Editor de zona DNS', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Selecione um domínio', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Coloque seu domínio', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após isso:', 'Guias', 'docx, importado', 'Importado via script', 'Podemos então modificar o apontamento MX existente, e criar um mail para o domínio.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Em adicionar registro coloque MX Mail Server', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Em nome do Registro digite: @', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nome do servidor: dominio.com', 'Guias', 'docx, importado', 'Importado via script', 'TTL deixe vazio.
e em prioridade, digite 0.
Dessa maneira, o DNS avisará para todos que enviarem mensagem para @dominio.com que o servidor de e-mail está localizado em mail.dominio.com');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa que o e-mail é enviado, mas não é recebido', 'Guias', 'docx, importado', 'Importado via script', 'Verificar como está configurado as portas do servidor de entrada e saída');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Veja se a porta informada precise de criptografia', 'Guias', 'docx, importado', 'Importado via script', 'Tentar realizar a liberação no flush all blocks e verificar se funciona');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se o e-mail está sendo enviado para outro e-mail diferente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se estiver bloqueado deve ser feito a troca de ip de saída no cpanel', 'Guias', 'docx, importado', 'Importado via script', 'https://treinamento.suporte.sic.tec.br/docs/hospedagem-de-sites-dns/mudando-ips-de-saida-pelo-cpanel-e-cwp/
Cliente informa que está recebendo um volume excessivo de e-mails suspeitos (CWP)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Oque deve ser feito?', 'Guias', 'docx, importado', 'Importado via script', 'Os RBLs (spamhaus, spamcops, sorbs) da configuração do /etc/postfix/main.cf estão comentados, pode ser realizado a ação de descomentar e ver se vai dar uma parada. No entanto, o RBL pode bloquear email legitimo se o remetente utilizar DNS recursivo aberto (8.8.8.8, 1.1.1.1 entre outros)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('por ex:', 'Guias', 'docx, importado', 'Importado via script', 'smtpd_recipient_restrictions = check_policy_service inet:127.0.0.1:10031, permit_sasl_authenticated, permit_mynetworks, reject_unauth_destination, reject_non_fqdn_sender, reject_non_fqdn_recipient, reject_unknown_recipient_domain, reject_rbl_client zen.spamhaus.org, ,reject_rbl_client bl.spamcop.net, reject_rbl_client dnsbl.sorbs.net');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre limite de nodes', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode ter até 48 nodes por ambiente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('16 nodes dentro de uma mesma camada', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Possível verificar em saldo/limites e preços/limites de conta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('IPV4', 'Guias', 'docx, importado', 'Importado via script', 'o IPv4 público possui um custo mais elevado devido à sua disponibilidade limitada, enquanto o IPv6 oferece um espaço de endereçamento praticamente inesgotável, refletindo em um custo menor para sua utilização.
Cliente possui serviço que utiliza ipv4 ele precisa contratar um ipv4 com a gente?
Sim, exatamente, mas se for comunicação interna, pode usar o ipv4 interno do ambiente');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ira causar indiponibilidade no ambiente após adicionar o ipv4?', 'Guias', 'docx, importado', 'Importado via script', 'Se ele tiver usando endpoint, sim, pois ativação do IP publico, vai anular o endpoint já criado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ele é usado via nginx de outro ambiente, usando o ip ambiente interno', 'Guias', 'docx, importado', 'Importado via script', 'Entendi, dependo dessa integração, consegue usar esse mesmo IP que já usa hoje
Mas ai foge um pouco da questão de microserviços né, onde o ideal é ter tudo bem separado para ter uma boa gerencia e facil manutenção
Novamente selecione adicionar registro. mas dessa vez selecione A -IPv4 Address');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('nome de registro: mail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('endereço: seuip', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('TTL: 14400', 'Guias', 'docx, importado', 'Importado via script', 'Cliente com problema da própria aplicação ou arquivo/administração de ambiente
A administração do ambiente é por conta do cliente, não realizamos gestão ou analises dessa natureza.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Configuração de email tatransportes', 'Guias', 'docx, importado', 'Importado via script', 'Sempre que a configuração solicitar um endereço de entrada/saída, deve utilizar o endereço: server8.pureteserver.com
O tipo de conexão deve ser IMAP, para não afetar a sincronização do servidor.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SMPT: porta 465 / IMAP: porta 993', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('caso uma não funcione, utilize a outra:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nome de utilizador: O seu endereço de e-mail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Servidor de entrada: server8.pureteserver.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Porta IMAP: 143', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Servidor de saída: server8.pureteserver.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Porta SMTP: 25', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nome de utilizador: O seu endereço de e-mail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Servidor de entrada: server8.pureteserver.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Porta IMAP: 993', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Servidor de saída: server8.pureteserver.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Porta SMTP: 465', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tipo de Criptografia nos dois (IMAP e SMPT): SSL/TLS', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não foi possível se conectar ao servidor de entrada (POP)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo de mail.nascimetal.com.br com SSL/TLS', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Username: Your Email Address', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Incoming Server: mail.nascimetal.com.br', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('IMAP Port: 993', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('POP3 Port: 995', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Outgoing Server: mail.nascimetal.com.br', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SMTP Port: 465', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Non-SSL/TLS', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Username: Your Email Address', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Incoming Server: mail.nascimetal.com.br', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('IMAP Port: 143', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('POP3 Port: 110', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Outgoing Server: mail.nascimetal.com.br', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SMTP Port: 25', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Snapshot', 'Guias', 'docx, importado', 'Importado via script', 'https://treinamento.suporte.sic.tec.br/docs/snapshots-backup/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Snapshots em:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('hn001-vinl, hn005-vinl', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('hn004vinw', 'Guias', 'docx, importado', 'Importado via script', 'hn006-vinl, hn003-vinl, hn015-vinl, hn008-vinl, hnbkp02-vin, hn010-vinl, hn002-vinl');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Informar Infra', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Comando para procurar as datas snapshot/backup', 'Guias', 'docx, importado', 'Importado via script', 'auditoriabkp → usado para auditar backups recentes e realizar restauração em ambientes de restore.
findbackup → usado para localizar backups de um ambiente específico no servidor, listando UUID, CTID e as datas disponíveis.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl list -a | grep ip público/ CTID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Moda antiga:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl backup-list UUID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Calculo de snapshot', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O calculo mesmo de tempo geralmente é 1 hora a cada 100GB', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Finge que 1GB 10min', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Snapshot', 'Guias', 'docx, importado', 'Importado via script', 'https://treinamento.suporte.sic.tec.br/docs/snapshots-backup/processo-de-restauracao-de-snapshot/
https://billing.saveincloud.com/restore-snapshot
temos a opção do snapshot das instancias com um custo de R$80,00, que tem retenção de até 7 dias, não recuperamos pastas ou arquivos específicos, restauramos a instancia inteira a partir de uma data selecionada entre esses 7 dias.
Lembrando que o snapshot é uma imagem exata da sua instância no momento em que foi gerado, dessa forma, todo o conteúdo do seu node será sobrescrito com os dados da data que você solicitar, ou o senhor pode optar para a criação de outro ambiente que será feito o snapshot neste novo ambiente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso queira mais informações, pode acessar o link abaixo:', 'Guias', 'docx, importado', 'Importado via script', 'https://billing.saveincloud.com/restore-snapshot');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('é realizado no período da noite entre 19h e 23h', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pos pago snapshot', 'Guias', 'docx, importado', 'Importado via script', 'pós-pago e gaste acima de 5k mensais e pedir pra deixar o pagamento junto com a fatura no final do mês');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Enviar e-mail com a fatura para:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('karina.ramos@saveincloud.com e marcos.raso@saveincloud.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O valor abate dos créditos ou tem que fazer pagamento a parte?', 'Guias', 'docx, importado', 'Importado via script', 'A cobrança é feita a parte, enviei a fatura via e-mail do proprietário da conta.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Apenas informando que as datas disponíveis são essas:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('00/00/0000 00:00:00', 'Guias', 'docx, importado', 'Importado via script', 'Daremos início no procedimento, a instância ficará indisponível até ser finalizado.
irei informar tanto via e-mail quanto aqui quando o procedimento terminar');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar snapshot / backup ativo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Listar arquivos backups', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ls -lt /vz/backups', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se a instância de backup existe', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl status UUID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifica se a rotina de backup está em processo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux | grep backup', 'Guias', 'docx, importado', 'Importado via script', 'É pra aparecer o processo de prlctl com o node da instância, algo assim');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Snapshot longo crie uma sessão tmux', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tmux new -s <nome-sessão>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tmux ls', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tmux attach -t <nome-sessão>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tmux kill-session -t teste1', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Criar sessão', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('screen -S <nome-sessão>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Listar sessões', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('screen -ls', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Entrar em uma sessão:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('screen -r <nome-sessão>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sair sem fechar:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('CTRL+A, D', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Matar a sessão:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('screen -S <nome-sessão> -X quit', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ou, estando dentro:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('exit', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se já esta rodando o restore', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux grep restore', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Clone da pra achar o CTID do container e ver quanto ta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifica os 15 maiores containers do usernode', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('du -sh /vz/private/* |sort -rh | head -n 15', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Veja quanto falta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('du -sh /vz/private/CTID do que está aumentando com o tempo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Comando do victor', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux | grep -iE ''vzm|prl|rsync''', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Atachar um backup na instância:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Desligar a instância', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl set {EnvUUID} --backup-add {ID_DO_BACKUP}', 'Guias', 'docx, importado', 'Importado via script', 'https://www.virtuozzo.com/server-docs/users-guide-managing-virtual-machine-and-container-backups/#attaching-backups-to-linux-virtual-machines');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar o disco', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('df -h', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('fdisk -l', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('lsblk -l', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('montar o diretório que ficara a montagem, ex:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('mkdir /mnt/montagem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('mount /dev/ploop***(disco novo) /mnt/montagem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cd /mnt/montagem', 'Guias', 'docx, importado', 'Importado via script', 'estará lá toda a instância.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ou', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Montar um volume logico no Nodo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl exec NomeAmbiente mount /dev/ploop28261p1 /mnt/backup1', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ligar instância', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se está em uso:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('mount | grep /mnt/montagem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Desmontar:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('umount /mnt/montagem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se está em uso ainda:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('df -h | grep /mnt/montagem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Identificar o hdd correto do backup', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl list -i centos-vps.278466.cwp-teste', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Deletar o backup do container no usernode:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl set NomeVM teste --device-del (hdd correto)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se não der certo, remova enquanto ta desligado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Listar o dispositivo ploop para encontrar seu backup para desatachar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ploop list | grep UUID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Snapshot em Ambiente novo', 'Guias', 'docx, importado', 'Importado via script', 'Olá, obrigado por fornecer as informações, vamos iniciar o processo de restauração, teremos que desligar o ambiente temporariamente para que o processo seja realizado, após finalizar informaremos.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('LEMBRA DE MIGRAR', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl list | grep CTID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Backup antes', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl backup NomeVM -i', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifica se não ta gerando backup antes', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux | grep backup', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifica o tamanho do container desligado/ligado ou clonando', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('du -sh /vz/private/CTID', 'Guias', 'docx, importado', 'Importado via script', 'Criar uma sessão caso seja longo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tmux new -s <nome da sessão>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sair  da sessão', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('CTRL + B - D', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tmux ls', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tmux attach -t  <nome da sessão>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tmux kill-session -t  <nome da sessão>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl restore {UUID} -t {UUID}.8 -n 999999', 'Guias', 'docx, importado', 'Importado via script', 'Restaurar em outro usernode que vai receber o backup pois o usernode atual não tem espaço
prlctl restore  {Uuid} -t {Uuid}.4 -n 999999 -s (ip privado do usernode que possui o backup)
ENVINAME=''999999''; vzlist -a -o ctid,name,status,uuid | grep $ENVINAME');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vzctl set uuid --ipdel all --save', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vzmlocal uuid:999999', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('./ct_replace_vz7_new.sh 999999 CTID_AMBIENTE_CRIADO_PARA_RESTORE', 'Guias', 'docx, importado', 'Importado via script', 'Olá <nomedocliente>, o processo de restauração foi finalizado e o ambiente foi iniciado com sucesso. Caso necessite de algum auxílio estamos à disposição.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Snapshot no mesmo ambiente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Backup antes de tudo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl backup NOMEVM -i', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vzctl stop CTID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('prlctl restore UUID -t backup-id', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vzctl start CTID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente comenta que após migração o Load Average diminui/LA diminui', 'Guias', 'docx, importado', 'Importado via script', 'o processo de migração desliga e liga a instância, pode-se perceber que após esta ação a instância realmente diminuiu o LA e isto pode estar relacionado ao fato que o desligamento zerou conexões, filas de I/O e processos em execução.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SSL/Certificado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente questiona se o SSL cai a cada 90 dias', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Atualiza automaticamente a cada 90 dias sim', 'Guias', 'docx, importado', 'Importado via script', 'Mas pode ser que o script de renovação pode ter falhado desta vez.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Instalação do certificado SSL/https', 'Guias', 'docx, importado', 'Importado via script', 'Você pode realizar a instalação do Lets Encrypt e configurar o bloco 443 no nginx para receber as requisições e redirecionar para o IP interno conforme faz via HTTP
Veja a nossa documentação sobre este processo: https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/load-balancer/nginx/http');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Lets encrypt', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro no addon de letsencrypt Let''s encrypt', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso não esteja conseguindo instalar o addon do lets', 'Guias', 'docx, importado', 'Importado via script', 'curl -s https://purge.jsdelivr.net/gh/jelastic-jps/lets-encrypt@master/scripts/install-ssl.js
trocando o install-ssl.js no final pra todos os arquivos que estiverem retornando 301 no log');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro add-on Lets encrypt / let''s encrypt não baixa:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Error: "script = omd-nginx-bl-letsencrypt-ssl not found"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar quem foi o usuário que criou o add-on', 'Guias', 'docx, importado', 'Importado via script', 'Cliente deseja realizar uma instalação de certificado SSL WildCard externo');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O certificado Wildcard seria um certificado externo?', 'Guias', 'docx, importado', 'Importado via script', 'Quais arquivos do certificado o cliente possui em mãos? .crt, .pem, .key etc?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ele utiliza .pfx', 'Guias', 'docx, importado', 'Importado via script', 'O nginx por padrão necessita de um arquivo fullchain, que é a junção de todos os arquivos.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('seu_dominio.crt bundle_ca.crt > fullchain.pem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('junto com o arquivo de chave (privkey.key)', 'Guias', 'docx, importado', 'Importado via script', 'Nesse caso o cliente precisará utilizar o OpenSSL para extrair os arquivos necessários do .pfx');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('openssl pkcs12 -in arquivo.pfx -nocerts -out chave_criptografada.key', 'Guias', 'docx, importado', 'Importado via script', 'Para remover a necessidade da senha do pfx sempre que o serviço for reiniciado:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('openssl rsa -in chave_criptografada.key -out privkey.key', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Extração do certificado e cadeia:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('openssl pkcs12 -in arquivo.pfx -clcerts -nokeys -out certificado.crt', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('openssl pkcs12 -in arquivo.pfx -cacerts -nokeys -out bundle.crt', 'Guias', 'docx, importado', 'Importado via script', 'E por fim realizar a criação do fullchain para o nginx, concatenando os arquivos extraídos:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat certificado.crt bundle.crt > fullchain.pem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se o cliente tiver o .cer e .pfx', 'Guias', 'docx, importado', 'Importado via script', 'O melhor seria pfx para que o cliente extraia todo o conteúdo necessário.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tenho um txt passo a passo para o senhor, para melhor clareza:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Arquivo', 'Guias', 'docx, importado', 'Importado via script', 'Onde “seu_arquivo.pfx” deve ser substituido pelo nome do arquivo real:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SSLSistemaGestor-22-09-2026.pfx', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Vai ter que liberar root', 'Guias', 'docx, importado', 'Importado via script', 'Mantenha os arquivos na pasta criada, para que não ocorra nenhum problema com os arquivos já existentes. dessa forma, caso ocorra algum problema é possivel corrigi-los sem que o acesso das URLs ja configuradas pare
Bastará realizar a mudança do arquivo .conf para que seja coincidente com o diretório correto');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente com erro de let''s encrypt / ssl', 'Guias', 'docx, importado', 'Importado via script', 'ssl.conf dele estava com as referências dos certificados errada, o que acaba retornando erro por obter o certificado antigo');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente questiona limite de DNS no certificado SSL', 'Guias', 'docx, importado', 'Importado via script', 'Esse limite é do próprio Let’s Encrypt, esse limite não pode ser alterado, pois é uma regra da autoridade certificadora.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('(cliente) existe solução alternativa?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Os dns são todos do mesmo domínio base?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se sim', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Wildcard DNS', 'Guias', 'docx, importado', 'Importado via script', 'Pode criar um nginx em um ambiente novo e apenas gerar o SSL e configurar os proxys.
Basta eu configurar no IIS e apontar o DNS para lá? Se eu fizer isso não vai conflitar com o Let´s Encrypt?
Isso depende de onde o SSL do Let’s Encrypt está sendo utilizado atualmente.
Caso o wildcard seja instalado diretamente no IIS enquanto o LB continuar tratando o HTTPS, pode haver sobreposição de configuração, uma dupla terminação SSL talvez.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('(Cliente) Posso configurar um Let´s para cada VM e remover ele do LB?', 'Guias', 'docx, importado', 'Importado via script', 'Para o caso não é o ideal, pois precisa o IP do LB recebe as conexões, e com isso o certificado precisa estar no LB.
Como todos os subdomínios pertencem ao mesmo domínio base, a solução mais adequada é utilizar um certificado wildcard. Esse modelo cobre todos os subdomínios com um único certificado e simplifica a gestão e a renovação do SSL.
Solução instalar o wildcard no Load Balancer (NGINX), manter os registros DNS apontando para o IP do Load Balancer e deixar os servidores IIS respondendo internamente via HTTP.
Cliente, deve emitir o wildcard, instalar no LB, validar as conf, recarregar o nginx e manter o dns apontando para o LB. Você pode ir realizando o processo, e tirando duvidas aqui.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente reclama do site ficar inseguro, custom ssl ativo', 'Guias', 'docx, importado', 'Importado via script', 'SSL personalizado está ativo, clique para desativar o ssl personalizado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Necessário desativar, caso deseja usar Lets Encrypt', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Está dando erro', 'Guias', 'docx, importado', 'Importado via script', 'Adicione seu domínio no campo de configure, conforme a documentação apresenta, separando por virgula sem espaço (dominio1, dominio2)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente reclama que ainda aparece como não seguro, mesmo após', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Peça para limpar cache', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nextcloud', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problema de compartilhamento de pasta no nextcloud', 'Guias', 'docx, importado', 'Importado via script', 'Adicionou essa pessoa faltante? Para que tivesse permissão de ver a pasta?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Foi realizado a sincronização em outra máquina?', 'Guias', 'docx, importado', 'Importado via script', 'Teria alguma credencial de acesso para verificação do nosso lado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Versão nextcloud', 'Guias', 'docx, importado', 'Importado via script', 'O senhor poderia desinstalar a atual versão que esta utilizando e instalar essa versão:
download.nextcloud.com/desktop/releases/Windows/Nextcloud-3.10.0-x64.msi
Após isso tente novamente, Por favor.
Caso esteja com erro relacionado a uma máquina que não acessa a pasta compartilhada
Infelizmente, nesse caso, o senhor terá que verificar se existe alguma documentação propria do nextcloud que auxilie o senhor a resolver este problema, nós não fornecemos suporte ao nextcloud (aplicativo), somente fornecemos a hospedagem.
Infelizmente não consigo auxilia-lo nessa questão.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente ta subindo arquivo grande no nextcloud e ele trava', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Necessário alterar as configurações do arquivo php.ini', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/etc/php.ini', 'Guias', 'docx, importado', 'Importado via script', 'Além do "upload_max_filesize", é recomendável alterar também o "max_execution_time", para que arquivos maiores não resultem em timeout.
No mais, a alteração no php.ini resolverá o problema do senhor, já que não há nenhuma outra config padrão do php que poderia causar sobrescrita dos parametros.
Recomendo também que altere o "post_max_size" com um valor igual ou maior que o upload_max_filesize.
Após alterações no php.ini, é necessário reiniciar o serviço para que sejam aplicadas.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro ao abrir o outlook', 'Guias', 'docx, importado', 'Importado via script', '"Não é possível iniciar o Microsoft Outlook. Não é possível abrir a janela do Outlook. Não é possível abrir o conjunto de pastas. Falha na tentativa de logon no Microsoft Exchange."');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('verifique se abre assim outlook.exe /safe', 'Guias', 'docx, importado', 'Importado via script', 'Algum suplemento do Outlook pode estar atrapalhando a inicialização, já que o programa abriu em modo safe.
Seria necessário que verificasse se algo extra foi instaladado no outlook em
Arquivo > Opções > Suplementos.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente reclama de cobranças a mais', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique o saldo', 'Guias', 'docx, importado', 'Importado via script', 'É possivel observar um aumento no consumo para o salto de faturamento,
Foi utilizado mais tráfego, alem da diferença dada em disco e recursos computacionais');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exclusão de nó da topologia', 'Guias', 'docx, importado', 'Importado via script', 'Remover na topologia, o nó que aparenta ser a raiz da estrutura, não irá afetar de alguma forma os outros nós?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer excluir um ip sujo da plataforma', 'Guias', 'docx, importado', 'Importado via script', 'A maneira recomendada de realizar o mesmo é utilizar a API para trocar esse ip com um novo ambiente, e posteriormente excluir/remover o IP desse segundo ambiente.
Mesmo o IP sendo o principal, é possível realizar a movimentação através dos endpoints da API. recomendo a troca, ao invés da movimentação objetiva, pois se ocorrer algum erro, o IP ficará entre seus ambientes, podendo ser devolvido.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('realizar a criação de um token de API', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Settings/access tokens/generate', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Selecione API Access e generate', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Template para requisição:', 'Guias', 'docx, importado', 'Importado via script', 'https://app.jelastic.saveincloud.net/1.0/environment/binder/rest/moveextips?envName=[NOME_AMBIENTE]&session=[TOKEN]&sourceNodeId=[ID_NODE_FONTE]&targetNodeId=[ID_NODE_DESTINO]&ips=[IP_A_SER_MIGRADOS]');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Essas são as informações que irão construir a requisição:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('[NOME_AMBIENTE] = Nome do ambiente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('[TOKEN] = Token da API', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('[ID_NODE_FONTE] = Node ID da Instancia que atualmente possui o IP', 'Guias', 'docx, importado', 'Importado via script', '[ID_NODE_DESTINO] = Node ID da Instancia que irá receber o IP na troca');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('[IP_A_SER_MIGRADOS] = IP com pontos a ser migrado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Espaço em disco disponível', 'Guias', 'docx, importado', 'Importado via script', 'Ao passar o mouse por cima do icone de disco, ele mostrará o espaço Utilizado e o Alocado');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('A outra maneira seria executar o comando du -h no webSSH:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('du = Disk Usage', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('caso queira ver o Livre: df -h', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tomcat', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tomcat teste se aplicação está rodando', 'Guias', 'docx, importado', 'Importado via script', 'http://ip:porta/pasta - Página inicial
http://ip:porta/pasta/hello - Servlet
http://ip:porta/pasta/hello.jsp - JSP');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Existe alguma forma de configurar a memoria do tomcat?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Seria o JVM options?', 'Guias', 'docx, importado', 'Importado via script', 'No arquivo /opt/tomcat/conf/variables.conf, após ele definir os parâmetros, precisa reiniciar o tomcat');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tomcat não retorna nenhuma resposta HTTP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Primeiro identifique o PID:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux | grep ‘[j]ava’', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Depois execute, substituindo PID pelo número encontrado:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps -T -p PID -o tid,stat,pcpu,comm --sort=comm | grep ‘http-nio’', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para contar quantas threads HTTP estão ativas:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps -T -p PID -o comm= | grep -c ‘http-nio-80-exec’', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja alterar arquivos no Tomcat e retorna erro', 'Guias', 'docx, importado', 'Importado via script', 'java.lang.OutOfMemoryError: unable to create native thread: possibly out of memory or process/resource limits reached at java.base/java.lang.Thread.start0(Native Method) at java.base/java.lang.Thread.start(Thread.java:801)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('está tentando realizar o comando unlimit -u 65536', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('A alteração pode ser feita em /opt/tomcat/conf/variables.conf', 'Guias', 'docx, importado', 'Importado via script', 'Após configurar, será necessário reiniciar o tomcat para aplicar as mudanças.
Para mais detalhes, você consegue verificar esta documentação, onde informa sobre o processo de limitar a memória e utilizar outras variáveis para a instância tomcat, veja neste link:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('virtuozzo.com/application-management-docs/java-options-arguments/', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente Juliano com problema de IOps Ambiente desliga do nada', 'Guias', 'docx, importado', 'Importado via script', 'É preciso limitar manualmente a memória RAM que o Java utiliza, definindo os parâmetros da JVM diretamente no arquivo /opt/tomcat/conf/variables.conf. Essa configuração garante que o serviço tenha recursos previsíveis e não cause o colapso do sistema operacional por consumo excessivo. Para realizar esse ajuste de forma correta, o senhor pode seguir as orientações detalhadas na documentação oficial da Virtuozzo sobre o Java Agent e sobre a configuração de servidores de aplicação Java nos links abaixo:
https://www.virtuozzo.com/application-management-docs/javaagent/\\
https://www.virtuozzo.com/application-management-docs/java-application-server-config/#server
Muitas quedas para acesso em uma aplicação tomcat / lentidão de acesso a um cliente / Operadora
Pedir os testes e tudo mais.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mas se ele requerer a outra ocasião além de falar com a operadora', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Aplicação seria apenas um acesso web (HTTP/HTTPS) via domínio?', 'Guias', 'docx, importado', 'Importado via script', 'Acredito que o uso da Cloudflare com o proxy ativado seja uma alternativa, pois as rotas dos clientes irão passar pela Cloudflare para chegar no seu servidor de aplicação. A Cloudflare possui diversos POP (pontos de acessos), o que poderia facilitar o acesso do cliente.
No entanto, todos os clientes iriam utilizar a rota pela cloudflare e não apenas um.
Mas, o mais recomendado é o cliente entrar em contato com a operadora para verificar o roteamento.
Nesse caso, seria necessário verificar na documentação da CloudFlare, senhor.
https://developers.cloudflare.com/dns/zone-setups/full-setup/setup/
https://developers.cloudflare.com/dns/proxy-status/
Cliente pergunta se é possível apontar 2 aplicações para um mesmo ip publico / Tomcat
Sim, você irá criar um virtual host novo dentro do server.xml informando o subdominio/dominio e qual o diretório da aplicação.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('fica em /opt/tomcat/conf/server.xml', 'Guias', 'docx, importado', 'Importado via script', 'Existe um bloco com a tag Host, você criaria um segundo abaixo da tag de fechamento (</Host>)
Cliente informa que está com problemas de implantação no arquivo war(tomcat) só carrega');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique as logs na aplicação:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tail -n 30 jem.log', 'Guias', 'docx, importado', 'Importado via script', 'Realize um teste com o jar para verificar a integridade do arquivo, e verifique o erro.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja atualizar o ubunto 20.04 para 24.04', 'Guias', 'docx, importado', 'Importado via script', 'No momento, a plataforma não possui suporte ao Ubuntu 24.04 e 26.04 mesmo, porém você pode utilizar a imagem dessa versão do Ubuntu via Docker Engine CE, fazendo o docker pull da imagem e depois subindo o container.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('MySQL', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Teste de conexão da aplicação com MySQL', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('mysql -h ip -P porta(3306) -u root -p', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja modificar o innodb_buffer_pool_size nas variaveis', 'Guias', 'docx, importado', 'Importado via script', 'Para que seja feita a modificação ele deve desativar a variável JELASTIC_AUTOCONFIG para que a plataforma não faça ajustes automáticos no arquivo de configuração do mysql
Deixe o valor como false, depois realize a alteração no /etc/my.cnf e reinicie o servidor');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Processo travando de forma desconhecida de manhã mySQL', 'Guias', 'docx, importado', 'Importado via script', 'o processo do snapshot que estava sendo realizado foi morto utilizando o comando kill, o que está errado pois permanece um processo em execução (filefrag) que fica realizando checagens no disco e causando a lentidão.
sempre que for necessário matar o processo de snapshot, utilizar o seguinte comando: service prl-disp restart.
nesse caso, um dos processos de snapshot que é realizado acabou ficando preso e gerando a lentidão relatada, no entanto, já ajustamos internamente para evitar que venha a causar futuras lentidões novamente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ip de saída mudando no mysql', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se existe ip publico, caso não', 'Guias', 'docx, importado', 'Importado via script', 'No caso, O ip de saída que o senhor está informando é um ip público de nosso host fisíco, isso acontece quando o nó não possui ip publico alocado, sujeito a alterações no ip de saída do mesmo, sempre que estas alterações são feitas é enviado um e-mail em relação sobre as alterações realizadas.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Está sumindo os dados do banco MySQL', 'Guias', 'docx, importado', 'Importado via script', 'Necessário verificar nos logs do banco ou proxysql para identificar alguma query de drop, delete que poderia ter realizado a exclusão dos dados.
Não realizamos ações do nosso lado que resultaria na perca dos dados conforme relatado
Você pode verificar se a variável general_log está ativa e em qual arquivo é escrito pela variável general_log_file.
Está variável guarda registro de queries feitas no banco de dados.
https://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html#sysvar_general_log
https://dev.mysql.com/doc/refman/8.0/en/server-system-variables.html#sysvar_general_log_file
Cliente comenta que não possui diretorio de backup_script.sh em seu banco de dados
O script acompanhas as instancias baseadas na imagem da jelastic somente, como o senhor realizou a instalação em uma VPS, do zero, a mesma não possui o script inserido nos diretórios.
é necessário que alguns caminhos sejam iguais ao que estão presentes no script, a fim de evitar discrepâncias e erros por incompatibilidades.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('BACKUPDIR=‘/var/lib/jelastic/backup’', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('LOG_FILE=“/var/log/mysql/logdb_bckp.log”;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SOCKET=‘/var/lib/mysql/mysql.sock’;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('EXCLUDE=(‘information_schema’);', 'Guias', 'docx, importado', 'Importado via script', 'A maneira mais rápida seria utilizar o próprio terminal do mysql, com a seguinte consulta:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SHOW VARIABLES LIKE ‘socket’;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente fala que o site está fora do ar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O site do senhor está atrás de um proxy?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Por onde o senhor realiza o gerenciamento do site?', 'Guias', 'docx, importado', 'Importado via script', 'Se o site não estiver conosco, mas em um provedor terceirizado, verificar com o provedor do site.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pede uma redefinição de senha para seu e-mail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Solicitar via e-mail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique o e-mail dando um ping mail.dominio', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Certifique para onde está apontando e acesse', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa que está recebendo alertas no e-mail de sua instância', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique se o alerta está configurado no ambiente do cliente', 'Guias', 'docx, importado', 'Importado via script', 'Configurações/Alertas de Load/ Verificar RAM/CPU se está acima do normal');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre a expiração de senha', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O aviso de expiração de senha é feito a cada 180 dias', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente não consegue adicionar mais instâncias em seu ambiente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique se não está em conta teste', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Necessário mudar para biling_v2', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Implementação', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa que não consegue reimplantar o container', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Qual mudança, está tentando fazer?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Possível que algum arquivo está lockando o serviço', 'Guias', 'docx, importado', 'Importado via script', 'Tentar reiniciar o nodo pelo nosso lado.
Peça um print de como está fazendo a implementação.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('criar um novo e migrar aplicação', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Implementação rodando infinito', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se há jem ou git rodando no ps aux', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pgrep -a jem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar quanto tempo está ativo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps -eo pid,etime,lstart,cmd | grep "/usr/bin/jem" | grep -v grep', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se possui cpu e memoria ram 0, significa travado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps -eo pid,%cpu,%mem,etime,cmd | grep "/usr/bin/jem" | grep -v grep', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar quais processos estão linkados ao jem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pgrep -af jem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Matar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pkill -9 -f jem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se existe hook de deploy executando', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps -ef | grep postDeploy', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps -ef | grep post.sh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ver os logs do hook', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tail -f /home/jelastic/log/hooks.log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se existe algum processo iniciado pelo hook', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps -ef | grep uvicorn', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ver se algum comando está preso esperando', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pstree -ap', 'Guias', 'docx, importado', 'Importado via script', 'Existe um script ativo de pstDeploy geralmente em (***/home/jelastic/ROOT/deploy/hooks/post.sh***) isso faz com que o mesmo fique em processo de execução e nunca é finalizado, impedindo que novas operações relacionadas ao VCS/Git (como deploys e autoupdates) sejam executadas.
Sendo o ideal o uso do postDeploy apenas para que realize tarefas de preparação, como instalação de dependências, execução de builds ou outras configurações necessárias, e então seja encerrado.
Como o senhor utiliza o FastAPI, é possivel criar um arquivoo wsgi.py para executar a aplicação.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer alterar algo como e-mail, senha', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Alteramos no JCA', 'Guias', 'docx, importado', 'Importado via script', 'Cliente deve mandar e-mail para suporte@saveincloud.com para realizar tal alteração ou exclusão de dados');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa sobre erro "no free indoes"', 'Guias', 'docx, importado', 'Importado via script', 'Tente aumentar um pouco o espaço em disco utilizado e realizar o reinício novamente.
Esse erro pode estar relacionado a um diretório com uma grande quantidade de arquivos, não em relação ao espaço consumido, mas sim com o total de arquivos em um diretório.
Seria necessário você estar verificando os diretórios e se os arquivos neles podem ser removidos.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('PostgreSQL', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Teste conexão com banco de dados', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('curl -v http://iplocal-porta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente não ta conseguindo receber e-mail de senha e de acesso', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ele pode pegar os dados em:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cd ~', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat .pgpass', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('(root) cat /var/lib/pgsql/.pgpass', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat $HOME/.pgpass', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para entrar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('psql -U webadmin -d postgres', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Trocar a senha do postgres no IBExpert', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('botão direito - Security - change user password', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja configurar uma rotina de backup no PostgreSQL', 'Guias', 'docx, importado', 'Importado via script', 'Atualmente, a plataforma possui um script de backup padrão em /var/lib/jelastic/bin/backup_script.sh
Você pode verificar o script e analisar como é o processo de backup e compactação, bem como alterar conforme seja necessário pra você também.
Com o script, você pode fazer um dump de todos os bancos, um dump de bancos específicos ou de tabelas específicas dentro de um banco.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ele fica armazenado em /var/lib/jelastic/backup', 'Guias', 'docx, importado', 'Importado via script', 'Você pode acessar o arquivo /var/spool/cron/postgres ou rodar “crontab -e” no webSSH para definir a cron de execução, lá terá os exemplos de configuração a serem definidos.
Além disso, você pode realizar a criação de um storage e criar um ponto de montagem para que os backups sejam salvos fisicamente em uma instância diferente, garantindo a disponibilidade deles em caso da instância estar indisponível');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Estas são algumas documentações que podem te auxiliar', 'Guias', 'docx, importado', 'Importado via script', 'https://docs.saveincloud.com/cloudlets/ambientes/configuracoes/pontos-de-montagem
https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/sql/postgresql/backup');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Lentidao no postgresql', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se há muitas conexões no banco como idle', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Utilizar o top - shift M', 'Guias', 'docx, importado', 'Importado via script', 'talvez seja necessário ele verificar na aplicação a respeito de como ele trata as conexões que ela faz
Vejo que o senhor possui muitas conexões como idle em seu postgres isso está consumindo muita memória, é necessário que o senhor verifique essas conexões em sua aplicação a respeito de como ele trata as conexões que ela faz.
Cliente comenta que se conecta ao banco, mas realiza uma query e perde a conexao
Perguntar se o servidor de aplicação dele está com a gente, e qual o nodo id?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Testar conexão do servidor de aplicação para o banco', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('telnet', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('curl -v ipbanco+porta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ping', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se tiver tudo certo:', 'Guias', 'docx, importado', 'Importado via script', 'Os testes de conectividade curl -v foram concluídos com sucesso, o que confirma que a comunicação entre o servidor da aplicação e o banco está normal e sem interferências de rede ou firewall.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar nos logs do pgsql referente ao dia da semana', 'Guias', 'docx, importado', 'Importado via script', 'Se tiver No log retorna LOG: “could not receive data from client: Connection reset by peer”, quem derrubou foi a aplicação.
Esse tipo de comportamento de conectar, realizar uma ação e cair, normalmente está relacionado ao ambiente da aplicação (configuração, driver, timeout, consumo de recursos ou gerenciamento de conexão), e não a uma restrição no servidor de banco.
Recomendamos seguir com a análise no PHP (php.ini), como memory_limit, e comparar com um ambiente funcional, verificar o web server e na aplicação para identificar o ponto onde a conexão está sendo encerrada.
Se o retorno das queries for grandes demais e o php não estiver configurado corretamente pode acabar atingindo o limite de memoria e o processo acabar fechando inesperadamente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Postgres tem swap de memoria RAM no disco?', 'Guias', 'docx, importado', 'Importado via script', 'Sim. O próprio Linux configura a SWAP baseado no Espaço em disco alocado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('é possivel conferir com free -h', 'Guias', 'docx, importado', 'Importado via script', 'Ambiente faz backups sem zipar ocupando/ocupa muito espaço backup postgreSQL
Nos logs do script de backup e nos logs da cron é possivel notar que a execução dos mesmos está ocorrendo de forma normal.
Realizei o teste da cron, com o timestamp de 12h39 no servidor, porém notei que o processo estava demorando de uma maneira anormal, e ao cancelar é possivel notar que o dump é concluido, porem a compactação não.
O script não possui tratativa para erros ou cancelamento ocorridos durante a execução do bzip2, e por conta disso, mesmo que seja retornado algo diferente de 0 (Erros na execução) o mesmo irá registrar no log que tudo foi concluido com sucesso.
A provável razão na falha da compactação é a demora excessiva que o binario do bzip2 leva para realizar a compactação do arquivo .sql (Algoritmo Burrows-Wheeler).
Por exemplo. Após cancelar a execução do script, executei a compactação manualmente do arquivo, com a flag de verbose; O binário está em execução até o presente momento (Segue print), o que pode causar atrasos, travas no processo e mortes do mesmo por falta de memória.
O bzip2 não possui execução paralela, utilizando um unico core de CPU e consumindo RAM em demasia. Caso, no meio do processo, o serviço do postgres eleve o uso de memória, o bzip2 pode ser cancelado pelo SO.
Uma maneira de validar/resolver o problema do bzip, seria alterando o script de backup para utilizar um binario com outro algoritmo de compactação (Um mais rápido) como o gzip por exemplo.
Seria um pouco menos eficiente na parte da compactação, porém utilizaria menos recursos computacionais, alem da rapidez ser maior.
Enviei para a instancia uma modificação do script, que utiliza o gzip ao invez do bzip2.
Mantive o script original na instancia, já que esse outro é apenas a substituição do bzip2 pelo gzip. Caso o senhor queira realizar alterações por conta, basta alterar o arquivo e a cron.
Verificamos que o seu NFS está na região do nordeste e o banco de dados em São Paulo. Com isso, caso ocorra um timeout na escrita, o gzip pode não realizar a compactação (o gzip executa no postgres mas com os dados no NFS, fazendo toda a leitura e transferência pela rede).
Você pode verificar duas possibilidades para isso alterando no script de backup.
Realizar o dump e compactação localmente na instância do postgres e depois enviar o arquivo já compactado.gz para o diretório que é montado no NFS (nesse caso, /var/lib/jelastic/backup), ou;
Alterar a função utilizada no script (nesse caso, pg_dump()) para fazer um pipe para o gzip e realizar a compactação simultaneamente com o dump e verificar se ocorre normalmente');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('backup de uma pasta e depois enviar para outra', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ajuste do script backup_script.sh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('BACKUPDIR_NFS=''/var/lib/jelastic/backup/''', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('BACKUPDIR=''/var/lib/jelastic/backup_local''', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cp $(file_name).bz2 $(BACKUPDIR_NFS);', 'Guias', 'docx, importado', 'Importado via script', 'Irá fazer o backup e compactação na pasta /var/lib/jelastic/backup_local e depois realizar o comando cp para o diretório montado com o NFS');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('após isso, altere a sua cron para utilizar o script backup_script.sh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Aumentar o kmemsize a gente não consegue?', 'Guias', 'docx, importado', 'Importado via script', 'A plataforma vincula os limites à capacidade total do container, por conta disso, tente aumentar o limite máximo de cloudlets nas configurações de topologia.
Não seria possível aumentar ou diminuir esse valor manualmente.
Por conta disso, a melhor aproximação para a resolução, seria a clusterização do banco, a fim de distribuir a carga entre as instancias do banco.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pgpool II', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar qual está como primary', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pcp_node_info', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está com uma inconsistência em seu pgpool', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Aparece dados nos 2 bancos, mas nao exibi em um outro', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se os dois bancos estão em read_only (apenas leitura)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SHOW transaction_read_only;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SELECT pg_is_in_recovery();', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mostra se um dos nós está enviando dados WAL de replicacao \', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('select * from pg_stat_replication;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mostra se um dos nós está recebendo dados de replicaçao WAL \', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('select * from pg_stat_wal_receiver;', 'Guias', 'docx, importado', 'Importado via script', 'Se os dois nodos nao mostrarem nada nesta consulta, a replicação está quebrada.
como ele validou que a tabela existe nos dois bancos? ele acessou individualmente cada um?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O senhor utilizou uma query?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Qual seria o resultado esperado?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Poderia nos fornecer um print dessa query rodando em ambos os bancos?', 'Guias', 'docx, importado', 'Importado via script', 'Verficiar se nos logs de um banco está com FATAL: no pg_hba.conf entry for replication connection from host
Necessario verificar o pg_hba.conf e realizar as alteraçoes para colocar o ip correto do nodo de replicacao');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Apos a alteraçao realizar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo systemctl reload postgresql', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Agore, veja se o log do secundário parou de acusar o erro', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('e rode as querys no seu secundário', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('select * from pg_stat_wal_receiver;', 'Guias', 'docx, importado', 'Importado via script', 'Ele vai mostrar se estiver recebendo dados de replicacao do seu primário');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se estiver, deve estar sincronizando corretamente agora', 'Guias', 'docx, importado', 'Importado via script', 'Para verificar o status, é necessário conectar diretamente no seu secundário, sem usar o pgpool para evitar que ele leve a consulta pro primário como balanceio
Se retornar streaming, é porque a replicaçao está acontecendo corretamente');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro de replicação', 'Guias', 'docx, importado', 'Importado via script', 'Fatal: could not connect to the primary server: connection to server at "ip privado do secundario", port 5432 failed: fe_sendauth: no password supplied
Para ajustar a conexão com o novo primário definido, acesse o gerenciador de arquivos do nodo secundário e, em seguida, o arquivo pg_hba.conf.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Faça o ajuste na segunda linha alterando de md5 para trust', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Salve o arquivo apenas para a instância atual', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após, deve ir para o pg_hba.conf do nodo primário agora', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('É necessário ajustar no arquivo a segunda linha como:', 'Guias', 'docx, importado', 'Importado via script', 'host replication replication (ip privado do novo nodo secundario) trust');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após, acesse o nodo secundario via WebSSH e rode o comando:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('jem service reload', 'Guias', 'docx, importado', 'Importado via script', 'Sempre que precisa fazer alguma configuração no postgresql.conf ou pg_hba.conf, utilize este comando em vez de reiniciar a instância, pois o reinício causa indisponibilidade no serviço e pode ocorrer o failover de forma indesejada.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mesmo após os ajustes:', 'Guias', 'docx, importado', 'Importado via script', 'Vai ser necessário realizar a sincronização mesmo, pois já não é possível recuperar o WAL apenas restabelecendo a conexão.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifica nos logs novamente, se tiver:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Fatal: could not receive data from Wal stream', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Vai ter que realizar a sincronização', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar no nodo primario onde está o data_directory:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('psql -U webadmin -d postgres', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SHOW data_directory;', 'Guias', 'docx, importado', 'Importado via script', 'No WebSSH do nodo primario, desligue o serviço do postgres via comando:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('jem service stop', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Confirme que foi totalmente parado:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux | grep ''[p]ostgres''', 'Guias', 'docx, importado', 'Importado via script', 'Ainda no WebSSH do nodo primario, remova o datadir do postgres para fazer a recuperação via basebackup:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('rm -rf /var/lib/pgsql/data/*', 'Guias', 'docx, importado', 'Importado via script', 'Para fazer a sincronização, você pode utilizar o comando do pg_basebackup no nodo primario:
pg_basebackup -U replication -h (ip privado do secundario) -D /var/lib/pgsql/data -Fp -Xs -P -R');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique ls -lha no diretório /var/lib/pgsql/', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Talvez seja necessário, após restauração:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chown -R postgres:postgres /var/lib/pgsql/data', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Agora faça este ajuste novamente no mesmo nodo primario:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No arquivo pg_hba.conf:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('host replication replication (ip privado secundario) trust', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Salve o arquivo apenas para a instância atual', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após, você pode iniciar o serviço do banco via WebSSH com o comando:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('jem service start', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No nodo primario', 'Guias', 'docx, importado', 'Importado via script', 'Agora verifique os logs do nodo primario, estará tudo ok.
Mas no pgpool pode estar considerando como down ainda, acesse a tela de administração do pgPool e clique em return no nodo primario');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente relatou que o o primário parou de fazer escrita', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode pegar a senha e acessar o postgres dele pra ver', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat $HOME/.pgpass', 'Guias', 'docx, importado', 'Importado via script', 'O senhor poderia verificar se ele ainda está com permissão de escrita? Por gentileza.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sobre o balanceador de carga load_balance_mode = off', 'Guias', 'docx, importado', 'Importado via script', 'Por padrão ele vem como on, entretanto ele pode estar enviando para o errado. Como o senhor realiza a conexão? Pelo dbeaver?
Quando ativado, o Pgpool-II envia as consultas de gravação para o nó primário no modo de replicação nativa, para todos os nós de backend no modo de replicação, e as demais consultas são distribuídas entre todos os nós de backend.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Acessar o pgpooladmin', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('$HOME/.pcpass', 'Guias', 'docx, importado', 'Importado via script', 'Verifique o node info por lá.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode apertar em return para voltar o node 0 para o primario', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os logs do pgpool o que causou o failover', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tail -50 /var/log/pgpool-II/failover.log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se está down no pgpooladmin e retornar para primario', 'Guias', 'docx, importado', 'Importado via script', 'psql -h ipprivado -p 5432 -U replicador -d postgres -c "SHOW POOL_NODES;"');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problema o primário parou e o secundário não virou primário', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('primario cai -> secundario vira master', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('primario volta a funcionar -> fica funcionando como slave', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Aí precisa fazer o promote no pgpool', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Foi alterado algo nas configurações?', 'Guias', 'docx, importado', 'Importado via script', 'Por padrão o failover é feito automaticamente. Entretanto ele não refaz o failover para voltar as roles antigas de cada um:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('primario cai -> secundario vira master', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('primario volta a funcionar -> fica funcionando como slave', 'Guias', 'docx, importado', 'Importado via script', 'Após isso é necessario realizar o promote no pgpool.
Pode ser n coisas, a replica estar como down no momento, configuracao para nao permitir failover de um banco, sincronizacao atrasada.
Banco de dados postgreSQL - pgpool possui um de escrita e outro de replica, mas ocorre de inverter os bancos.
Agora como inverteu o banco de escrita para a replica está faltando dados
Preciso explicar para o cliente que como ele possui um pgpool é necessário ele configurar o failover de sua instância do postgreSQL, pois em caso de falha muda para outra');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('As vezes pode ser um falso positivo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('PostgreSQL Pgpool II - Failover', 'Guias', 'docx, importado', 'Importado via script', 'failover se da por conta de identificar uma indisponibilidade no nó principal. Quando esse failover ocorre, seja por uma falha real ou até mesmo por uma instabilidade momentânea (falso positivo), o pgpool pode promover o nó réplica como principal.
Recomendamos revisar a configuração de failover do pgpool-II e também validar o estado da replicação entre os nós do PostgreSQL.
O senhor pode verificar os logs do failover para identificar o motivo da falha e troca realizada.
É possivel verificar o status executando as seguintes queries no banco:
SELECT application_name, state, sync_state, replay_lag FROM pg_stat_replication;');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SHOW pool_nodes;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No pgpool:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pcp_watch_dog_info -h localhost -U <usuario_pcp>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pcp_node_info -h localhost -U <usuario_pcp> -w', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para acessar o banco:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('psql -U webadmin -d postgres', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Isso demonstra quem é primário e quem é replica', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SELECT pg_is_in_recovery();', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('f → PRIMÁRIO (write)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('t → RÉPLICA (read-only)', 'Guias', 'docx, importado', 'Importado via script', 'Identifica se tem replica conectada(se aparecer algo após o comando OK)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SELECT * FROM pg_stat_replication;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('User: webadmin', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Password: piiiK1a0J9', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('PgpoolAdmin User: postgres', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('PgpoolAdmin Password: NCGnkk37726', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Realizei a troca de porta no arquivo, para 5433, aconteceu o failover', 'Guias', 'docx, importado', 'Importado via script', 'mesmo que eu coloque a porta para 5432 de volta o ip 10.100.75.101 (novo primário) será o primário ainda correto? o ip 10.100.71.95(antigo primário) passara a ser novo secundário?
Como eu posso retornar o 10.100.71.95 para primário novamente? Peguei umas dicas, mas acho que pode ser outra coisa isso, mas acredito que ajuda essas infomações:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('"Cliente diz que o secundario não atualiza conforme o primário', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os logs sobre erros', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar o arquivo /var/lib/pgsql/data/pg_hba.conf', 'Guias', 'docx, importado', 'Importado via script', 'Ambos os nodos estão com a mesma entrada de replicação no pg_hba.conf, liberando o IP (ip do primario). Como esse IP corresponde ao nodo primário, a configuração não está aderente ao cenário atual de replicação. Para que o secundário consiga se conectar ao primário e receber as alterações, o primário precisa permitir a conexão de replicação a partir do IP LAN do secundário, que no seu caso é (ip secundario)
Ou seja ele tem que colocar em host replication replication ip do secundario dentro do arquivo do primario
Ou seja ele tem que colocar em host replication replication ip do primario dentro do arquivo do secundário
Para conferir o papel atual de cada nodo, realizar o comando no webssh:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('select pg_is_in_recovery();', 'Guias', 'docx, importado', 'Importado via script', 'Faça um pg_basebackup neste banco secundário, ele irá pegar a configuração do banco do primário completa, assim você vai conseguir ajustar corretamento o banco secundário já que o mesmo não tem dados.
Você precisa primeiro limpar o diretório /var/lib/pgsql/data no banco nodo exemplo, por exemplo com o comando: rm rf /var/lib/pgsql/data/* (muita atenção neste comando, pois precisa estar exatamente assim e neste nodo!)
após fazer isso, no mesmo nodo, execute o comando: pg_basebackup -U replication -h ip exemplo -D /var/lib/pgsql/data -Fp -Xs -P -R
Ele irá copiar toda a estrutura e arquivos do banco postgres e também do próprio banco que você subiu
Após isso, crie o arquivo standby.signal no nodo exemplo com o comando: touch /var/lib/pgsql/data/standby.signal
Este arquivo faz com que o postgresql suba em modo de réplica, sendo utilizado apenas para leitura e não escrita (conforme a topologia primário-secundário)
depois de fazer estes passos, precisa acrescentar estas linhas no /var/lib/pgsql/data/postgresql.conf do nodo exemplo (secundário) novamente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('hot_standby = on', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('primary_conninfo = ‘host=ip exemplo port=5432 user=replication’ "', 'Guias', 'docx, importado', 'Importado via script', 'Quando eu realizo pg_basebackup -U replication -h 10.100.75.101 -D /var/lib/pgsql/data -Fp -Xs -P -R');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente diz que o secundario não atualiza conforme o primário', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os logs sobre erros', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar o arquivo /var/lib/pgsql/data/pg_hba.conf', 'Guias', 'docx, importado', 'Importado via script', 'Ambos os nodos estão com a mesma entrada de replicação no pg_hba.conf, liberando o IP (ip do primario). Como esse IP corresponde ao nodo primário, a configuração não está aderente ao cenário atual de replicação. Para que o secundário consiga se conectar ao primário e receber as alterações, o primário precisa permitir a conexão de replicação a partir do IP LAN do secundário, que no seu caso é (ip secundario)
Ou seja ele tem que colocar em host replication replication ip do secundario dentro do arquivo do primario
Ou seja ele tem que colocar em host replication replication ip do primario dentro do arquivo do secundário
Para conferir o papel atual de cada nodo, realizar o comando no webssh:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('select pg_is_in_recovery();', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para acessar o banco:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('psql -U webadmin -d postgres', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Isso demonstra quem é primário e quem é replica', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SELECT pg_is_in_recovery();', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('f → PRIMÁRIO (write)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('t → RÉPLICA (read-only)', 'Guias', 'docx, importado', 'Importado via script', 'Identifica se tem replica conectada(se aparecer algo após o comando OK)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SELECT * FROM pg_stat_replication;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pgpool está com primary errado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar qual deveria ser o correto', 'Guias', 'docx, importado', 'Importado via script', 'Após isso setar no /var/lib/pgsql/data/pg_hba.conf do nó que era secundario e está como primario agora');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('altere o ip que esta no replication para o ip do antigo primario', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Apenas onde está o IP, não modifique nenhuma outra linha', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Agora, abra o webssh e execute o seguinte comando: jem service reload', 'Guias', 'docx, importado', 'Importado via script', 'Ele carrega as configurações do postgresql em vez de reiniciar, o que não causa downtime e evita de promover o outro como primário
Como o banco ficou um tempo fora, ele acabou perdendo a referência do WAL de replicação, sendo necessário realizar o pg_basebackup para sincronizar com o primário
Cliente questiona sobre alterações feita no postgreSQL primário reflete no secondary
Essas configurações refletem caso salve os arquivos de maneira que seja "salvar todas as instâncias"
Quando eu crio um banco de dados no primary, automaticamente cria no secondary?
Ele faz a replicação de dados de forma automática, mas como o secundario está faltando algumas parâmetros de configuração, a replicação não foi feita.
Por exemplo, está faltando a opção primary_conninfo no secundario onde define o primario que vai se conectar');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se o secundario não estiver conectando verificar:', 'Guias', 'docx, importado', 'Importado via script', 'Verificar se não houve alguma alteração no nodo nos logs, se sim o nodo de replicação perdeu as configurações que vem de forma automática.
precisa acrescentar estas linhas no /var/lib/pgsql/data/postgresql.conf');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('hot_standby = on', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('primary_conninfo = ‘host=10.100.81.138 port=5432 user=replication’', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode adicionar ao final mesmo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Teste em postgres para conexão ODBC', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('DNS de sistema', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Adicionar/PostgreSQL Unicode(x64)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('datasource:nome do teste', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('database:banco de dados que ta querendo acessar - schema', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('server:ip publico ou endpoint', 'Guias', 'docx, importado', 'Importado via script', 'porta: ip publico somente se cliente colocou outra porta além do padrão / endpoint
Credenciais.
Cliente informa sobre um problema intermitente de conexão entre ambientes');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Realizar testes de conexão do nodo de origem para o nodo de destino', 'Guias', 'docx, importado', 'Importado via script', 'Verificar qual é o Host dos nodos, perguntar se há algum problema recorrente com eles');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('realizar o comando curl -v http://iplocal-porta', 'Guias', 'docx, importado', 'Importado via script', 'Demonstrar ao cliente se há conexão e cabe ao cliente verificar se suas credenciais estão corretas ou observar a forma que ele está se conectando');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está reclamando de troca de ip primário e secundário', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('(só pra saber isso se da por conta de faillover)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O senhor pode verificar com o comando:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SELECT pg_is_in_recovery();', 'Guias', 'docx, importado', 'Importado via script', 'Ele é uma função de diagnóstico do PostgreSQL que identifica o papel atual do servidor no ambiente. Se o retorno for falso, o servidor é o Principal, permitindo leitura e escrita de dados. Se for verdadeiro, o servidor está em modo Standby (Réplica), operando apenas para leitura e sincronização.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer fazer conexão com postgres', 'Guias', 'docx, importado', 'Importado via script', 'Cliente pode usar o webSSH na própria plataforma.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer acessar da própria maquina', 'Guias', 'docx, importado', 'Importado via script', 'Nesse caso, você pode usar o gate SSH, você pode criar as chaves utilizando o PuttyGEN e utilizar o Putty para acessar a instância.
veja a nossa documentação sobre esse processo: https://docs.saveincloud.com/cloudlets/opcoes-globais/ssh-gate');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Validando se o endereço do cara está aberto para conexão', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('telnet endereço do endpoint porta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('echo | timeout 5 /bin/bash -c "curl -v telnet://[IP_OU_HOST]:[PORTA]"', 'Guias', 'docx, importado', 'Importado via script', 'timeout 5 curl -s telnet://[IP_OU_HOST]:[PORTA] < /dev/null && echo "Porta Aberta" || echo "Porta Fechada ou Timeout"
Problema em fazer curl performs SSL certificate verification by default, using a “bundle” of Certificate Authority (CA) public keys (CA certs).');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O servidor não confia no CA do certificado SSL', 'Guias', 'docx, importado', 'Importado via script', 'Pode inserir o certificado da CA que eles usam em um arquivo.pem, depois você faz o curl --cacert arquivo.pem api.dominio.com');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('execute na instância esse comando', 'Guias', 'docx, importado', 'Importado via script', 'openssl s_client -connect api.ultracheck.com.br:443 -servername api.ultracheck.com.br -showcerts
pegue o segundo bloco de certificado e salve em um arquivo.pem e depois faça o curl com curl --cacert arquivo.pem api.dominio.com
Quiser contornar o uso do certificado de forma momentânea, você pode passar curl -k api.dominio.com');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('isso vai fazer um curl de forma insegura', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente tenta realizar acesso em um ambiente de cópia', 'Guias', 'docx, importado', 'Importado via script', 'Utilizando no ambiente principal nc -zv ip porta (comando para estabelecer conexão) funciona, mas na cópia não');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deve liberar a porta no firewall', 'Guias', 'docx, importado', 'Importado via script', 'Cliente informa que não é possível excluir/alterar o add-on de reinicio do host / não está funcionando
Perguntar se já tentou alteração/remoção do add-on com a conta proprietária');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Somente a conta proprietaria pode instalar e remover add-on', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente não tem acesso a conta proprietária', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Deve pesquisar no jca no audit log a data que foi instalado o add-on', 'Guias', 'docx, importado', 'Importado via script', 'pesquisar em more o jpsService.Install filtrado na data criada para descobrir o e-mail');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso não de certo abrir ticket na virtuozzo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente comenta que o site caiu', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar logs_error', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode ser os workers em caso de travamento de muitas requisições', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux | grep http | wc -l', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mongodb', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Authenticação mongodb:', 'Guias', 'docx, importado', 'Importado via script', 'grep -i "password\|username\|mongodb" /usr/lib/node_modules/mongo-express/config.default.js
Cliente quer saber a capacidade de fornecer um ambiente com a versão do mongodb atualizado
Na plataforma não temos as novas versões por questão de licenciamento, mas o senhor pode subir a versão que deseja via Docker.
Desde 2018 a da Community usa licença. SSPL (Server Side Public License). As que não precisam são essas que tem na plataforma.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mongodb reiniciando infinito', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntar o motivo do reinicio', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os logs de mongod.log sobre o recovery', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pois:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O mongo pode ter sido reiniciado de forma abrupta', 'Guias', 'docx, importado', 'Importado via script', 'Quando isso ocorre o banco entende que foi parado algo no meio da gravação, ele irá verificar toda integridade dos dados antes de abrir o banco');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O mongo cria um arquivo de mongod.lock enquanto está em uso', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O arquivo especifica que o banco estava em uso', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Quando o mongo desliga corretamente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ele remove ou limpa esse lock', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mas como o serviço caiu incorretamente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O lock continuou na instância e não nulo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No start o mongo suspeito que poderia haver algo corrompido', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Por conta disso ele ativa o recovery', 'Guias', 'docx, importado', 'Importado via script', 'Ele lê jornal, logs de replicação, Inserts, updates, deletes, etc...
Isso demorava muito porque o WiredTiger (engine de storage do Mongo) tinha pouco cache disponível.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No parâmetro "cacheSizeGB"', 'Guias', 'docx, importado', 'Importado via script', 'define quanto de RAM o Mongo pode usar como cache.
Com esse cache pequeno o mongo consegue carregar poucos dados por vez na memória');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Isso faz o recovery demorar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('alteramos para cacheSizeGB:5', 'Guias', 'docx, importado', 'Importado via script', 'Agora o mongo processa muito mais rápido, como processar por blocos muito maiores de uma vez.
os processos antigos do mongo estavam em estado inconsistente e ocupando recursos.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Foi necessário um kill neles', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após aumentar o cache e finalizar os processos antigos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('houve um rm no mongo.lock e damos um systemctl start mongod', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O que falar:', 'Guias', 'docx, importado', 'Importado via script', 'O mongodb estava em estado de recuperação após uma tentativa de reinicio que resultou em falha, obrigando o serviço do banco a realizar a leitura de todos os arquivos do log de replicação a fim de assegurar a integridade do banco antes de permitir o inicio do serviço já que o arquivo .lock estava presente e “não-nulo”, no entanto, essa leitura estava utilizando recursos consideráveis por conta do tamanho limitado do cache no wiredtiger, a fim de validar, foi alterado o parâmetro cacheSizeGB: para 5, aumentando a velocidade de leitura dos logs do mongod.
Foram mortos os processos antigos do mongo que estavam realizando a leitura lenta dos arquivos, e após confirmação da eliminação dos processos e dos logs, foi feito um novo inicio do serviço (systemctl start mongod), que foi bem sucedido.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps -ef | grep mongod', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('kill -9 PID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se tiver apenas o sshd e bash, apenas excluir o mongod.lock', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('rm -f /var/lib/mongo/mongod.lock', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl reset-failed mongod', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('service mongod start', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('mongod --config /etc/mongod.conf –verbose', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar parametros no   /etc/mongod.conf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('wiredTiger:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('engineConfig:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cacheSizeGB: 5 (de acordo com a RAM do cliente)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Serviço mongoDB não iniciava', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para possibilitar a inicialização do serviço via systemd,', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Foi criado um novo arquivo de configuração em:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/etc/mongod.conf', 'Guias', 'docx, importado', 'Importado via script', 'contendo apenas as diretivas mínimas necessárias, com a principal alteração sendo o apontamento do diretório de dados para:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/data/db', 'Guias', 'docx, importado', 'Importado via script', 'Entretanto, recomendo fortemente que esse arquivo seja revisado e ajustado conforme as necessidades do ambiente, garantindo que todas as diretivas estejam adequadas à carga de trabalho e às configurações desejadas para o banco de dados.
Inicialmente, o serviço não pôde ser iniciado devido à ausência do arquivo de configuração. Após sua criação, foi identificado nos logs um erro indicando um possível problema de corrupção no mecanismo de armazenamento WiredTiger (WT).
Antes de realizar qualquer procedimento corretivo, foi efetuada uma cópia de segurança dos dados, permitindo que a tentativa de recuperação fosse executada sem risco de perda adicional caso ocorresse alguma falha durante o processo.
Em seguida, foi executado o procedimento de reparo utilizando o comando:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('mongod --dbpath /data/db --repair', 'Guias', 'docx, importado', 'Importado via script', 'Após a conclusão bem-sucedida do reparo, o arquivo de socket remanescente do processo anterior foi removido e o serviço foi iniciado normalmente por meio do comando:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl start mongod', 'Guias', 'docx, importado', 'Importado via script', 'Cliente questiona sobre uma forma para ter o descritivo de cobrança de cada máquina (financeiro)
Demonstrar a ele o formato de visualização de cobrança da plataforma acessando o histórico de faturamento
Para apurar o valor pago individualmente, é necessário realizar o cálculo considerando as tarifas
Cloudlets Reservados (opcional) são pré-configurados e você sempre paga por eles, independentemente de estarem em uso ou não.
Ou seja são valores fixos, porém contém mais descontos.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Possuem um desconto progressivo:', 'Guias', 'docx, importado', 'Importado via script', '1 a 4 cloudlets → R$ 0,02 por hora (sem desconto).
5 a 14 cloudlets → R$ 0,013 por hora (35% de desconto).
15 ou mais cloudlets → R$ 0,012 por hora (40% de desconto).
Cloudlets Dinamicos São cobrados quando sua aplicação precisa de mais recursos do que já configurado nos cloudlets reservados. Você só paga pelos cloudlets dinâmicos que estiverem em uso durante o período utilizado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O custo também diminui conforme o uso aumenta:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('1 a 4 cloudlets → R$ 0,02 por hora (sem desconto)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('5 a 14 cloudlets → R$ 0,014 por hora (30% de desconto)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('15 ou mais cloudlets → R$ 0,013 por hora (35% de desconto)', 'Guias', 'docx, importado', 'Importado via script', 'Basicamente, a diferença entre os cloudlets dinâmicos e reservados seria o preço e desconto que cada um tem, mas ambos são cobrados por hora.
Pode filtrar por dia no histórico de faturamento, bem como por hora para saber a cobrança por hora.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro 500 na API do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No http2 retorna 204, mas o erro 500 continua no http3', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('verifique nos logs do NGINX o erro que retorna', 'Guias', 'docx, importado', 'Importado via script', 'Quando feito com curl, o NGINX utiliza o HTTP/2, retornando nenhum erro na requisição.
Tente desabilitar o uso do HTTP/3 no seu NGINX para que utilize o HTTP/2.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Reiniciar o NGINX após realizar os ajustes no arquivo de configuração', 'Guias', 'docx, importado', 'Importado via script', 'Tente o acesso via guia anônima e realiza a requisição novamente, por favor');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Autentificação em dois fatores', 'Guias', 'docx, importado', 'Importado via script', 'Inclusive verifiquei que não possui autenticação 2 fatores em sua conta e por questão de segurança sempre recomendamos a ativação.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Conforme a documentação:', 'Guias', 'docx, importado', 'Importado via script', 'https://docs.saveincloud.com/cloudlets/api/platform-cli-overview');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Litespeed', 'Guias', 'docx, importado', 'Importado via script', 'LiteSpeed - Erro edit project An unknow error has occurred.
Editing ROOT context: The [jem vcs editproject] operation has failed: Project edit failed');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar nos logs do jem.log', 'Guias', 'docx, importado', 'Importado via script', 'algo semelhante a result:"4000" error cannot pull with rebase you have unstaged changes.
erro please commit or stash them.
O senhor pode verificar os erros de implementação indo nos logs e em jem.log. Segue o print.
No log está indicando que no diretório do projeto (/var/www/webroot/ROOT), existem alterações locais não commitadas. E o Git está impedindo o pull --rebase para evitar sobrescrever essas alterações.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa que ao subir projeto consta o seguinte erro:', 'Guias', 'docx, importado', 'Importado via script', '"error": "The [ jem vcs update ] operation has failed: Authentication failed or url is incorrect",');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ERRO DE CREDENCIAL', 'Guias', 'docx, importado', 'Importado via script', '"log": "NodeId - IDdonode; Host - nomedodominio; URL - gitlab/github; Directory - /var/www/webroot/ROOT; \nspawn /bin/git --git-dir=/var/www/webroot/ROOT/.git pull --rebase\nerror cannot pull with rebase You have unstaged changes.\nerror Please commit or stash them."');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está tentando LiteSpeed->implementações->Root', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar logs vcs_update.log se houver erros relacionados a git', 'Guias', 'docx, importado', 'Importado via script', 'Possivelmente o erro seja algum processo do git em execução nesse momento, o que está impedindo a operação de implementação via git');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode ser erro de autenticação também', 'Guias', 'docx, importado', 'Importado via script', 'Pedir para verificar o token de acesso, pode estar errado e demonstrar o log vcs_update.log');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre como colocar token', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Demonstre os prints do treinamento', 'Guias', 'docx, importado', 'Importado via script', 'https://treinamento.suporte.sic.tec.br/docs/uteis/treinamento-git/
Se o cliente deseja utilizar por ssh ele deve acessar o github em code – ssh no repositório desejado
Cliente comenta sobre processos em um ambiente novo com mesmo projeto do antigo, está cheio e travando, mas no antigo não');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Procure pelos processos ativos no ambiente novo e antigo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux --sort -pmem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('lista processos ordenados pelo consumo de memória', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('caso ele utilize litespeed', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux | awk ''$1=="litespe+"'' | wc -l', 'Guias', 'docx, importado', 'Importado via script', 'Descobrir quantos processos o servidor web LiteSpeed está rodando simultaneamente');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Veja se está tendo a mesma utilização de processos', 'Guias', 'docx, importado', 'Importado via script', 'Verifique como funciona o cron do cliente, pode estar encavalando processos
Cliente deseja mudar um e-mail na plataforma para outra conta de email');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pedir para solicitar no email para suporte@saveincloud.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Alterar no jca', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Alterar no WHMCS pesquisando email e alterando lá', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('informar no e-mail', 'Guias', 'docx, importado', 'Importado via script', 'E-mail "antigo" alterado para "novo" conforme solicitado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente perdeu acesso a senha do postgres', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pedir para realizar a troca de senha na instancia em especifico', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar conexões ativas no postgres', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux | grep postgres', 'Guias', 'docx, importado', 'Importado via script', 'Cliente pergunta se é possível instalação de SNORT e configuração do mesmo
Infelizmente, não existe hoje uma solução “pronta” nativa para instalar o Snort diretamente dentro do nó via painel.
Teria que realizar o processo de forma manual mesmo, intalando as dependencias necessárias para esta solução.
Conseguimos orientar no que for relacionado à plataforma, mas a parte de instalação e configuração do Snort e dependências via yum fica por conta do cliente mesmo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa sobre o erro no banco de dados', 'Guias', 'docx, importado', 'Importado via script', 'SQLSTATE[HY000] [2002] No route to host (Connection: mysql, Host: node259923-prod-painel-sala-rmed.sp1.br.saveincloud.net.br, Port: 16174, Database: rmed, SQL: select exists (select 1 from inform
ation_schema.tables where table_schema = schema() and table_name = ‘app_configs’ and table_type in (‘BASE TABLE’, ‘SYSTEM VERSIONED’)) as exists)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O erro pode ser na porta selecionada para o banco', 'Guias', 'docx, importado', 'Importado via script', '.env deve está configurada a porta 16174, onde para rede interna seria a padrão 3306');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Observar em qual node o cliente está', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Observar que o cliente deve descompactar o arquivo antes', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente questiona sobre uma invasão sobre sua VPS', 'Guias', 'docx, importado', 'Importado via script', 'Bom, pode ter sido expôsto esse endereço em algum lugar, o ambiente ficou acessível publicamente e foi “varrido”.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Consegue rodar um curl, esse trafego vem da cloudflare, LB ?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Observando que está tudo ok no ambiente do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Observe a log veja se realmente houve acesso', 'Guias', 'docx, importado', 'Importado via script', 'Verificar se o  acesso foi originado de um IP pertencente à Google Cloud, que normalmente é utilizado por ferramentas automáticas de varredura, como bots e scanners, uma hipótese tá. Não significa que houve invasão, apenas que o servidor respondeu a uma requisição HTTP básica.
Pode limitar acesso a partir do host do ambiente com LB, na Cloudflare, voce pode configurar para permita somente IPs da Cloudflare nas portas da sua aplicação, evitando que acessando direto.
O hostname, assim como o IP, não é um identificador apenas interno ou “secreto”, mas sim um nome público que segue o padrão da plataforma. Scanners automatizados na internet costumam testar hostnames baseados em padrões conhecidos ou capturam essas informações a partir de respostas HTTP, redirecionamentos ou varreduras de infraestrutura. Dessa forma, o nome do ambiente pode aparecer em tentativas de acesso sem que tenha ocorrido qualquer vazamento de informação ou acesso indevido. Super normal esse tipo de comportamento em ambientes “expostos” na internet.
Cliente pergunta se é possível alterar o endereço endpoint de sua instância
Do endpoint não.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Seria necessário criar outra instância?', 'Guias', 'docx, importado', 'Importado via script', 'Sim, caso queira mudar a URL do ambiente/endpoint, é necessário criar outro ambiente, já que a URL é tratada como um ID unico.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente questiona sobre a redefinição de senha a todo momento', 'Guias', 'docx, importado', 'Importado via script', 'A senha precisa ter mais de 12 Caracteres para que seja gravada corretamente.
Verique também se está acessando a URL correta da plataforma, por exemplo:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('app.paas.saveincloud.net.br', 'Guias', 'docx, importado', 'Importado via script', 'Cliente com problema no apache link não está funcionando no phpmyadmin');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se o serviço está ativo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status httpd', 'Guias', 'docx, importado', 'Importado via script', 'Cliente comenta que o horário da aplicação está errado (horário errado)
Caso queira trocar o horário para UTC -3 (Horário de Brasília, por exemplo) deve ser feito utilizando o timedatectl ou o TimeZone Add-on na instancia.
Timedatectl deve ser utilizado no WebSSH, e o add-on pode ser encontrado no respectivo menu.
Cliente está com dúvida sobre resposta de dns (apontamento do banco para o servidor)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar o apontamento utilizado pelo cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Poderia nos dar mais detalhes por gentileza?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Qual seria a instancia?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como foi observado o erro?', 'Guias', 'docx, importado', 'Importado via script', 'tente utilizar o link, como por exemplo: proxy.nomedoambiente.sp1.br.saveincloud.net.br');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre a certificação SOC Type', 'Guias', 'docx, importado', 'Importado via script', 'https://ascenty.com/data-centers/seguranca-e-certificacoes/certificacoes/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode verificar nessa página por favor', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa que está tendo lentidão/oscilação em sua aplicação', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Peça para ele enviar um teste de ping e tracert', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como posso testar essa instabilidade aqui do meu lado?', 'Guias', 'docx, importado', 'Importado via script', 'se possível me dê mais detalhes então de como funciona essa aplicação e se rodar essa mesma query diretamente no banco de dados, a lentidão ocorre?
Somente realizando testes conseguiremos entender melhor o caso. Porém realmente do nosso lado até o momento nenhuma anormalidade.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa que quer pagar, mas não está acessando o painel', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Encaminhar ao setor financeiro', 'Guias', 'docx, importado', 'Importado via script', 'Irei encaminhar vosso atendimento para nosso time financeiro, eles poderão melhor auxiliá-la no tocante aos métodos de pagamento e geração de fatura.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Load alto', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux --sort -pmem = filtra por memoria', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux --sort -pcpu = filtra por cpu', 'Guias', 'docx, importado', 'Importado via script', 'no comando top, você pode filtrar também com ctrl + M para memória RAM e ctrl + P para CPU');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar Load average do servidor', 'Guias', 'docx, importado', 'Importado via script', 'vzlist -o ctid,status,cpus,laverage,numproc,hostname -s -laverage | head | column -t');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vzctl enter CTID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('listar processos de cpu e memoria', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux --sort=-%cpu | head -10', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux --sort=-%mem | head -10', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar leitura de disco', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iostat -x 1 | head -n 15', 'Guias', 'docx, importado', 'Importado via script', 'Device - Nome do dispositivo de disco.
rrqm/s - Leituras por segundo que foram mescladas antes de chegar ao disco (read requests merged).
wrqm/s - Escritas por segundo mescladas antes de chegar ao disco (write requests merged).
r/s - Número de operações de leitura por segundo.
w/s - Número de operações de escrita por segundo.
rkB/s - Quantidade de KB lidos por segundo.
wkB/s - Quantidade de KB gravados por segundo.
avgrq-sz - Tamanho médio (em KB) das requisições de I/O.
avgqu-sz - Tamanho médio da fila de requisições aguardando atendimento.
await - Tempo médio (ms) que uma requisição espera para ser concluída (fila + processamento).
r_await - Tempo médio de espera das leituras.
w_await - Tempo médio de espera das escritas.
svctm - Tempo médio gasto pelo dispositivo para atender uma requisição. (Em kernels recentes este campo pode não ser muito preciso.)
%util - Percentual de tempo em que o disco ficou ocupado. Próximo de 100% indica saturação.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Monitoramento em tempo real do desempenho do SO', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vmstat 110', 'Guias', 'docx, importado', 'Importado via script', 'r = Processos aguardando CPU.
b = Processos bloqueados.
si e so = Uso de swap.
wa = Demonstra se CPU está esperando I/O.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('id - Ociosidade de CPU', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('us - CPU usada por aplicações - Muito alta constantemente', 'Guias', 'docx, importado', 'Importado via script', 'sy - CPU usada pelo kernel - Muito alta pode indicar chamadas intensas ao sistema');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('id - CPU ociosa - Muito baixa pode indicar CPU saturada', 'Guias', 'docx, importado', 'Importado via script', 'wa - CPU esperando I/O (disco - Se alta, o gargalo pode ser o disco, não a CPU
st - Tempo "roubado" pelo hypervisor - Em máquinas virtuais, se alta, pode indicar contenção no host');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Malware Cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Informar Cliente Load Alto', 'Guias', 'docx, importado', 'Importado via script', 'Bom dia, faço parte do suporte técnico da SaveinCloud. O motivo do contato é para pedir por gentileza que verifique o seguinte ambiente:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nome do ambiente:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nodo ID:', 'Guias', 'docx, importado', 'Importado via script', 'Pois o mesmo está com o serviço do "" consumindo muito recurso, o que está sobrecarregando e pode prejudicar o seu ambiente, como lentidão e travamentos. Poderia verificar o quanto antes por favor? E em caso de dúvidas sigo a disposição.
Pois o mesmo está com a presença de processos com comportamento atípico que merecem uma análise por parte da equipe responsável pela aplicação.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa erro network error: no buffer space avaliable', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique o container do cliente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('free -h', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux --sort -pcpu', 'Guias', 'docx, importado', 'Importado via script', 'Recomendavel realizar o reinicio dos serviços e observar o comportamento do uso de recursos.
Recomendavel verificar se o uso de recursos é legitimo, para que seja realizado o aumento assertivamente.
Caso o alto uso não seja legitimo, causado por exemplo, por processos travados do banco, um reinicio já ajudaria.
O erro apresentado normalmente está relacionado à falta de recursos de rede na máquina de origem que está tentando realizar a conexão.
Esse comportamento pode ocorrer quando o sistema operacional esgota os buffers ou o número de conexões TCP disponíveis, o que impede a abertura de novas conexões temporariamente.
Recomendamos reiniciar a aplicação utilizada para acesso (ou a própria VM) e tentar realizar a conexão novamente. Caso o problema persista, pode ser necessário revisar a utilização de conexões de rede no ambiente de origem.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja restauração de algum arquivo .sql', 'Guias', 'docx, importado', 'Importado via script', 'Basta enviar o arquivo para a instancia primeiramente e depois restaurar com comandos mysql');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se o cliente pergunta se vale a pena aumentar os recursos', 'Guias', 'docx, importado', 'Importado via script', 'Depende do uso e da melhor aproximação de acordo com a necessidade do senhor.
Caso o uso de recursos e o travamento seja legítimo (Processos e execuções de uma aplicação sua, por exemplo) o aumento de recursos é valido.
Por outro lado, se o travamento ocorreu por parte de processos do sistema, o melhor seria que o senhor investigasse e caso seja possível, parar a execução desses processos para que os recursos possam ser utilizados por sua aplicação/serviço.
Se o senhor possui mais de um processo/serviço ou aplicação na máquina, e o travamento ocorreu por conta de uma “briga” por recursos, então sim, outro servidor seria indispensável para evitar novos travamentos em disputa de processamento e memória.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Apache Python', 'Guias', 'docx, importado', 'Importado via script', 'Cliente com problema na aplicação python ModuleNotFoundError: No module named ‘flask_cors’\');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntar como o cliente rodaria está aplicação?', 'Guias', 'docx, importado', 'Importado via script', 'Qual comando geralmente o senhor utiliza para iniciar esta aplicação python?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os logs', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pip list | grep (dependência em questão)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pip show dependência', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode mostrar para o cliente o print destes comandos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Possivelmente erro de dependência', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar com o cliente qual a versão que foi criada a aplicação dele', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Possivelmente erro de versionamento entre projetos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ver se wsgy.py está configurado de acordo com a documentação', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Docker', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre docker, como funciona e tudo mais', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('A principio tente entender o caso:', 'Guias', 'docx, importado', 'Importado via script', 'Qual seria a necessidade de estar utilizando uma imagem personalizada da sua aplicação nesse momento? Vocês trabalham com que tecnologia atualmente (uma aplicação python, nodejs, dotnet…)?
Em casos assim, também é aconselhavél marcar uma call com o tipo de projetos, para entender melhor.
aqui é uma doc que explica como criar uma imagem personalizada - https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/containers/imagem-personalizada/criando-imagem
utilizando o docker enginer CE, caso queira também - https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/containers/docker/docker-engine
documentação oficial do Docker - https://docs.docker.com/get-started/docker-concepts/building-images/understanding-image-layers/
O senhor precisa identificar se é necessário empacotar a aplicação como uma imagem para subir na plataforma, isso seria uma questão de analisar
Nós possuímos as stacks já pré-otimizadas com as bibliotecas e runtime necessárias para a aplicação executar (node.js, python, dotnet etc)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Miner rodando em Docker', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('# 1. Ver todos os containers rodando', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('docker ps', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('# 2. Ver processos suspeitos em todos os containers', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('docker ps -q | xargs -n1 docker top', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('# 3. Procurar arquivos do xmrig em todo o sistema', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('find / -name "xmrig" 2>/dev/null', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após descobrir o ID do overlay', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('# Pegar o ID do overlay e descobrir qual container é', 'Guias', 'docx, importado', 'Importado via script', 'docker ps -q | xargs -I{} sh -c ''docker inspect {} | grep -q "ID overlay" && echo {}''');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('# Entrar no container identificado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('docker exec -it <ID_DO_CONTAINER> bash', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('# Dentro do container confirmar os arquivos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ls -lah /tmp', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ls -lah /tmp/x', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja adicionar outro Docker em seu ambiente', 'Guias', 'docx, importado', 'Importado via script', 'Você gostaria de adicionar um novo Docker Engine CE porém em uma camada diferente?
Criando em uma camada diferente, você consegue ter um controle separado dos cloudlets e espaço em disco para as instâncias Docker Engine CE.
Se sim demonstrar apertando no + em baixo e adicionar um novo em serviços extras');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja realizar um backup do ambiente docker', 'Guias', 'docx, importado', 'Importado via script', 'Devemos informar que só temos a opção de snapshot disponivel que é cobrado 80 reais
informar que vamos realizar um backup para ter snapshot pronto da instância momentos antes da atualização feita. Assim caso de algum problema o cliente poderá entrar em contato conosco e solicitar o snapshot.`
Cliente pergunta quem é o responsável pelos containers docker se verem na mesma rede? isso quem fazer é a docker network ou o iptables?
Os containers precisam estar dentro da mesma rede docker para ter a comunicação com o nome do container');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ai ele faz o gerenciamento das redes com docker network', 'Guias', 'docx, importado', 'Importado via script', 'O gerenciamento dos containers é realizado de forma padrão para Docker Engine CE, não há diferenciação, via Docker CLI.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente com erro 502 na aplicação docker', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Docker ps - verificar se a aplicação está ativa', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Docker logs', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se houve ip Publico', 'Guias', 'docx, importado', 'Importado via script', 'Qual seria a necessidade do uso de IP público na conexão? Recomendamos sempre o uso da rede privada para uma melhor conexão caso as instâncias estejam na mesma conta.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente perdeu acesso ssh no Docker', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se existi binário de ip', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ip a', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ifconfig venet0 <IP-PRIVADO_NODE> netmask 255.128.0.0 up', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('route add default dev venet0', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('apt install iproute2', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como criar uma imagem personalizada (Docker)', 'Guias', 'docx, importado', 'Importado via script', 'https://docs.saveincloud.com/docs/ambientes/tipos-instancias/containers/imagem-personalizada/criando');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tem como fazer a criacao da instancia a partir da imagem dele', 'Guias', 'docx, importado', 'Importado via script', 'As variaveis como EXPOSE, ENTRYPOINT, ENV, serão usadas para setar a instância, como as portas de acesso, as variaveis de ambiente, etc');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está com problemas na POP e saída SMTP', 'Guias', 'docx, importado', 'Importado via script', 'Peça para o cliente utilizar o link do domínio de e-mail, por exemplo: server8.pureteserver.com');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Na entrada POP e na saída SMTP por favor', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso não funcione ele tem que tentar utilizar as portas do not SSL', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente precisa ativar o suporte ao GD no servidor apache/php', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pra fazer a ativação desse pacote', 'Guias', 'docx, importado', 'Importado via script', 'Ele deve entrar acessar os arquivos, clicando em “Configuração” acessar o arquivo php.ini.
Pesquisar por gd e descomentar todo os resultados dessa pesquisa.
Não pode esquecer de apagar essa linha de autoconfiguration no inicio do arquivo.
Após isso vai salvar o arquivo e reiniciar o Nodo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Precisa excluir essa: “; Jelastic autoconfiguration mark”', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente questiona sobre os endereços e endpoints após snapshot', 'Guias', 'docx, importado', 'Importado via script', 'Como o ambiente anterior foi excluído, não é possível restaurar os endereços e nomes anteriores, resultando na mudança dos endereços que antes eram utilizados.
Será necessário que o senhor realize nova criação dos endpoints para acesso.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique se o serviço do firebird está ativo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl status firebird', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cd /opt/firebird/data/', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ls', 'Guias', 'docx, importado', 'Importado via script', 'Tanto o FTP quanto o banco mantem as credenciais antigas, já que o sistema todo é apenas uma imagem do ambiente excluído.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa que o site travou', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('grep -i "error\|fail\|crit\|panic /var/log/messages', 'Guias', 'docx, importado', 'Importado via script', 'É recomendado que realize o bloqueio em nível firewall, e a mitigação dos ataques via WAF, por exemplo, para que diminua consideravelmente o uso de recursos, e ocorra o bloqueio após muitas tentativas de falhas de autenticação.
Realizar um escalonamento horizontal/vertical é valido, porém em casos onde o uso de recursos é legitimo. Se o senhor configura um escalonamento horizontal/vertical em uma situação onde o esgotamento de recursos é causado por ataques ou tentativas parecidas com a que ocorreu, o senhor estará aumentando a capacidade do atacante em obter o que deseja (atacante terá mais recursos disponíveis para utilizar, aumentando o rate do ataque), e ainda pagando por isso.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SPAM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pesquisar cwp em environments jca', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('entrar no host dele', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('realizar a verificação de arquivos maliciosos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Arquivo infectado', 'Guias', 'docx, importado', 'Importado via script', 'Olá **! Estou entrando em contato, pois fui informado que foi identificado a presença de um arquivo malicioso no diretório da sua conta:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('**/**/**', 'Guias', 'docx, importado', 'Importado via script', 'Por segurança e a estabilidade do servidor e evitar novas suspensões futuras, solicitamos que realize uma busca completa em seus arquivos e remova qualquer conteúdo não reconhecido. Recomendo ao senhor a alteração de senhas de acessos, para maior segurança. Reforço que a permanência de arquivos infectados poderá resultar em uma nova suspensão.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro de limite de disco alocado', 'Guias', 'docx, importado', 'Importado via script', 'Notei que os discos foram de fato alocados para 400GB.
Houve algum erro na API que pode ter alocado o espaço as instancias.
Como a cobrança é feita por demanda (baseada no uso), não haverá aumento no valor cobrado por conta desse espaço que foi alocado.
Caso deseje, peço que retorne os valores anteriores utilizando a configuração de topologia do ambiente.
Não efetivamos nenhuma mudança, mas vamos verificar se houve algum problema que causou a mudança no tamanho das instâncias, mas reforçamos que a cobrança é feita pelo uso de disco e não pelo tamanho da instância, portanto não haverá aumento no valor cobrado por conta desse espaço que foi alocado. Se desejar, pode diminuir o tamanho do disco pelo painel');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Lentidão/travamento/Queda', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux = print dos processos em execução', 'Guias', 'docx, importado', 'Importado via script', 'top = ve os processos em tempo real( Ctrl + P para filtrar por CPU e Ctrl + M para filtrar por memória RAM, pra sair apenas apertar Q)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Deploy', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está reclamando de downtime ao realizar um novo deploy', 'Guias', 'docx, importado', 'Importado via script', 'Se o senhor desejar não ter este downtime, precisaria ter dois ambientes e fazer a instalação do traffic distributor configurando o traffic ratio pra 0-100, por exemplo, quando fizesse a implementação, e depois voltasse pra 50-50 pra ser distribuído igualmente entre os ambientes.
O senhor pode se orientar melhor, consultando a seguinte documentação:
https://www.virtuozzo.com/application-management-docs/blue-green-deploy/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('deploy e execução de aplicações asp.net', 'Guias', 'docx, importado', 'Importado via script', 'Nós possuímos uma stack que permite o deploy e execução de aplicações asp.net, dê uma olhada em nossa documentação onde detalha sobre as configurações e também se as versões disponíveis atendem o escopo do projeto.
https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/servidores-aplicacao/dotnet/implementacao-dotnet');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Fatores que levam a instância a ter lentidão:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Uso alto de recuso', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Processo consumindo muito', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Conexão lenta (pedir tracert e ping)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Banco com otimização ou query ruim', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente aparece com erro no email', 'Guias', 'docx, importado', 'Importado via script', 'h230us.hmservers.net [107.161.183.174]:53445 is in an RBL: Error: open resolver; https://check.spamhaus.org/returnc/pub/191.243.199.151/
Geralmente o problema está na configuração do servidor de e-mail do destinatário.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Possivelmente alterar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat /etc/resolv.conf', 'Guias', 'docx, importado', 'Importado via script', 'alterar o nameserver 8.8.8.8 (comentar ele, provavelmente irá resolver)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está com problemas de conexão com o banco', 'Guias', 'docx, importado', 'Importado via script', 'Para conexões externas sem IP público, é necessário um endpoint para o ambiente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta como desativa o serviço sendmail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Necessário liberar o acesso root nesse caso', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo systemctl stop sendmail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo systemctl disable sendmail', 'Guias', 'docx, importado', 'Importado via script', 'Se alguma aplicação utiliza ele para envio de e-mails, não conseguirá enviar mais
Depois de desativar, você pode remover o acesso root da instância via add-on, caso queira');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre nossos datacenters', 'Guias', 'docx, importado', 'Importado via script', 'O datacenter utilizado para a região de São Paulo e Fortaleza é a Ascenty e você pode consultar as certificações no site deles: https://ascenty.com/data-centers/seguranca-e-certificacoes/certificacoes/
Caso você venha a criar ambiente em Brasília, o datacenter será a Elea e as certificações também podem ser consultadas no site dela: https://eleadatacenters.com/certificacoes/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente estão tendo e-mails rejeitados', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SMTP error from remote mail server after RCPT TO::', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('550-“JunkMail rejected', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('desativar o RBL do spamhaus', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pesquisar por exim', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('configuração de serviço/ Gerenciador de configuração do exim', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Aba RBN', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('OFF - RBL: bl.spamcop.net', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('OFF - RBL: zen.spamhaus.org', 'Guias', 'docx, importado', 'Importado via script', 'explicar que o RBL do spamcop e spamhaus foi desativado e os bloqueios possivelmente estão acontecendo por conta do remetente utilizar o resolv com algum openresolver (8.8.8.8, 1.1.1.1 etc). O RBL desativado faz com que o servidor fica suscetível a muitos recebimentos de spam também.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente reclama sobre receber muitos spams no cwp', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se a RBL está ativa', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Antispam no CWP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso não/ não há nada que podemos fazer', 'Guias', 'docx, importado', 'Importado via script', 'identificar um spam, mova-o para a pasta de lixo eletrônico e crie regras de filtragem na sua própria caixa postal. Isso permite que o sistema aprenda exatamente o que você considera indesejado
conversei com o time e do nosso lado nós temos as regras de spam criadas, nesse caso a única alternativa é a criação dos filtros. Eu verifiquei também seu e-mail e alguns “spam” são e-mail “legítimos” por exemplo com o final (.com.br) esse tipo de domínio não é possível bloquear a nível de servidor pois pode acabar bloqueando e-mails legítimos.
Através do servidor, eu consigo realizar os bloqueios de forma definitiva usando os dominios, bloqueando por remetente, agora, caso o dominio seja genérico, não é possivel fazer esse procedimento por bloquear outros dominios que de fato são confiáveis. Voce pode me passar os dominios dos spam que analiso a possibilidade de bloqueio, mas caso prefira, pode realizar a criação de filtros/bloqueios usando seu gerenciado de e-mails.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Botar o dominio no padrão de um arquivo sender_access padrão regex', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Teste:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como seria um teste pra ver se o e-mail está bloqueado mesmo:', 'Guias', 'docx, importado', 'Importado via script', 'postmap -q "detran@mstarts01a.corehostx.xyz" regexp:/etc/postfix/sender_access');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo de padrão regex', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/^.*@dominio\.com$/        REJECT', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/^user[0-9]+@gmail\.com$/  REJECT', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/@spammer.*\.com$/         REJECT', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Criação de filtros', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Acessar o webmail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Demonstrar em configurações / filtros / criar', 'Guias', 'docx, importado', 'Importado via script', 'https://suporte.studio4x.com.br/tutoriais/configurando-filtros-e-regras-de-e-mail-no-roundcube/
https://atmunhost.com.br/central/knowledgebase/153/Como-criar-filtros-de-e-mail-no-Roundcube.html');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para bloqueio de e-mail no CWP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vai para o caminho /etc/postfix/main.cf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('procure por access geralmente sender_blacklist, sender_access', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique qual arquivo tem mais bloqueios', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('só copiar os parametros e colocar o dominio de bloqueio no lugar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Bloqueios de ip no cwp', 'Guias', 'docx, importado', 'Importado via script', 'verifique o ip dos dominios que estão enviando spam em todos os cabeçalhos no e-mail recebido');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Procure no ipinfo / veja o range do ip', 'Guias', 'docx, importado', 'Importado via script', 'Realize o bloqueio no firewall / colocando o range de ip na faixa vermelha e uma nota no quick deny e aperte
Realize teste de e-mail para ver se está rejeitando.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('postmap -q "teste@troinfbox1.com" regexp:/etc/postfix/sender_access', 'Guias', 'docx, importado', 'Importado via script', 'Cliente pergunta sobre bloqueio de porta para somente um acesso por ip');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Deve ser feito como exemplo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('server {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('listen 8081;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('allow 200.100.50.10;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('deny all;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('location / {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('proxy_pass http://127.0.0.1:3000;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('É possível liberar 3 portas em um único arquivo?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo:', 'Guias', 'docx, importado', 'Importado via script', 'onde a porta 8081, 8081 e 8083 é autorizada apenas pelo IP 200.100.50.10');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('server {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('listen 8081;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('allow 200.100.50.10;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('deny all;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('location / {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('proxy_pass http://127.0.0.1:8081;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('server {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('listen 8082;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('allow 200.100.50.10;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('deny all;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('location / {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('proxy_pass http://127.0.0.1:8082;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('server {listen 8083;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('allow 200.100.50.10;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('deny all;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('location / {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('proxy_pass http://127.0.0.1:8083;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', 'tem uma forma mais simples, mas apenas se todas usam o mesmo backend, seria assim:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('server {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('listen 8081;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('listen 8082;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('listen 8083;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('allow 200.100.50.10;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('deny all;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('location / {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('proxy_pass http://127.0.0.1:3000;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('location / {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('proxy_pass http://127.0.0.1:8082;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('server {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('listen 8083;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('allow 200.100.50.10;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('deny all;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('location / {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('proxy_pass http://127.0.0.1:8083;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('deve ser criado em nginx.conf, nginx-jelastic.conf', 'Guias', 'docx, importado', 'Importado via script', 'Cliente fala que está com dificuldade de acessar o arquivo fdb pelo filezila');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nesse caso, você precisa acessar o banco com filezilla usando o IP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pergunte como está sendo feita a conexão', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Por ser o IP público, é necessário a porta padrão do ambiente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ele pode verificar a porta padrão utilizando:', 'Guias', 'docx, importado', 'Importado via script', 'netstat -pltn em seu ambiente, mas caso não tenha sido alterada, segue a padrão, que seria 3050');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Quando o cliente precisa utilizar o supervisor como PM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Instalar o add-on Supervisor Process Manager', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja instalar uma nova versão de uma aplicação', 'Guias', 'docx, importado', 'Importado via script', 'Melhor maneira de se fazer isso seria criar uma outra instancia com a Versão desejada do php, e alterar o apontamento DNS para o IP da instanica, via subdominio, para que não houvessem conflitos.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ex: financeiro.doricasistema.net.br', 'Guias', 'docx, importado', 'Importado via script', 'caso preferir, utilizando o mesmo IP do load balancer, porém alterando no .conf o destino para a instancia com a versão php 8.1');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Existem as seguintes opções:', 'Guias', 'docx, importado', 'Importado via script', 'Manter o mesmo ambiente, e criar apenas a nova instancia com a versão desejada.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Criar um novo ambiente (separado) com a nova instancia:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Utilizar o mesmo Load Balancer já existente', 'Guias', 'docx, importado', 'Importado via script', 'Criar outro load balancer.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deverá ir até o local que onde ficam os servidores DNS dele', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('procurar no registro br', 'Guias', 'docx, importado', 'Importado via script', 'O cliente prefere utilizar o LoadBalancer já existente (do outro ambiente) ou criar um novo, com um novo IP?
Caso opte por utilizar o novo, basta criar um apontamento de financeiro.doricasistemas.net.br para o IP do Nginx já existente, e posteriormente criar um .conf direcionando para a nova instancia.
Dessa forma, após o cliente criar o apontamento, só precisará realizar a configuração do SSL
Para a criação do .conf, o senhor pode consultar a seguinte documentação:
https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/load-balancer/nginx/http');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problemas com TCP (TCP attempt Fails)', 'Guias', 'docx, importado', 'Importado via script', 'Uma requisição HTTP trabalha com o protocolo TCP e o TCP trabalha sob handshake para fechar conexão, isto é, a instância envia um pacote SYN para o destino e espera receber um SYN-ACK de volta para responder com um pacote ACK.
se o seu container envia um pacote SYN e não recebe do destino um SYN-ACK, irá cair em TCP Attempt Fails.
No passado, tínhamos um mesmo problema relacionado a este timeout, em específico com a Sicoob, e foi resolvido pelo lado deles para que não retornasse mais os erros
Verificando internamente, tratamos diretamente com eles pois nesse caso nós éramos o cliente com o problema de timeout.
Não seria problema de egress/NAT, pois o pacote é enviado ao destino (SYN-SENT), mas ele fica nesse estado de conexão até dar timeout.
A instância fica aguardando o retorno do pacote mas como não recebe da Sicoob, acaba ocorrendo o timeout.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Endpoint', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('a URL do endpoint é o hostname da instância', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('se a instância não tem IP público, ela vai resolver o IP do SLB', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('se tiver IP público, vai resolver o IP da instancia', 'Guias', 'docx, importado', 'Importado via script', 'o endpoint é o hostname + porta alta que ta aberta no SLB e depois redireciona para a instancia na porta privada
mas só funciona porque o hostname responde ao SLB, e depois o SLB redireciona para a instancia
com o IP público o hostname nao vai responder o IP do SLB e sim da instancia, então o acesso deve ser feito na porta em que a aplicação roda dentro da instancia, nesse caso a 7979, deve estar liberado no firewall tbm');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Você pode utilizar o netstat -pltn pra descobrir a porta da aplicação', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Explicação sobre endpoint, mas possui ip publico', 'Guias', 'docx, importado', 'Importado via script', 'Atualmente, sua instância já possui IP público, o que permite o acesso direto utilizando IP + porta desejada (por exemplo: IP público + porta 21, ou a porta do serviço como Firebird). Nesse cenário, não é necessário utilizar endpoint.
Caso opte por utilizar o endpoint, será necessário remover o IP público da instância, pois a comunicação passará a ser feita através do SLB (Load Balancer), utilizando a porta pública configurada no endpoint.
Sobre o FTP, ele pode funcionar no ambiente, porém não é necessário nesse caso, já que o acesso direto via IP público já atende a necessidade. O uso de endpoint com FTP pode exigir configurações adicionais devido ao uso de múltiplas portas (modo passivo).');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('De forma rápida para cliente que só quer se conectar', 'Guias', 'docx, importado', 'Importado via script', 'add-on do FTP realiza a atribuição de um IP público na instância e o acesso via endpoint não funciona caso a instância tenha o IP público atribuídos.Quando se tem o IP público, você deve utilizar a porta do serviço em execução (nesse caso, a porta 21) e não a porta pública gerada para o endpoint.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente não tem acesso as logs do postgresSQL', 'Guias', 'docx, importado', 'Importado via script', 'O senhor está usando um sistema operacional desatualizado (CentOS), e que estava com o serviço ssh desatualizado, realizamos a atualização, mas pode ocorrer falhas futuras novamente, recomendo que o senhor planeje uma atualização de uma SO mais nova, como almalinux por exemplo que contenha um suporte em andamento ainda');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat /etc/os-relase', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('talvez ajude yum upgrade openssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('se existesse alguma atualização ele faria', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode dar erro por conta de ter um repositorio desatualizado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Realizar o apontamento no NGINX', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente usa hostgator', 'Guias', 'docx, importado', 'Importado via script', 'agora o apontamento deve ser feito atraves do site deles, tipo A apontando para o seu IP
Por ser uma plataforma que não temos conhecimento e administração, não posso ajudar com passos e prints, mas acredito que esse link pode auxilia-lo no apontamento, veja:
https://portal.inchurch.com.br/pt-br/como-fazer-o-apontamento-de-domínio-no-hostgator');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('E-mail WHM erro de interface do transfer', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não exibi o painel de transfer or restore no Cpanel account', 'Guias', 'docx, importado', 'Importado via script', 'Verificar no inspecionador do navegador se há erros referente ao front-end');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('possivelmente alterar o idioma do cpanel de português para inglês', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer saber como ver trafego pago', 'Guias', 'docx, importado', 'Importado via script', 'Não é possível se ele utilizar sftp/ftp para transferência de arquivos ou comunicação dos mesmos');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente questiona como funciona o processo de SSL/NGINX', 'Guias', 'docx, importado', 'Importado via script', 'O NGINX realiza o recebimento das requisições externas e redireciona para os serviços com base no IP e porta definidos no arquivo de configuração responsável pelo proxy reverso.
No arquivo de configuração, você define o domínio numa diretiva chamada server_name e especifica para qual instância e serviço deverá ser redirecionada às requisições em um diretiva chamada proxy_pass, desse modo, o NGINX consegue com base no domínio redirecionar para o servidor certo.
Ele também possui o módulo de stream TCP/UDP, caso seja necessário, por exemplo, fazer uma conexão a um banco de dados dentro do windows.
Além disso, você consegue gerenciar facilmente os certificados SSL/TLS dos domínios com Let’s Encrypt no NGINX, onde eles devem estar apontados com registro do tipo A para o IP do NGINX.
As configurações são simples, basicamente envolveria um arquivo dominio.conf para cada domínio no diretório /etc/nginx/conf.d/ e a cada modificação reiniciar o serviço do NGINX para carregar as novas configs.
Você pode consultar como essas configs são realizadas em nossas documentações:
HTTP/HTTPS -> https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/load-balancer/nginx/http
TCP/UDP -> https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/load-balancer/nginx/tcp-udp
Toda a comunicação entre o NGINX e as instâncias ocorrem via IP privado (IP LAN). Além disso, você definir que um endpoint específico abre um site específico dentro do mesmo servidor de aplicação configurando as diretivas de location, por exemplo:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('dominio.com.br/api -> redireciona para 10.0.0.2:3000', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('dominio/app -> redireciona para 10.0.0.2:5000 (ou outro IP também)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente comenta erro que impossibilita a criação de pod', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pvc-check-398 0/1 CreateContainerError 0 2m22s', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pvc-id-inspect-links 0/1 CreateContainerError 0 3m48s', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('failed to prepare subPath for volumeMount', 'Guias', 'docx, importado', 'Importado via script', 'esse tipo de erro ocorre quando ele tentou montar o volume e preparar, mas não conseguiu acessar ou enxergar o diretorio esperado. Consegue verificar se o caminho de fato existe?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('As permissões estão ok?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está com problema utilizando o CLI', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('json{“response”: {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('“result”: 11,', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('“source”: “JEL”,', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('“error”: “Can’t find environment by domain [homolog-dkw-frontend]”', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não se deve colocar o host inteiro', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode ser por conta do cliente ser colaborador', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('nesse caso', 'Guias', 'docx, importado', 'Importado via script', 'Como saída, você pode pedir para o dono da conta gerar um token e você fazer a autenticação por token e rodar o CLI');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja aumentar a memory limit do php', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Basta acessar o arquivo php.ini e pesquisar por memory', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('memory_limit', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se perguntar sobre o jelastic.ini', 'Guias', 'docx, importado', 'Importado via script', 'O Jelastic.ini é um arquivo dentro do php.d, onde podem ser criados arquivos de configuração personalizados, aplicados de acordo com a prioridade.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pede estimativa/tempo', 'Guias', 'docx, importado', 'Importado via script', 'Entendo perfeitamente a sua necessidade de um prazo. No momento, nossa equipe técnica está aprofundando os testes para identificar a causa raiz e garantir que a solução seja definitiva. Como a investigação ainda está em curso, prefiro não fornecer uma estimativa imprecisa agora para não gerar falsas expectativas. Manterei você atualizado sobre cada avanço relevante.
Cliente com dúvida se ao apontar o domínio principal corre risco de acontecer algum problema com o domínio/medo de derrubar oque já está funcionando
Não irá ocorrer problema, pois o domínio vai passar a responder ao IP da instância, e os sub irão permanecer respondendo ao IP das instâncias pra onde estão apontados com o registro do tipo A');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa sobre falecimento do proprietário da conta', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Informar ao marcio', 'Guias', 'docx, importado', 'Importado via script', 'Caso tenha perdido o acesso ao painel, mas possua acesso ao email, é possivel nos enviar uma solicitação em suporte@saveincloud.com para que seja realizado a troca do email do acesso, por exemplo.
Irei verificar com meu gerente maneiras de assegurar a titularidade da conta e podermos auxiliá-lo.
Podemos realizar a criação da fatura e enviar por aqui, caso deseje.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Migrar para SP Premium', 'Guias', 'docx, importado', 'Importado via script', 'Toda migração que vier de Brasilia ou Fortaleza, deverá ser alertada a troca dos ips, que vai exigir uma intervenção dele após a execução da migração.
Gostaria de alinhar um detalhe técnico importante sobre a migração. Quando os ambientes são transferidos entre regiões diferentes (como de Brasília ou Fortaleza para São Paulo), ocorre uma alteração obrigatória nos endereços de IP. Por esse motivo, após a conclusão do processo, será necessária uma breve intervenção da sua parte para atualizar os apontamentos de DNS e configurações locais. Caso a migração fosse dentro da mesma região de Vinhedo, o processo seria transparente, mas essa mudança de localidade exige esse ajuste para garantir a conectividade.
A migração do banco de dados de região, For ou BSB não é possível pois vai causar o crash da replicação, replicaset
Não deve ser realizado se não for autorizado pelo Leandro, se forem questionados por eles, podem informar que receberam a informação de só efetuar a migração, depois de autorização do Leandro.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja saber sobre migração premium', 'Guias', 'docx, importado', 'Importado via script', 'A respeito do uso do ambiente na modalidade premium, você pode estar realizando a migração do ambiente para a modalidade premium conforme a imagem enviada. O uso da modalidade premium é recomendada para situações em que é necessário alto desempenho para o processamento de workloads mais pesados e ambientes de missões criticas (como a necessidade do tipo de disco ser NVME em vez de SSD, por exemplo).
você pode verificar a diferença das modalidades Cloudlets App Platform Standard e Cloudlets App Platform Premium nos links abaixo.
Standard: https://docs.saveincloud.com/cloudlets/cloudlets-app-platform-standard
Premium: https://docs.saveincloud.com/cloudlets/cloudlets-app-platform-premium
O tempo de duração da migração varia de acordo com o tamanho do disco da sua instância e a ela será reiniciada durante o processo (ocorrendo downtime durante o processo). Tem a opção de Live Migration onde não ocasionaria um restart no container, mas não é recomendado para instância sob alto workload ou banco de dados ativos.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('NAE', 'Guias', 'docx, importado', 'Importado via script', 'Cliente no nae está com arquivos maliciosos no diretório / arquivos zoados
Bom dia, identificamos um alto envio de e-mails por parte da conta **, onde os mesmos parecem ser suspeitos. Poderia verificar a conta informada, por gentileza?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Print da fila de e-mail', 'Guias', 'docx, importado', 'Importado via script', 'Também identificamos alguns arquivos suspeitos no diretório public_html/wp-content deste mesmo cliente, poderia pedir para que ele realize uma verificação da aplicação a fim de remover arquivos maliciosos?
Print dos arquivos maliciosos.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar quantos e-mails na fila', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('mailq | grep -c "support@monsurefest.com.br"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Limpeza de fila', 'Guias', 'docx, importado', 'Importado via script', 'postqueue -p | awk '' /^[A-F0-9]/ {id=$1; gsub(/[*!]/,"",id)} /support@monsurefest.com.br/ {print id} '' | postsuper -d -');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problemas com NAE1', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Deve entrar em contato com o Operacional PA marcus@patecnologia.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Solicitar o delist da Microsoft NAE', 'Guias', 'docx, importado', 'Importado via script', 'https://olcsupport.office.com/
No NAE cliente tenta realizar o upload de um arquivo maior que 200mb está retornando erro 413');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/usr/local/cwpsrv/conf/cwpsrv.conf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('client_max_body_size 500M;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl restart cwpsrv.service', 'Guias', 'docx, importado', 'Importado via script', 'Cliente deseja apontar o DNS pra o IP de vcs sem precisar mexer no do site?
Para te orientar da melhor forma, preciso entender melhor como está estruturado seu ambiente atual:
Sua aplicação possui login/sessão de usuários ou é apenas um site estático?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O banco de dados está no mesmo servidor ou separado?', 'Guias', 'docx, importado', 'Importado via script', 'Você pretende migrar totalmente para o novo servidor ou apenas testar inicialmente?
Os dois ambientes utilizariam o mesmo banco de dados ou cada um teria o seu?
Dependendo desses pontos, conseguimos definir a melhor estratégia de apontamento sem impactar o funcionamento do site.
É possível sim criar dois apontamentos (dois IPs) para o mesmo domínio, porém isso não funciona como uma troca gradual controlada.
Nesse cenário, o DNS passa a distribuir os acessos entre os dois servidores. Ou seja, parte dos usuários acessará o servidor antigo e parte o novo, de forma aleatória. Isso pode causar problemas dependendo da aplicação, como inconsistência de dados, perda de sessão de usuários ou comportamentos inesperados, principalmente se os ambientes não estiverem totalmente sincronizados (banco de dados, arquivos, etc). Além disso, mesmo em uma troca direta de DNS, não existe uma migração totalmente sem impacto, pois durante a propagação alguns usuários ainda podem acessar o ambiente antigo enquanto outros já acessam o novo, devido ao cache de DNS. Por esse motivo, esse tipo de abordagem não é recomendada para migração.
O mais seguro é utilizar um subdomínio para testes no novo servidor e, após validar que está tudo correto, realizar a troca definitiva do domínio principal.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Falta de versão na plataforma para snapshot/realizar clone', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('informar sobre o clone', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntar se pode', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('“duplicar” o ambiente atual, para o restore do novo ambiente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nesse clone o ambiente atual ficara indisponivel por alguns momentos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente questiona sobre OOM killer', 'Guias', 'docx, importado', 'Importado via script', 'Em variaveis de ambiente é o caminho onde essa auto configuração se estabelece
Para saber mais sobre tais avisos, o senhor pode clicar nos links das documentações que vieram no proprio email.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('“OOM Killer” e “configuração de memória de banco de dados”', 'Guias', 'docx, importado', 'Importado via script', 'Caso seja viavel, recomendo o aumento de cloudlets dinamicos para que tenha um maior limite e evitar esses erros de OOM');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa sobre mudança de ip publico na API', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ela pode estar solicitando o ip publico do servidor', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar como é feito essa requisição do ip publico', 'Guias', 'docx, importado', 'Importado via script', 'Nesse caso, a requisição que sai da instancia da API não utiliza o IP do LoadBalancer.
O loadBalancer funciona como um proxy reverso, recebendo as requisições Web e redirecionando-as para a instancia onde a API fica hospedada, que no caso seriam as duas Instancias 159544 e 203244.
Essas duas instancias da API, quando realizam uma requisição, por não possuírem IP público, saem diretamente pelo IP do servidor, que está sujeito a mudanças.
Para que o IP da requisição seja sempre o mesmo é necessário que sejam atribuídos endereços IP para os dois nós da API.
Se o senhor deseja que todas as requisições saiam pelo Nginx, seria necessário que o senhor fizesse uma modificação nas configurações do LoadBalancer para que ele passasse a atuar tambem como um foward proxy.
Recomendo ao senhor seguir a doc oficial do Nginx caso queira seguir por esse caminho da configuração:
https://docs.nginx.com/nginx/admin-guide/web-server/http-connect-proxy/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Trafego pago', 'Guias', 'docx, importado', 'Importado via script', 'Trafego de rede das instâncias.
Out ext.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Saída externa de dados', 'Guias', 'docx, importado', 'Importado via script', 'Tráfego saindo da VM para a internet.
In ext.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Entrada externa de dados', 'Guias', 'docx, importado', 'Importado via script', 'Tráfego vindo da internet para a VM.
In int.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Entrada interna de dados', 'Guias', 'docx, importado', 'Importado via script', 'Tráfego recebido de dentro da infraestrutura privada da plataforma.
Out int.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Saída interna de dados', 'Guias', 'docx, importado', 'Importado via script', 'Tráfego enviado da VM para outros serviços internos da infraestrutura.
O trafego cobrado é sobre o custo de tráfego de saída para a internet, o NGINX só recebe os dados, não é usado para saída, somente entrada.
Se a aplicação realiza requisição para a internet é consumido a rede externa.
(verificar) VM está fazendo um consumo tanto de entrada quanto de saida.
Tudo o que for consumido e o que a instância consumir de fora da conta, é cobrado o trafégo.
Mas tudo o que for consumido via rede interna (IP LAN), não tem custo.
O trafego é cobrado mesmo que o acesso seja feito via SLB.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente com dúvida sobre o trafego pago, aumento de consumo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Identificar no gráfico o dia que houve aumento do consumo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('In ext.usage é receber trafégo externo', 'Guias', 'docx, importado', 'Importado via script', 'Calcule o tanto que está consumindo no gráfico x 24h = o tanto de dia no faturamento');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Por exemplo = (1.5GB * 24 horas = 36GB por dia)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode ser informado desta forma:', 'Guias', 'docx, importado', 'Importado via script', 'Foi identificado que a partir do dia tal, a sua VPS vem recebendo cerca de 1.5GB por hora de tráfego externo. Como você pode verificar no dia tal, a máquina consumiu um total de 36.61GB de tráfego (1.5GB * 24 horas = 36GB por dia), sendo o resultado do consumo constante do tráfego.
Você precisa verificar dentro da sua VPS Windows de onde esses acessos estariam vindo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Demonstrar prints das estatiscas e faturamento', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está com um alto valor de trafego pago', 'Guias', 'docx, importado', 'Importado via script', 'Verificar seus processos se não existe alguma cron criada para acessos externos');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netstat -tunap', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se tiver muitas tentativas', 'Guias', 'docx, importado', 'Importado via script', 'De acesso o custo elevado é devido as tentativas de conexões que sua instancia está realizando para um IP, foi possivél identificar uma cron em execução realizando requisições para este IP.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar a versão do next-server do cliente', 'Guias', 'docx, importado', 'Importado via script', 'Verifiquei que o senhor possui também uma versão do next-server vulnerável a RCEs. Recomendo que o senhor realize uma verificação na instancia');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso o cliente tenha NGINX', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique os logs de RDP para o NGINX', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ver as conexões', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Os logs das portas geralmente ficam configuradas em /conf.d/stream', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sendo possível achar qual arquivo está o logs', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tratativas de evitar essa situação:', 'Guias', 'docx, importado', 'Importado via script', 'Perguntar se o acesso RDP seria algo público ou poderia ser restrito a um grupo de usuário? Pois você consegue liberar o acesso apenas por faixa de endereço IP específica.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Alarme e limite que possa ser configurado:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Você pode definir alerta pro NGINX em configurações', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Por exemplo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nodo: NGINX', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sempre que: Network', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('é: > 10 Mbps', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Há pelo menos: 10 minutos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Frequência de notificação: 1 Horas', 'Guias', 'docx, importado', 'Importado via script', 'Neste exemplo seria, enviado um e-mail para sua conta caso houve um consumo maior que 10 Mbps durante 10 minutos, sendo enviado 1 e-mail por hora.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Bloqueio automático de IP:', 'Guias', 'docx, importado', 'Importado via script', 'Tem a opção de utilizar o BitNinja service, ele é um add-on de segurança que bloqueia DDoS, IPs maliciosos, brute force. No entanto, ele possui um custo de R$49.9 por instância.
Veja em nossa documentação sobre esse add-on: https://docs.saveincloud.com/cloudlets/addons/seguranca/bitninja');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Bitninja', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar bloqueio de ip', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/usr/sbin/bitninjacli --greylist --check ipbloqueado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deve monitorar o trafego', 'Guias', 'docx, importado', 'Importado via script', 'O ideal seria que monitorasse o tráfego no momento em que houvesse os picos, verificando melhor se por acaso a cloudflare deixou algum tráfego passar.
um comando que pode ser útil é ss -atn, você consegue verificar as conexões recebidas e também as estabelecidas na porta 443, bem como o endereço IP.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tem como configurar um alerta para esses casos?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sim, Configurações de ambiente > Alertas de load', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cloudflare', 'Guias', 'docx, importado', 'Importado via script', 'Redirecionamento errado de um site para outro, estão em ambientes separados
Cliente tentou o acesso via guia anônima ou algum navegador diferente?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Do lado do servidor', 'Guias', 'docx, importado', 'Importado via script', '1° verificar as configuracoes de proxy reverso (NGINX, Load balancers…)
Do lado da cloudfalre ele tem que verificar se tem alguma configuracao de failover, redirecionamento, etc… mas não é com a gente.
E no outro caso, verificar no codigo dele, se está acontecendo algum redirecionamento por algum motivo.
Do nosso lado a unica coisa q pode fazer isso é proxy reverso mudando.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mas se é ocasional, não faz sentido ser o proxy', 'Guias', 'docx, importado', 'Importado via script', 'Porque se não aconteceria sempre.
Entao deve ter alguma regra na cloudflare ou no codigo dele que faz isso.
No ambiente que ta realizando o redirect em questão, verifique se há a existência de um NGINX na topologia e se o mesmo possui alguma regra de redirect para o outro domínio no arquivo de configuração responsável por receber a requisição dele.
Além disso, verifique também na aplicação se há algum redirecionamento que poderia estar levando a este comportamento, e também na própria cloudflare se há alguma regra de redirect definida para o domínio em questão.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Você verificou nos logs do NGINX?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificou se com o proxy desligado ocorre o mesmo problema?', 'Guias', 'docx, importado', 'Importado via script', '(nesse caso, a cloudflare funcionaria apenas como um name server, não aplicando nenhuma regra à nivel de HTTP.)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se não há nada no NGINX', 'Guias', 'docx, importado', 'Importado via script', 'Verifique na cloudflare, na seção de Rules, por exemplo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('A tela seria Rules templates', 'Guias', 'docx, importado', 'Importado via script', 'Seria necessário verificar no momento que ocorre os redirecionamentos, pois na aba de DevTools podemos verificar se ocorre um 301/302, por exemplo, para o domínio.
no entanto, caso fosse o NGINX o padrão se repetiria várias vezes durante as requisições.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está com problema ao ativar proxy na cloudflare', 'Guias', 'docx, importado', 'Importado via script', 'Ele deseja apontar para o servidor, criou um apontamento do tipo A para o ip publico do load balancer do servidor e também realizou outro teste com o apontamento do tipo CNAME para o domínio do servidor
Seu TTL estava configurado para Completo, mas foi alterado para flexível para teste, ambos estão dando erro ao ativar o proxy na cloudflare
Verifique se os apontamentos criados estão digitados corretamente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente devendo/financeiro', 'Guias', 'docx, importado', 'Importado via script', 'Identificamos que sua conta possui saldo negativo. Devido a essa condição, o sistema executa a pausa automática dos ambientes até que haja um novo deposito.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('VirtualHost- Apache PHP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente questiona por que lets'' encripty não está funcionando', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar como está configurado seu arquivo ssl.conf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se está no caminho correto o DocumentRoot', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('MaxRequestWorkers', 'Guias', 'docx, importado', 'Importado via script', 'server reached MaxRequestWorkers setting, consider raising the MaxRequestWorkers setting
Esse aviso indica que o Apache atingiu o limite configurado para o parâmetro MaxRequestWorkers, ou seja, todas as threads/processos disponíveis para atender requisições estavam ocupados naquele momento.
Recomendamos verificar a configuração do parâmetro MaxRequestWorkers no Apache e avaliar um possível ajuste, desde que os recursos da instância (CPU e memória) suportem esse aumento. Além disso, também é importante verificar se existe algum pico de requisições ou processos da aplicação consumindo os workers disponíveis.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente com erro no certificado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso ele não utiliza o lets encrypt', 'Guias', 'docx, importado', 'Importado via script', 'O senhor deseja usar um certificado especifico ou poderia ser por exemplo o do lets encrypt?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente sem acesso após instalar algum pacote novo', 'Guias', 'docx, importado', 'Importado via script', 'causa: instância possui um módulo libgcc_s.so.1 que é incompatível com a instância, fazendo com que a aplicação funcione porém alguns recursos não. O módulo pode ser atualizado devido a instalação de algum pacote.resolução: alterar o symlink do módulo para o que possui compatibilidade, isto é, sem retornar a versão 2.35.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ll /lib64/libgcc_s*', 'Guias', 'docx, importado', 'Importado via script', 'Cliente instala em um apache SOAP extension deu um erro e as libs foram alteradas
Nesse caso, conseguimos reverter o acesso ao WebSSH entretanto qualquer dependencia instalada via root que ocasione na perca do acesso a instancia é de responsabilidade do cliente, sendo necessario em alguns casos realizar um snapshot.
A instalação do php-soap e php-gd atualizaram a versão do módulo libgcc (que passou a utilizar o GLIC 2.35, sendo incompatível com a instância). Foi necessário voltar o uso do módulo libgcc para usar o GLIC 2.34 para que todas as funcionalidades da instâncias estivessem em execução.
Nesse caso o senhor pode acessar /etc/php.ini e remover os comentarios das extensões requeridas
Pode tentar desinstalar os pacotes php-common e php-soap que o senhor instalou e reiniciar o apache para verificar se volta a funcionar corretamente.
Necessario verificar a forma de instalar o php para que a instalacao seja feita na versão correta, pode ser necessario o uso de parametros adicionais ou instalacao via rpm, por exemplo');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após isso é necessario reiniciar o apache', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso o cliente deseje alguma extensão no apache', 'Guias', 'docx, importado', 'Importado via script', 'Verifique no /etc/php.ini se não possui a extensão requerida por ele.
Apenas para a extensão ser de acordo com a versão do apache dele, pois senão pode corromper os arquivos');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('É necessário que ele descomente essas extensões requeridas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após isso é necessario reiniciar o apache', 'Guias', 'docx, importado', 'Importado via script', 'Cliente informa que está gerando um aumento no uso de cloudlets e lentidão na aplicação PHP');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar seus limites', 'Guias', 'docx, importado', 'Importado via script', 'Exemplo: Vejo que tem 256 de limite, ou seja, ele dentro desse número deve se comportar normalmente, caso esteja com lentidão, não será recurso.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os logs localhost do NGINX ou VirtualHost', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se há alguém fazendo requisições massivas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Site fora do ar', 'Guias', 'docx, importado', 'Importado via script', 'Erro 500 pode vir acontecer devido a alguma parte do código fazer um include para um arquivo php e o mesmo não existir ou estiver com algum erro como o de sintaxe (se o arquivo existir, dá pra validar no servidor com o comando php -l /caminho/para/arquivo.php)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não aparece os logs de erro no apache', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar as permissões de arquivos logs', 'Guias', 'docx, importado', 'Importado via script', 'Adicionamos uma ACL uma regra nas listas de acesso no proprio linux, mas o chmod funciona também e adicionamos o usuário apache para verificar o arquivos de logs');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente não conseguia ver pois o grupo nos logs estava de root', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente diz que não está funcionando o site dele em https', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os logs', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Systemctl status httpd', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Netstat -pltn', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('utilizar comando /usr/sbin/httpd -t', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ira verificar se há algo de errado em seu arquivo', 'Guias', 'docx, importado', 'Importado via script', 'Cliente pergunta como colocar os parâmetros de permissão dentro do virtualhost/Apache');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No caso estes parâmetros:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('AllowOverride All', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('mod_rewrite habilitado', 'Guias', 'docx, importado', 'Importado via script', 'Coloque entre uma tag Directory com o mesmo caminho do DocumentRoot.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('por exemplo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('<VirtualHost *:80>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('# WEBSOCKETS SUPPORT', 'Guias', 'docx, importado', 'Importado via script', '# Read Jelastic documentaion for more detailed steps how to configure that.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('#<Location /ws>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('# ProxyPass ws://127.0.0.1:<PORT>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('# ProxyPassReverse ws://127.0.0.1:<PORT>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('#</Location>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('DocumentRoot /var/www/webroot/oms/public', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ServerName oms.bigedi.com.br', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ServerAlias www.oms.bigedi.com.br', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('<Directory /var/www/html>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('AllowOverride All', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Require all granted', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('</Directory>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ErrorLog logs/oms-host.jelastic.com-error_log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('CustomLog logs/oms-host.jelastic.com-access_log combined', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('</VirtualHost>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se está ok', 'Guias', 'docx, importado', 'Importado via script', 'httpd -T
<Directory /var/www/html> deve ser (exemplo) <Directory /var/www/webroot/oms/public>
Failed to load resource: the server responded with a status of 500 (Internal Server Error)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os logs', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('verifique o arquivo $WEBROOT/ROOT/****/**/', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Está apontando erro de sintaxe (erro de programação)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Limite de armazenamento do cliente é estourado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Primeiro setar no quotas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após deve setar no usernode pra instancia dele ssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vzctl set CTID --set --diskspace <tamanho>G', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta o por que disso:', 'Guias', 'docx, importado', 'Importado via script', 'Clienta comenta sobre API do IBGE(Funcinona no desenvolvimento, mas não na homologação)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Retorna algum erro na requisição?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Chegou a verificar os logs da aplicação ou do console do navegador?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa problema com chatwoot', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se está ativo com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Docker os (deve estar ativo 5 containers)', 'Guias', 'docx, importado', 'Importado via script', 'Nesse caso, os containers sideki e rails do chatwoot haviam caídos. Para ligá-los');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cd /home/chatwoot', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('docker-compose up -d', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Rsync', 'Guias', 'docx, importado', 'Importado via script', 'Erro de rsync rsync: connection unexpectedly closed (0 bytes received so far) [Receiver]
rsync error: error in rsync protocol data stream (code 12) at io.c(232) [Receiver=3.2.7]');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('rsync está instalado no servidor de destino?', 'Guias', 'docx, importado', 'Importado via script', 'sshpass -p ‘<senha>’ rsync -av --progress --log-file=(Diretório que está o backup, exemplo = /home/files_backup/files_backup.log) -e “ssh -p 15670” (instância, exemplo = root@node225872-env-jpasys-api.sp1.br.saveincloud.net.br:/home/teste/ /<diretorio>/<local> )');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('caso queira com rsync primeiro, tente assim', 'Guias', 'docx, importado', 'Importado via script', 'rsync -av --progress --log-file= exemplo: (/home/files_backup/files_backup.log) --rsh=“sshpass -p ‘<senha>’ ssh -p 15670” root@node225872-env-jpasys-api.sp1.br.saveincloud.net.br:/home/teste/ /<diretorio>/<local>');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Duvidas sobre o cron', 'Guias', 'docx, importado', 'Importado via script', 'O senhor precisa pensar em um horário especifico diariamente (por exemplo se for as 19:00 horas ficaria assim: 0 19 * * *)
Caso o senhor queira realizar em outro horário, este site pode auxiliar:
https://crontab.guru/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro de salvar arquivo stale file handle', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('verificar as permissões do arquivo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar pontos de montagem como estão', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo reboot (para ver se a aplicação sobe)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer cancelar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Gerente entra em contato', 'Guias', 'docx, importado', 'Importado via script', 'Cliente informa erro no maven: Ocorreu um erro ao tentar criar o projecto. Verifique se o seu tipo de projeto está correto');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar os logs de build:log', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Possível erro de build failure', 'Guias', 'docx, importado', 'Importado via script', 'Oriente o cliente: Você utiliza alguma lib que é paga? Vejo que está dando erro no momento de buildar.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cliente fala que normalmente faria mvn clean install -U', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja que os colaboradores usem metódos de dois fatores', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Configurações/Conta/autenticação de dois fatores', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sugestões podem ser feitas para suporte@saveincloud.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Zabbix / Uptime Kuma / PMM Server', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente questiona sobre o zabbix / uptime kuma / pmm server', 'Guias', 'docx, importado', 'Importado via script', 'O uptime kuma é mais simples, ele vai monitorar mais se a aplicação está ativa, IP respondendo, enquanto o zabbix é mais completo e pode monitorar cpu, ram, exibir os alertas de forma mais detalhada, com pmm server seria para monitorar banco de dados mysql, mariadb, percona.
Pra utilizar o agente ativo do zabbix, preciso mudar alguma configuração de firewall ou outra dentro da SaveinCloud?
Pelo que vi preciso adicionar o zabbix no grupo pra poder monitorar os logs do nginx, pra rodar comando sudo, é só instalar o addon?
nesse caso, teria que instalador o add-on do zabbix agent no NGINX para fazer a coleta dos dados
Além disso, as configurações do zabbix para adicionar o container ao grupo no Zabbix (e as demais) são realizadas pelo cliente e em caso de dúvidas, recomendamos consultar a documentação oficial do Zabbix.
O time zone deve ser instalado utilizando o add-on timezone se aplica apenas à instância, não refletindo em todos os nós dentro do mesmo ambiente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente questiona sobre invasão miner', 'Guias', 'docx, importado', 'Importado via script', 'Recomendo que verifique, por favor, a instância informada sobre o processo de mineração em execução (como pode ver no comando top, o primeiro processo).
Além disso, o seu diretório /var/www apresenta um padrão suspeito, peço que verifique também se o mesmo possui diretórios legítimos.
Possivelmente, trata-se de uma vulnerabilidade em sua aplicação onde foi explorada, Eduardo, recomendo primeiramente remover os arquivos e processos suspeitos e assim que possível verificar a sua aplicação também.
Possivelmente, trata-se de uma vulnerabilidade em sua aplicação onde foi explorada, recomendo primeiramente remover os arquivos e processos suspeitos e assim que possível verificar a sua aplicação também.
vulnerabilidade seria RCE, remote code execution, onde um atacante consegue realizar comando remotos por meio de vulnerabilidade presente na aplicação.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('se trocar o ip deve bloquear o atacante?', 'Guias', 'docx, importado', 'Importado via script', 'Não, pois o atacante ainda pode explorar por meio de outra superfície, como pelo domínio. Recomendo fazer uma análise da sua aplicação e as bibliotecas que você utiliza na mesma e verificar o que estaria vulnerável a receber a exploração e tratar este ponto.
Cliente pergunta como renovar o certificado de dominio (CentOS) / Expirado');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como você faz o gerenciamento de certificados SSL para este domínio?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Você realiza manualmente dentro da instância mesmo?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se sim', 'Guias', 'docx, importado', 'Importado via script', 'Como senhor realiza a criação e gerenciamento por conta própria, é responsabilidade do cliente realizar a renovação do certificado SSL via linha comando na VPS.
Recomendo consultar alguma documentação em que possa te auxiliar na renovação de certificados usando o centOS 6.6, lets encrypt e o servidor de aplicação em utilização dentro da VPS (por exemplo, apache ou nginx)
Verificar o detalhes do certificado/dominio/Nome alternativo do requerente do certificado');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo de erro:', 'Guias', 'docx, importado', 'Importado via script', 'o certificado foi gerado apenas para o dominio emissorweb.com.br.
nesse caso, faltou definir o www.emissorweb.com.br como SAN (Subject Alternative Name), pois ele utilizaria o CN do emissoweb.com.br e teria um certificado valido para ele.
Cliente informar sobre um aviso de confira as dependencias disponiveis para os nós neste ambiente');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Diga para apertar sim', 'Guias', 'docx, importado', 'Importado via script', 'informe que é apenas um alerta da plataforma caso você possua alguma dependência em seu ambiente');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Configuração montagem de volumes', 'Guias', 'docx, importado', 'Importado via script', 'Precisa ser em container de dados, com o NFS server definido para o storage correto e também com o caminho correto para o storage.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('A pasta do backup é /var/lib/jelastic/backup', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo para o cliente:', 'Guias', 'docx, importado', 'Importado via script', 'Volumes - Container de dados - NFS server: extra sotrage que o cliente quer
Volumes: Local path: /var/lib/jelastic/backup  /  Remote Path:/diretorio/do/NFS - Save - Add
Certifique-se de estar definindo o caminho correto em “local path”, pois todos os dados serão sobrescritos pelos dados do diretório do NFS server');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ponto de montagem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Docs', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Segue documentaçao sobre ponto de montagem:', 'Guias', 'docx, importado', 'Importado via script', 'https://docs.saveincloud.com/cloudlets/ambientes/configuracoes/pontos-de-montagemTemos a documentação da propria virtuozzo tambem, caso desejar:
https://www.virtuozzo.com/application-management-docs/mount-points/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente reclama de algum erro de imagens que não sobe no site', 'Guias', 'docx, importado', 'Importado via script', 'Verificar logs do backend se da erro no diretório de imagem no ponto de montagem');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se foi migrada', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se foi', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('peça para reinciar o ambiente para subir o ponto de montagem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ou starte o serviço nfs server / unfns', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente comenta sobre erro de requisição No route to host', 'Guias', 'docx, importado', 'Importado via script', 'Pergunte como a requisição é feita, nos de mais informações a respeito.
Caso o cliente não usa ip publico e tente realizar requisição para https:
realize um teste de curl https link da instância e http compare se é possível realizar a requisição
Certo, não é possível realizar a requisição por https, pois o senhor não possui ip público seria necessário que o senhor adicionasse ip público em sua instância e um load balancer para realizar um proxy reverso de forma segura em seu ambiente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como demonstrado no print é possivel realizar a requisição por http:', 'Guias', 'docx, importado', 'Importado via script', 'Mas caso a comunicação entre a API precise ser em HTTPS, adicione um NGINX load balancer na sua topologia e instale o Let’s Encrypt. Nele, você poderá realizar o proxy reverso de forma mais segura para a instância da aplicação.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente informa que teve brute force, mas vieram de ips internos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Perguntar se havia endpoint para o acesso', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se sim,', 'Guias', 'docx, importado', 'Importado via script', 'Quando há o endpoint de acesso, a máquina ainda fica exposta a internet, no entanto, é utilizado o nosso SLB para acesso, por isso os IPs internos estarem presentes no seu log.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Teria como saber qual ip externo ocorreu?', 'Guias', 'docx, importado', 'Importado via script', 'nesse caso, não é possível, recomendo utilizar a autenticação apenas por meio de par de chaves, pois evitaria uma possibilidade de acesso por meio de força bruta.
Para visualizar quais IPs estariam tentando realizar o acesso seria necessária uma conexão direta à instância, utilizando IPv4 ou IPv6 público nesse caso.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Storage', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente com dúvida do volumo do storage', 'Guias', 'docx, importado', 'Importado via script', 'Esse volume do storage que fiz o link para o ambiente do backend, quando salvo um arquivo lá, ele já reflete para todas as instâncias?
Sim, Qualquer arquivo criado dentro do volume será mapeado para as instâncias que possuem a montagem feita.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre preços do storage standart performance', 'Guias', 'docx, importado', 'Importado via script', 'No storage standard performance, você possui um desconto maior conforme o espaço em disco alocado');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('A tabela de preço para disco frio é a seguinte:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('1GB a 250GB: R$ 0,50/gb/mês', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('251GB a 1TB: R$ 0,42/gb/mês', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('1TB a 2,99TB R$ 0,30/gb/mês', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('3TB a 10TB R$ 0,23/gb/mês', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('10TB a 30TB R$ 0,18/gb/mês', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Acima 30TB R$ 0,14/gb/mês', 'Guias', 'docx, importado', 'Importado via script', 'O custo do storage high performance segue o padrão das instâncias baseadas em linux, com a cobrança por uso (não por limite de espaço em disco) e com base na tabela de preço da imagem a seguir');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Demonstrar também como é feita a criação do storage', 'Guias', 'docx, importado', 'Importado via script', 'E a configuração do ponto de montagem pode ser feita seguindo a nossa documentação oficial: https://docs.saveincloud.com/cloudlets/ambientes/configuracoes/pontos-de-montagem');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ir em limites e preços e fornecer um print', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre s3 AWS / object storage / Minio', 'Guias', 'docx, importado', 'Importado via script', 'Atualmente na plataforma nos temos a opção do Minio Cold Storage Cluster, ele está disponível no marketplace.
Para mais informações o senhor pode verificar nossa documentação a respeito do Minio.
https://docs.saveincloud.com/cloudlets/marketplace/armazenamento/minio/visao-geral-minio
Cliente gostaria de saber uma alternativa mais barata para o armazenamento');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nesse caso nós temos duas opções:', 'Guias', 'docx, importado', 'Importado via script', 'Minio Cold Storage Cluster que utiliza o protocolo S3 e o Storage Sandard Performance que é um disco que pode attachar na instancia.
O preço por armazenamento é fixo nesse caso, se o senhor alocar mais irá ganhar desconto proporcional');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sobre eles nós temos essas documentações que podem auxilia-lo:', 'Guias', 'docx, importado', 'Importado via script', 'https://docs.saveincloud.com/cloudlets/marketplace/armazenamento/minio/visao-geral-minio
https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/storage/standard-performance');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre angular no jelastic', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('É possível subir', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O senhor pode usar:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('NGINX servindo o Angular + backend no mesmo ambiente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('NGINX (Angular) + API (Node/Java/PHP)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Frontend (Angular via NGINX) + Backend (API) + Banco de dados', 'Guias', 'docx, importado', 'Importado via script', 'Varia de acordo com sua preferência.
Cliente informa que gostaria que HAproxy ficasse no modo TCP na porta 80 e 443
Arquivo /etc/haproxy/haproxy.cfg, ele vem por padrão setado para o modo http, você pode alterar para mode tcp.
Ou criar um novo arquivo.cfg com a configuração desejada e depois aplicar com o comando haproxy -f /caminho/arquvio.cfg
Quando o worker escalar, terei que adicionar os novos nodes manualmente no arquivo?
Caso seja um arquivo criado manualmente, sim.
Mas no arquivo padrão da plataforma não será necessário, pois quando um nó na camada de aplicação é aumentado ou diminuído, altera automaticamente no arquivo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ubuntu', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja atualizar o ubuntu', 'Guias', 'docx, importado', 'Importado via script', 'Certo o ideal seria criar uma nova VPS ubuntu com nova versão desejada, pois se realizar a atualização por cima do que já possui pode ocorrer quebra do Sistema/Serviço e possíveis perda de dados.
é possível transferir o ipv4 e ipv6 publico para o novo ambiente ou nodo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se o cliente deseja ter ubuntu 24.04 ou mais', 'Guias', 'docx, importado', 'Importado via script', 'Não recomendamos a instalação de uma nova versão de ubunto 24.04, pois a plataforma não suporta esta versão desejada, pode haver uma quebra de configurações no sistema, perca de dados, ou acesso ao ambiente.
Ele pode criar uma vps de uma versão anterior e realizar a atualização para versão desejada
Para prosseguir com a atualização, peço que primeiro prepare o ambiente aplicando todas as atualizações pendentes:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo apt update', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo apt install update-manager-core', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo apt upgrade -y', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo apt full-upgrade -y', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo apt autoremove -y', 'Guias', 'docx, importado', 'Importado via script', 'Caso seja solicitado, realize a reinicialização do servidor antes de continuar.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após isso, execute o comando para upgrade de versão:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo do-release-upgrade', 'Guias', 'docx, importado', 'Importado via script', 'Durante o processo, se estiver conectado via SSH, o sistema pode abrir uma porta alternativa (1022) para evitar perda de acesso, isso é esperado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique a versão do ubuntu lsb_release -a', 'Guias', 'docx, importado', 'Importado via script', 'Verificar se é possível atualizar para a versão que o cliente deseja do ubunto
https://www.virtuozzo.com/application-management-docs/container-image-requirements/
caso não, dizemos que não oferecemos suporte para isso.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer saber como realizar bloqueio internacional no firewall', 'Guias', 'docx, importado', 'Importado via script', 'É completamente possivel realizar o bloqueio de IPs baseado em geolocalização, porém não existe maneira nativa no firewall para realizar tal ação.
O senhor precisaria configurar o firewall da instancia com IP Sets (Listas Prontas de terceiros) contendo todas as faixas de IP do país, por exemplo.
Com a lista pronta, o firewall realiza a checagem em toda conexão e caso o IP não faça parte dos IPs do Brasil, haverá o bloqueio.
Nesse caso, o senhor pode realizar o bloqueio utilizando uma das listas:
https://www.ip2location.com/free/visitor-blocker
https://www.ipdeny.com/ipblocks/
Será necessário configurar diretamente no firewall da instancia.
não prestamos serviços de consultoria, nem possuímos recomendações sobre.
Cliente com duvida sobre restrição no firewall ou infra para outros países.
Não temos nenhuma limitação de acesso, pode testar de várias localidades utilizando ferramentas https://ping.pe/
Cliente pergunta se é possível ajustar o crypto policy do container para permitir SHA1
Pode ser feita a liberação do acesso root para o cliente realizar as alterações
Cliente consegue realizar a transferência de IP por meio da API da plataforma
https://treinamento.suporte.sic.tec.br/docs/virtuozzo-paas/trocar-mover-ip-publico-de-instancia-para-outra/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Esse seria o template da requisição:', 'Guias', 'docx, importado', 'Importado via script', 'https://app.jelastic.saveincloud.net/1.0/environment/binder/rest/moveextips?envName=[NOME_AMBIENTE]&session=[TOKEN]&sourceNodeId=[ID_NODE_FONTE]&targetNodeId=[ID_NODE_DESTINO]&ips=[IP_A_SER_MIGRADOS]');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Essas são as informações que irão construir a requisição:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('[NOME_AMBIENTE] = Nome do ambiente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('[TOKEN] = Token da API', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('[ID_NODE_FONTE] = Node ID da Instancia que atualmente possui o IP', 'Guias', 'docx, importado', 'Importado via script', '[ID_NODE_DESTINO] = Node ID da Instancia que irá receber o IP na troca');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('[IP_A_SER_MIGRADOS] = IP com pontos a ser migrado. 000.000.000.000', 'Guias', 'docx, importado', 'Importado via script', 'Os colchetes são apenas para separar o exemplo, não sendo presentes na requisição real.
O Link pré construido precisa somente que o senhor substitua o token de acesso e o ID da instancia que receberá o IP.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O token pode ser obtido em configurações - tokens de acesso – gerar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Logo após marcar a caixa Acesso API – Gerar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Comandos para exim CWP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar quantos e-mails estão na fila:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('exim -bpc', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Listar fila:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('exim -bp', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ver conteúdo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('exim -Mvb', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ver cabeçalho', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('exim -Mvh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Busca por remetente ou destinatario', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('exim -bp | grep', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja verificar onde está o cartão cadastrado na plataforma', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Saldo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Financeiro', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Fazer pagamento na parte superior da tela', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Métodos de Pagamento', 'Guias', 'docx, importado', 'Importado via script', 'E lá vão estar todos os cartões cadastrados, sendo possível fazer a exclusão ou cadastrar um novo cartão.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Wordpress', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente fala que o redirecionamento do LLSMP está incorreto', 'Guias', 'docx, importado', 'Importado via script', 'Ele pode realizar o redirecionamento pelo add-on WordPress Site Address(URL)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre add-on de backup no wordpress', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('add-on de backup está indisponível no momento', 'Guias', 'docx, importado', 'Importado via script', 'Cliente possui uma aplicação de WordPress e está sendo feito um redirecionamento de forma errada.
Caso as configs estejam certas, o negócio é que o redirect está sendo pelo wordpress, ele precisa mudar no banco, provavelmente em wp_options
Identificamos que o redirecionamento está sendo gerado pela própria aplicação (WordPress). O sistema está configurado com o domínio antigo: (dominio antigo), por padrão, o WordPress força o acesso para o domínio definido internamente.
Esse comportamento não está relacionado a cache ou configuração do servidor, mas sim à configuração interna da aplicação. Para correção, é necessário atualizar os parâmetros siteurl e home no banco de dados para o novo endereço.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ProxySQL', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta pra que serve o ProxySQL', 'Guias', 'docx, importado', 'Importado via script', 'Ele é o agente que fica uma camada acima de seu banco para realizar o balanceamento que é responsável por distribuir as requisições para os bancos de dados.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Utilizado para bancos mysql/mariadb/percona clusterizados', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Conexão do ProxySQL com Banco de dados / Auto-Clustering', 'Guias', 'docx, importado', 'Importado via script', 'Se o senhro se conectar no proxysql, querys que forem escritas são enviadas para o primary enquanto as querys que forem apenas uma consulta (como um select) serão enviadas para o secondary.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja salvar variaveis de ambiente globalmente', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Isso não é possível', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre uma melhor opção em hospedagem de e-mail:', 'Guias', 'docx, importado', 'Importado via script', 'O senhor pode utilizar em nossa plataforma no marketplace o uso do poste.io, para um gerenciamento melhor: Mostrar o marketplace
O senhor pode obter mais informações a respeito seguindo essas documentações:
https://poste.io/doc
https://docs.saveincloud.com/cloudlets/marketplace/hospedagem/posteio
Cliente deseja realizar conexão com o banco de dados internamente / conexao interna
Não precisa realizar liberacao, basta utilizar o ip privado e porta do servico em execucao no sistema operacional (por exemplo, pega a porta do processo no netstat )
Cliente informa o erro com.sun.xml.ws.fault.ServerSOAPFaultException: Client received SOAP Fault from server: VZAgent responded with error Please see the server log to find more detail regarding exact cause of the failure.
Seguido de Not allowed to execute this service for current Environment status [ENV_STATUS_TYPE_DOWN]. Required statuses [ENV_STATUS_TYPE_RUNNING]
https://treinamento.suporte.sic.tec.br/docs/virtuozzo-paas/iniciando-ambiente-sem-espaco-em-disco/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('grep CTID /var/log/vzctl.log | tail -20', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Conferir se esta desligada vzctl status CTID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vzctl set <CTID> --save --offline --diskspace <new_disk_size>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Next.js', 'Guias', 'docx, importado', 'Importado via script', 'Cliente deseja hospedar um frontend de Next.js - arquivos estaticos/estáticos em geral
Hospedar aplicação frontend com arquivos estáticos - como apps nextjs, reactjs, astrojs - ele vai subir no apache ou nginx app server');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja subir o ambiente na plataforma', 'Guias', 'docx, importado', 'Importado via script', 'Atualmente o seu projeto é desenvolvido em que linguagem de programação? PHP, nodejs, python?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso ele fale algo como', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Banckend: python + Django', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Front: Javascript / jsx ( React + vitae+ Tailwind)', 'Guias', 'docx, importado', 'Importado via script', 'Vejo que você possui um apache python criado na sua conta, você pode realizar o deploy da sua app django seguindo esta documentação: https://docs.saveincloud.com/cloudlets/ambientes/tipos-instancias/servidores-aplicacao/python/django
Em caso de ajuda estamos à disposição pra ajudar! Os pacotes podem ser instalados com o comando pip normalmente.
A respeito do frontend, você irá servir os arquivos estáticos gerados a partir do npm run build, certo?
Se sim, você pode servir elas em um apache PHP mesmo, criando uma nova instância no ambiente
Você pode criar o apache com 8 cloudlets dinâmicos para que seja possível instalar o utilitário do npm na instância dele.
Após a criação do apache PHP, você precisa deste add-on instalado para executar comandos com npm');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Add-on / Node.js and NPM Installer', 'Guias', 'docx, importado', 'Importado via script', 'Cliente informa que não consegue subir sua aplicação Node.js npm frontend
Você chegou a receber uma documentação simples de como subir usando npm?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verifique no netstat', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Sua aplicação é de next.js, certo?', 'Guias', 'docx, importado', 'Importado via script', 'Se sim, é recomendável que ele suba num apache pra servir os arquivos estáticos a partir do build gerado pelo npm run build
No apache, ele pode apenas subir os arquivos estáticos e deixar no $WEBROOT
Ou faz o npm run build depois de adicionar o addon do npm lá e adiciona a pasta dist no documentroot, o apache vai servir os arquivos estáticos
Eh mais fácil e performa melhor também do que no nodejs em questão de recurso');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Uma resolução que foi feito foi:', 'Guias', 'docx, importado', 'Importado via script', 'subir o npm manual, precisa deixar isso de forma automática.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Também foi preciso liberar a porta no firewall', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('E apontar o nginx para o seu node', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente reclama sobre invasão em sua instância next.js', 'Guias', 'docx, importado', 'Importado via script', 'Necessário verificar a versão e ver se näo é uma antiga e informar a ele que se for antiga pode estar aberta para ameaças');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux --sort -pcpu', 'Guias', 'docx, importado', 'Importado via script', 'Em um primeiro momento, é possivel verificar em um ps aux a versão do next sendo executado no servidor
Versões abaixo de next.js 15.0.5v podem ser vulneráveis ao RCE listado na CVE-2025-66478
https://nextjs.org/blog/CVE-2025-66478');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar tamanho dos arquivos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('du -sh ROOT/*', 'Guias', 'docx, importado', 'Importado via script', 'Cliente informa que está com problema de conexão entre novos nós no cluster kubelet
O senhor reiniciou de os serviços do kubelet de todos os novos nodos adicionados?');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl restart kubelet', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar kubectl get nodes', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('E-mail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente não ta conseguindo enviar e-mail', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mandar para:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('support@saveincloud.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Report de erro / Responder email/ e-mail com erro:', 'Guias', 'docx, importado', 'Importado via script', 'Olá, bom dia.
Tente realizar a ação novamente e em caso de erro, entre em contato conosco via WhatsApp: +55 19 98900-6944');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está em Goiânia e deseja criar um ambiente', 'Guias', 'docx, importado', 'Importado via script', 'Pode criar em Brasília por conta de ser mais perto, menor latência.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Kubernets/k8s', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Clienter criou um k8s kubeconfig', 'Guias', 'docx, importado', 'Importado via script', 'Precisava baixar o kubeconfig para acessar atraves do kubectl, onde ele acha isso?
Os arquivos .conf relacionados ficam localizados em /etc/kubernetes e em /var/lib/kubelet/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente está com um limite atingido em seu kubernetes', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('erros:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('FailedCreatePodSandBox', 'Guias', 'docx, importado', 'Importado via script', 'Failed to create pod sandbox: rpc error: code = Unknown desc = failed to setup network for sandbox “81b097d000d1ffbc164d10ea0e4da0fedb37bb161af71f0294343a3fb372d36b”: plugin type=“weave-net” name=“weave” failed (add): error setting up interface addresses: running [/usr/sbin/iptables -t filter -I INPUT 1 -i eth0 -s 10.239.0.0/16 -d 224.0.0.0/4 -j ACCEPT --wait]: exit status 1: iptables: Memory allocation problem.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se o limite de regras está atingido:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('grep numiptent /proc/user_beancounters', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo:', 'Guias', 'docx, importado', 'Importado via script', 'numiptent   held=4956   maxheld=5000   barrier=10000   limit=10000   failcnt=76838');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mudar no quotas do proprietario do ambiente:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('netfilter.iplimit', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Kubernets com problema no mapeamento do NFS pot', 'Guias', 'docx, importado', 'Importado via script', 'Os discos dos seus storages estão em 90% de uso, poderia aumentar o espaço em disco e verificar se o comportamento melhora, por favor?
Aumente mais 150G para o NFS, por gentileza, e verifique se o comportamento irá repetir.
Pode ter relação isso, o ideal seria não ter um disco tão pressionado igual o dele está');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente com problemas de certificado no Kubernets/k8s', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Checar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('kubeadm certs check-expiration', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se o cliente realizou a renovação em um container', 'Guias', 'docx, importado', 'Importado via script', 'Peça para ele parar e ligar o ambiente, apenas para que sejam atualizados os contêineres dos componentes.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Fail2Ban', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Onde fica o arquivo de configuração do Fail2Ban', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O arquivo de configuração fica neste caminho:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/etc/fail2ban', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja reinciar o Fail2Ban', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo systemctl restart fail2ban', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo fail2ban-client status nginx-scanners', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ele tem que usar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo /usr/local/bin/fail2ban-client status nginx-scanners', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Add-on Start/Stop', 'Guias', 'docx, importado', 'Importado via script', 'Temos add-on Env Start/Stop Scheduler é possível definir um horário de desligamento e ligamento de forma automática. Esta documentação detalha sobre o processo de instalação e configuração: https://docs.saveincloud.com/cloudlets/addons/administracao/env-start-stop-scheduler
Em caso de dúvidas, estamos à disposição para te ajudar durante o processo também!
Além disso, com o ambiente desligado você economiza nos custos, pois não é cobrado os cloudlets dinâmicos e reservados, sendo cobrado apenas o uso em disco e IP público (caso tenha)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso o cliente deseje colocar um reinicio curto', 'Guias', 'docx, importado', 'Importado via script', 'Tente definir um intervalo um pouco maior, senhor, como 5/10 minutos.
Pois, caso a instância venha a estar sobrecarregada, pode demorar para realizar o desligamento e retornará erro quando tentar ligar.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Error script = cp-start-stop not found', 'Guias', 'docx, importado', 'Importado via script', 'Jev remove manualmente.
Erro Start/Stop com.sun.xml.ws.fault.ServerSOAPFaultException: Client received SOAP Fault from server: VZAgent responded with error Please see the server log to find more detail regarding exact cause of the failure.
O erro apresentado foi retornado por conta do Snapshot da plataforma.
O horário de desligamento coincidiu com o processo automático de realização do Snapshot da plataforma, e por conta disso, a mudança de status do ambiente não foi permitida.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Grafana', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problema de conexão', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vzlist -o ctid,status,ip', 'Guias', 'docx, importado', 'Importado via script', 'faça teste de ping entre as instâncias, veja se está rodando os processos ps aux, vzctl CTID status');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente coloca o número de telefone certo, e de várias formas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não é enviado o código sms', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tente sem espaços', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('+55', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('print de como ta enviando', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('se estiver certo e mesmo assim não envia, informar ao pessoal', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('WHCMS / account.minbalance / min balance', 'Guias', 'docx, importado', 'Importado via script', 'No momento, configurei sua conta para que possa se manter com os ambientes ligados mesmo com saldo negativo, por enquanto, peço por gentileza que entre em contato com nosso time financeiro para resolução no número +55 19 98900-6944 e digite o número 3, por gentileza.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ou envie este e-mail para o financeiro@saveincloud.com', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente pergunta sobre suporte a GPU', 'Guias', 'docx, importado', 'Importado via script', 'Ainda não temos uma previsão, quando houver realizaremos um comunicado.
Cliente comenta sobre um aumento diferente de valores comparado a instâncias
Observar os valores no faturamento e ver se tem storage standart, pois o custo é por alocado e não pelo consumo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problemas com PIX', 'Guias', 'docx, importado', 'Importado via script', 'Prezado, Senhor. Faço parte do time de suporte tecnico, ontem entraram em contato conosco para realizar uma recarga via PIX.
Gostaríamos de informar que a instabilidade que afetava nosso sistema de pagamentos via PIX foi totalmente resolvida.
O serviço já se encontra estabilizado e operando normalmente. Caso deseje concluir sua transação, você já pode utilizar essa modalidade de pagamento com total segurança e agilidade.
Agradecemos pela compreensão e permanecemos à disposição para qualquer dúvida.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('NFS', 'Guias', 'docx, importado', 'Importado via script', 'Cliente com instabilidade no NFS algo recorrente com esse erro FailedMount: stale NFS file handle e alguns namepaces');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ticket Virtuozzo', 'Guias', 'docx, importado', 'Importado via script', 'https://support.virtuozzo.com/hc/en-us/requests/new');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('On premise', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('technical issue', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('application management', 'Guias', 'docx, importado', 'Importado via script', 'Mostrar as informações do Container que ta com b.o, com um print se quiser');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('head -n 10 /vz/private/CTID/ve.conf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Chamado na virtuozzo a respeito de queda na plataforma', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Priority: Normal', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Request type: Technical issue', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('System or service type: On-premise', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('System: Application Management', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Steps performed by your team: Verified through logs and tests', 'Guias', 'docx, importado', 'Importado via script', 'Expected result: A full diagnosis of the issue and the restoration of normal service operations');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Support Plan Enterprise', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Falar algo do tipo:', 'Guias', 'docx, importado', 'Importado via script', 'We noticed that access to the panel, JCA, and SSH gate is down.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Print do grafana', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Could you please help us?', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('BR,', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Rhuan Santos', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Usernode', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('hnbkp está diminuindo ou qualquer usernode diminuindo', 'Guias', 'docx, importado', 'Importado via script', 'Veja o history se tem algo parecido com esse comando, se não usa ele memo');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('find /vz/jelastic-backups -type f -mtime +12 -delete', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Minio', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pode puxar os dados do minio por aqui', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat /etc/default/minio', 'Guias', 'docx, importado', 'Importado via script', 'Minio Não starta o serviçoPodendo ser algo relacionado ao TLS, certificado SSL');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('journalctl -u minio.service -n 100 --no-pager', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('systemctl cat minio', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/etc/default/minio', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Localizar o certificado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('find / -name public.crt 2>/dev/null', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('find / -name private.key 2>/dev/null', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar se a chave está correta no diretório', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('openssl pkey -in private.key -check', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar o certificado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('openssl x509 -in public.crt -text -noout', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('openssl x509 -noout -modulus -in public.crt | openssl md5', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('openssl rsa -noout -modulus -in private.key | openssl md5', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('grep "BEGIN" /home/jelastic/.minio/certs/private.key', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('grep "END" /home/jelastic/.minio/certs/private.key', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat /home/jelastic/.minio/certs/private.key | grep BEGIN', 'Guias', 'docx, importado', 'Importado via script', 'openssl x509 -in /home/jelastic/.minio/certs/host/public.crt -text -noout');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('openssl rsa -in /home/jelastic/.minio/certs/host/private.key -check', 'Guias', 'docx, importado', 'Importado via script', 'openssl x509 -noout -modulus -in /home/jelastic/.minio/certs/host/public.crt | openssl md5
openssl rsa  -noout -modulus -in /home/jelastic/.minio/certs/host/private.key | openssl md5');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat -A /home/jelastic/.minio/certs/host/private.key', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer saber sobre backup de minio', 'Guias', 'docx, importado', 'Importado via script', 'Ferramenta na plataforma não temos para esse tipo de atividade, mas por ser Minio, voce pode usar o “mc” que é próprio do Minio.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Minio na camada de aplicação', 'Guias', 'docx, importado', 'Importado via script', 'São dois modos de instalação do minio, o high performance e o standard performancehigh performance -> disco quente indicado para aplicações que exigem baixa latência e alto I/Ostandard performance -> disco frio indica para backup, armazenamento de logs. Possui custo cobrado conforme alocação e não possui snapshot para esta opção');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('OwnCloud', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro de duplicidade no ownCloud', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Identificar a pasta ativa', 'Guias', 'docx, importado', 'Importado via script', 'Primeiro, verifique qual das duas pastas o aplicativo desktop está usando no momento:
Abra as Configurações do cliente ownCloud.
Veja o caminho da pasta local que está sendo sincronizada.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Consolidar os arquivos', 'Guias', 'docx, importado', 'Importado via script', 'Provavelmente, a pasta ownCloud (2) é a que está recebendo os dados novos do servidor agora.
Feche o aplicativo ownCloud completamente.
Compare as duas pastas. Se houver arquivos na pasta antiga (ownCloud) que não estão na nova (ownCloud (2)), mova-os manualmente para a pasta nova.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Outra maneira de validar a resolução da duplicidade:', 'Guias', 'docx, importado', 'Importado via script', 'Depois de garantir que todos os arquivos importantes estão na pasta que o cliente está usando:
Remova a conta no aplicativo ownCloud (lembrando que isso não apaga os arquivos físicos).
Exclua (ou mova para um HD externo por segurança) as pastas do Owncloud
Adicione a conta novamente.
Na configuração, escolha o nome padrão ownCloud. O sistema criará uma pasta limpa e baixará tudo do servidor de forma organizada.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Para acesso ao hnbkp03-vin', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Precisar acessar o hnbkp01-vin e depois rodar backup3', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('IP privado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Mudança de ip privado', 'Guias', 'docx, importado', 'Importado via script', 'Não é possível, como a plataforma realiza o gerenciamento automático de IPs baseados na pool DHCP entre servidores, não é possível alterar manualmente o endereçamento privado e /ou modificar os endereços.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Terraform', 'Guias', 'docx, importado', 'Importado via script', 'Cliente pergunta se a plataforma tem integração com provedores infraestrutura como código como Terraform
Sim, a plataforma possui integração via API, sendo possível realizar automações e provisionamentos utilizando ferramentas de Infrastructure as Code, como o Terraform, através das chamadas da API da plataforma.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('A documentação da API pode ser consultada em:', 'Guias', 'docx, importado', 'Importado via script', 'https://docs.jelastic.com/api/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nuvion', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Comunicação com NGINX, vms do VAP', 'Guias', 'docx, importado', 'Importado via script', 'Vm022 pra cima.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Comunicação dos cloudlets com Nuvion', 'Guias', 'docx, importado', 'Importado via script', 'Vm017-sp1 pra cima.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente quer fazer uma conexão Cross Service Entre Nuvion e Cloudlets', 'Guias', 'docx, importado', 'Importado via script', 'Verificar se instância está em vm017 em diante no cloudlets.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Habilitar no quotas o cross service no cloudlets', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Primeiro gerar token no cloudlets', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('environment -> binder', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Pedir para o cliente acessar desta forma:', 'Guias', 'docx, importado', 'Importado via script', 'https://app.paas.saveincloud.net.br/1.0/environment/binder/rest/setcrossservicenetworkipcount?envName=(Nome ambiente)&session=(Chave gerada no token)&count=1&nodeId=(Node ID)');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo:', 'Guias', 'docx, importado', 'Importado via script', 'https://app.paas.saveincloud.net.br/1.0/environment/binder/rest/setcrossservicenetworkipcount?envName=meupostgressssshaha&session=token&count=1&nodeId=271534');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Não é necessário mexer na interface de rede do cloudlets', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No JCA do nuvion', 'Guias', 'docx, importado', 'Importado via script', 'Primeiro cliente deve ter criado um roteador e ip flutuante do cross service para sua VM');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar qual a quantidade liberada de criação de Roteador no quotas', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Após - Ir para o JCA Cloudlets', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ip pool - cross-service ipv4', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('acess control - add', 'Guias', 'docx, importado', 'Importado via script', 'Adicionar o IP do Roteador e o IP Flutuante, informado pelo Cliente Nuvion para o Cross Service e a Conta do Cliente
No Windows se o cliente adicionar uma nova rede, ele tem que adicionar a rota:
route add<Range IP Cross Service> mask <Mascara de rede Cross Service> <IP do Gateway do Roteador Cross Service>');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('route add (range ip)100.70.0.0 mask 255.254.0.0 192.168.0.1 -p', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('route add 192.168.60.183 mask 255.255.255.0', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso precise deletar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('route delete (range ip)192.168.50.0 mask 255.255.255.0', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('route delete 192.168.50.0 mask 255.255.255.0 192.168.50.1 -p', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No Linux:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo ip route add 100.70.0.0/15 via 192.168.0.1', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Máscara 255.254.0.0 equivale a /15', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo ip route add <REDE>/<CIDR> via <GATEWAY>', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo ip route delete 192.168.60.0/24 via 192.168.0.1', 'Guias', 'docx, importado', 'Importado via script', 'cliente precisar criar uma VM no nuvion e precisar de acesso por Senha, esse é o script:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('#cloud-config', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ssh_pwauth: true', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('users:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('- name: usuario', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('plain_text_passwd: "senha123"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('lock_passwd: false', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('shell: /bin/bash', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sudo: "ALL=(ALL) ALL"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('chpasswd:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('expire: false', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Script Windows:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('#ps1_sysnative', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('$novoUsuario  = "user.admin"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('$senhaInicial = "Senha123@"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('$securePwd = ConvertTo-SecureString $senhaInicial -AsPlainText -Force', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('New-LocalUser -Name $novoUsuario `', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('-Password $securePwd `', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('-AccountNeverExpires `', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('-PasswordNeverExpires `', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('-Description "Admin provisionado via Cloudbase-Init"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Add-LocalGroupMember -Group "Administrators" -Member $novoUsuario', 'Guias', 'docx, importado', 'Importado via script', 'if (Get-LocalGroup -Name "Remote Desktop Users" -ErrorAction SilentlyContinue) {
Add-LocalGroupMember -Group "Remote Desktop Users" -Member $novoUsuario');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '"[$(Get-Date)] Usuario $novoUsuario criado com sucesso" | Out-File C:\cloudbase-user.log -Append');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('tzutil /s "E. South America Standard Time"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Criação do usuário user.admin;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Definição da senha inicial;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Inclusão do usuário no grupo Administrators;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Inclusão no grupo Remote Desktop Users;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Registro da operação em C:\cloudbase-user.log;', 'Guias', 'docx, importado', 'Importado via script', 'Configuração do fuso horário para Horário de Brasília.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nuvion VM Windows', 'Guias', 'docx, importado', 'Importado via script', 'Certo senhor no caso, houve uma mudança após dia 01/06/2026, onde a criação de novos ambientes Windows na região de São Paulo, só poderão ser criados em nossa nova plataforma Nuvion, nossa plataforma Iaas, oferecendo melhor performance e recursos.
Entretando as localidades de Fortaleza e Brasília continuam permitindo a criação de ambientes Windows normalmente em nossa plataforma Paas(cloudlets).
No entanto se o senhor possui uma VM Windows de São Paulo em sua conta, ele continuará normalmente em sua conta, não será realizada nenhuma alteração, ele continuará o mesmo, causando nenhum impacto.
Clientes que já operam no Cloudlets e desejam criar ambientes Windows em SP deverão solicitar o acesso ao Nuvion via ticket de suporte.
Se deseja entender melhor sobre o Nuvion e migrar os ambientes Windows da região de SP ou deseja realizar a criação de novos ambientes, eu posso te encaminhar para o nosso time responsável para explicar melhor para o senhor a respeito.
Certo, nesse caso, pode me informar um número de contato para que a nossa equipe entre em contato, por gentileza?
Obrigado. Nosso time entrará em contato para orientá-lo da melhor forma possível.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Novo Windows Nuvion', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Olá, [Nome do Cliente]!', 'Guias', 'docx, importado', 'Importado via script', 'Hoje a SaveinCloud conta com duas plataformas de serviços: Cloudlets e Nuvion.
As VMs com Windows são provisionadas exclusivamente na plataforma Nuvion.
Isso porque o Nuvion trabalha com o conceito de reserva de recursos computacionais conforme o Tier/família de instância escolhido, e permite o gerenciamento dos sistemas operacionais em nível de Kernel.
O Cloudlets, por outro lado, foi desenhado para entregar ambientes completos com serviços pré-configurados (aplicações, bancos de dados e armazenamento já integrados), com foco em simplicidade operacional e automação — sem exigir provisionamento e configuração inicial do sistema operacional. Por isso, esse modelo não contempla mais a criação de VMs Windows.
No Nuvion, você pode escolher entre diferentes famílias de instância de acordo com a necessidade da carga de trabalho:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Standard – ambientes de baixa carga;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Premium Intel – cargas críticas (e-commerce, sistemas bancários);', 'Guias', 'docx, importado', 'Importado via script', 'High Clock – clock mínimo de 3.6GHz, indicado para licenciamento por vCPU;
Além disso, o Nuvion oferece backups automáticos, snapshots, gestão de rede/firewall/VPN, armazenamento SSD/NVMe, Load Balancers integrados e suporte a imagens personalizadas (ISO, QCOW2, VHDX), com gestão via painel, API, CLI ou Terraform (IaC).
Vou encaminhar sua solicitação para o nosso time comercial, que é responsável pela criação de contas na plataforma Nuvion, e seguirá com o passos para acompanhamento da primeira utilização.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problema de conexão com banco de dados pelo Windows — Falha TLS/SSL', 'Guias', 'docx, importado', 'Importado via script', 'Cliente com aplicação .NET hospedada em IIS apresentava falha na conexão com endpoint externo do Banco do Brasil. A conexão era estabelecida normalmente para outros destinos HTTPS, porém falhava especificamente com o endpoint do banco.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Solicitar testes', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Test-NetConnection ENDPOINT_DO_BANCO -Port 443', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar negociação TLS com o endpoint via curl verbose:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('curl.exe -vk url', 'Guias', 'docx, importado', 'Importado via script', 'Exemplo pra verificar negociação TLS com o endpoint é através do curl em modo verbose.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('curl.exe -v https://api-pix.bb.com.br/', 'Guias', 'docx, importado', 'Importado via script', 'O -v exibe informações da tentativa de conexão e permite identificar se a falha ocorre durante a negociação SSL/TLS.
Consultar eventos do Schannel, componente do Windows responsável pelo TLS:
Get-WinEvent -FilterHashtable @{LogName=''System''; ProviderName=''Schannel''} -MaxEvents 20 | Select-Object TimeCreated,Id,Message | Format-List
O evento do Schannel retornou o erro SEC_E_CERT_UNKNOWN com a mensagem: "O certificado recebido do servidor remoto foi emitido por uma autoridade de certificação não confiável."');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Investigação realizada', 'Guias', 'docx, importado', 'Importado via script', 'Foi verificado que o certificado estava instalado e possuía chave privada. As investigações seguiram pelos seguintes pontos:
Permissão de leitura da chave privada pela identidade do Application Pool no IIS, verificada via mmc.exe → Certificados → Pessoal → Gerenciar Chaves Privadas.
Confirmação se o certificado era buscado no repositório CurrentUser ou LocalMachine, já que a identidade do IIS IWPD_31 não necessariamente enxerga certificados disponíveis no CurrentUser do usuário administrativo.
Identificado que o PFX estava sendo carregado sem definição explícita de X509KeyStorageFlags via new X509Certificate2(Certificado, SecretKey), e o Application Pool estava com Load User Profile = False, o que pode impactar o tratamento da chave privada do certificado nesse contexto.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Solução encontrada', 'Guias', 'docx, importado', 'Importado via script', 'O problema foi resolvido habilitando o Load User Profile no Application Pool do IIS. Com essa configuração ativa, a identidade do pool passou a carregar o perfil do usuário corretamente, permitindo o acesso à chave privada do certificado e estabelecendo a conexão TLS com o endpoint do Banco do Brasil com sucesso.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como habilitar:', 'Guias', 'docx, importado', 'Importado via script', 'IIS → Application Pools → selecionar o pool da aplicação → Configurações Avançadas → Process Model → Load User Profile = True');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja ter ipv6 publico na sua VM Nuvion', 'Guias', 'docx, importado', 'Importado via script', 'Realizando um teste de ip a antes de realizar as ações, o cliente poderá verificar utilizando:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ip add', 'Guias', 'docx, importado', 'Importado via script', 'Está DOWN group o enp9s0, exemplo.
No caso ele vai precisar alterar o arquivo o cloud-config para setar o dhcp6 pra interface do enp8s0 e informando o MAC address');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('/etc/netplan/50-cloud-init.yaml', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Endereço MAC pega na descrição geral da VM', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Se ainda tiver down, subir com o comando ip link set <interface> up', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo:  ip link set enp9s0 up', 'Guias', 'docx, importado', 'Importado via script', 'Após o ajuste, a config permanece mesmo em caso de reboot ou desligamento, sem precisar fazer novamente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Iso personalizada:', 'Guias', 'docx, importado', 'Importado via script', 'Quando precisarem saber sobre compatibilidade, pesquisem o nome doq quer rodar + KVM ou Openstack
Um exemplo se não está detectando o disco.
Conseguimos subir a VM baixando em formato RAW e depois renomeando de chr-7.21.4.img para chr-7.21.4.img.raw');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nossa plataforma roda em cima do Openstack e a virtualização é KVM', 'Guias', 'docx, importado', 'Importado via script', 'Geralmente essas tecnologias ai sempre tem uma imagem alternativa pra rodar nesse tipo de ambiente');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('baixa o Raw Disk (sem ser o arm64)', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('extrai o .zip', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('renomeia de img pra raw', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('sobe la no painel do CMP', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cria a VM e vai ser feliz', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Transferir um ambiente para novo proprietario / dono:', 'Guias', 'docx, importado', 'Importado via script', 'Realizar a ação na plataforma.
Destino do ambiente tem que ser uma conta paga, não pode ser trial.
Isso é feito sem downtime no ambiente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Usando SAML ou LDAP', 'Guias', 'docx, importado', 'Importado via script', 'Cliente deseja integrar as contas de login com contas de usuário Azure usando SAML ou LDAP
No caso para esse cenário seria necessário um componente intermediário (middleware) responsável por fazer a comunicação entre o Azure e a plataforma.
No entanto verificando internamente fui informado que não é possível conosco.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Idrac', 'Guias', 'docx, importado', 'Importado via script', 'http://plesk.saveincloud.com.br:8880/AdministratorAFEkhv930');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Dados de acesso ao RDP do Plesk200.150.196.243AdministradorAFEkhv930', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Plesk', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No plesk se tiver muito travado o banco', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Realizar o reinicio', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Plesk Services Monitor', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Selecionar SQL Server / bloco inteiro -> restart', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('2FA', 'Guias', 'docx, importado', 'Importado via script', 'Neste caso foi informado um e-mail para a conta proprietária da plataforma, informando que a partir do dia 29/06 se torna obrigatório o uso de 2FA por questões de segurança a sua conta, sendo necessário que o senhor ative está opção, podendo ser via aplicativo de celular google authenticator por exemplo.
https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=pt_BRO senhor pode se informar melhor a respeito seguindo em nosso blog como é feito a configuração exigida.https://saveincloud.com/pt/blog/jelastic-cloud/2fa-o-que-e-autenticacao-de-dois-fatores-e-como-utilizar/
O senhor pode utilizar os códigos de recuperação, informados após a autenticação com o aplicativo, esses códigos podem ser utilizados caso não puder receber o código de 2FA, após realizar o uso deles, eles irão desativar, tendo que utilizar um novo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Temos em nosso blog uma orientação:', 'Guias', 'docx, importado', 'Importado via script', 'https://saveincloud.com/pt/blog/jelastic-cloud/2fa-o-que-e-autenticacao-de-dois-fatores-e-como-utilizar/
O senhor pode realizar a criação de uma conta em um dos Vaults, como bitwarden ou passbolt que possuem TOTP, podendo ter o mesmo 2FA para todos.
Podendo scanear também mais de um celular quando aparecer o código qrCode.
Basta o senhor verificar o que melhor te atende.
o senhor pode realizar o envio de colaboração, assim cada departamento da sua empresa irá ter contas separadas com a autenticação individual por conta e com acesso aos mesmos ambientes que o senhor, sem custos adicionais.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cache', 'Guias', 'docx, importado', 'Importado via script', 'O cache é apenas uma memória temporária onde o navegador guarda alguns arquivos e informações de acesso para carregar os sites mais rapidamente, como imagens, scripts e alguns dados de sessão.
Quando ocorreu o erro e funcionou pela aba anônima, provavelmente havia alguma informação antiga salva no navegador causando conflito, como cache desatualizado, cookies ou sessão antiga.
Não significa que será necessário usar sempre a guia anônima. Normalmente o acesso volta ao normal depois que essa informação temporária é atualizada ou removida.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Código recuperaçao', 'Guias', 'docx, importado', 'Importado via script', 'Os códigos de recuperação são códigos de emergência para caso você perca acesso ao aplicativo autenticador ou ao método principal de autenticação.
Cada código normalmente pode ser utilizado apenas uma vez. Conforme eles são usados, vão sendo consumidos até acabar.
Caso todos os códigos de recuperação sejam utilizados, eles deixam de funcionar e será necessário gerar uma nova lista de códigos de recuperação nas configurações da conta.
O ideal é utilizar normalmente o código que aparece no aplicativo autenticador');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Relógio errado', 'Guias', 'docx, importado', 'Importado via script', 'Senhor, poderia verificar se a data, hora e fuso horário do celular e do computador estão corretos e sincronizados automaticamente? O código do MFA é baseado no horário do dispositivo e é renovado a cada 30 segundos. Se houver diferença de alguns minutos no relógio, os códigos gerados serão considerados inválidos.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Faixa de ip SiC', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Vinhedo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('200.229.79.0/24', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('191.243.199.0/24', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Fortaleza:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('177.87.121.0/24', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Brasília', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('200.229.64.0/24', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Vinhedo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cloudlets:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('2804:1308::/48', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Nuvion:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('2804:1308:19::/64', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Fortaleza:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cloudlets;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('2804:1308:1::/48', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Brasília:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('2804:1308:2::/48', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('2804:1308:b5b::/48', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro não está sendo possivel montar container', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Container is mounted down', 'Guias', 'docx, importado', 'Importado via script', 'Verificar se foi instalada alguma biblioteca, com o cliente.
biblioteca do libgcc está dando conflito, precisa montar o CT e trocar o symlink do libgcc_s.so.1.
algumas imagens estão vindo com duas libs do libgcc, se o symlink alterar, nao vai conseguir ter acesso SSH e também nao vai startar o container corretamente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Ataque DDoS', 'Guias', 'docx, importado', 'Importado via script', 'Identificar anomalia detectada, load alto, grande quantidade de processos kworker, aumento anormal do número de conexões, relatos de indisponibilidade, verificar wanguard
Informe no grupo o prefixo afetado, horário da detecção, características do tráfego observado e as evidências coletadas.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No usernode', 'Guias', 'docx, importado', 'Importado via script', 'Validar Load Average, utilização de CPU, quantidade de processos kworker, volume de conexões e estados de conexão como SYN_RECV.
Correlacione essas informações com os dados do Wanguard.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar leitura de disco', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('iostat -x 1 | head -n 15', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('htop', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ps aux | grep kworker', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pgrep -f kworker | wc -l', 'Guias', 'docx, importado', 'Importado via script', 'vzlist -o ctid,status,cpus,laverage,numproc,hostname -s -laverage | head | column -t
utilizar os comandos para verificação de acessos.
Caso o usernode não tenha conntrack, instalar.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('yum install -q -y conntrack', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No Wanguard', 'Guias', 'docx, importado', 'Importado via script', 'Verificar anomalias ativas se estiverem ativas por mais de 2min potencial ataque
Na aba flow analise os endereços de destino (Dst IP Address), Registre os IPs com maior concentração de tráfego.
Acesse a aba Routing para verificar se já existe algum desvio ativo para o prefixo afetado e se o tráfego já está sendo mitigado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Jem', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Jem user add (Não funciona em vps) chave ssh', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('jem service reload', 'Guias', 'docx, importado', 'Importado via script', 'Ele permite executar ações administrativas específicas dentro do ambiente. Ele permite que usuários sem privilégios de root realizem determinadas operações que a plataforma considera seguras, como gerenciamento de serviços.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Alta disponibilidade', 'Guias', 'docx, importado', 'Importado via script', 'Lembrando, para evitar esse tipo de instabilidade, é indispensável ajustar a estrutura do seu ambiente. Hoje, seus servidores operam em nodo único, o que significa que a sua aplicação depende exclusivamente de um único recurso rodando no ar. Na prática, quando não há redundância configurada, qualquer oscilação de tráfego, pico de acessos, consumo elevado de recursos ou manutenção na infraestrutura afeta diretamente a aplicação, fazendo o sistema cair ou apresentar instabilidade instantaneamente.
Como o seu serviço é de alta criticidade, o padrão recomendado para garantir a continuidade do negócio é a Alta Disponibilidade, devidamente configurada com 2 ou mais nodos por camada e um balanceador de carga ativo.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Com essa arquitetura implantada:', 'Guias', 'docx, importado', 'Importado via script', 'O tráfego de acesso é distribuído de forma inteligente entre os servidores, evitando sobrecargas.
É criada uma camada de resiliência e redundância automática (failover).
Se um servidor apresentar qualquer falha ou precisar de ajustes, o outro nodo assume a demanda imediatamente, em tempo real, sem que o seu sistema saia do ar e sem que o usuário final perceba qualquer interrupção.
A estabilidade e disponibilidade contínua do seu ambiente depende diretamente dessa arquitetura.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('SQL Server', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Erro no samba', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar a configuração do compartilhamento', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat /etc/samba/smb.conf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('No bloco [samba]', 'Guias', 'docx, importado', 'Importado via script', 'Se estiver com read only = yes ou sem writable = yes, o Samba rejeita escrita mesmo com usuário válido — e o Windows recebe "acesso negado".');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Verificar as permissões do diretório:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('ls -la /diretório do samba', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Esse verifica qual usuário está mapeado ao samba-user:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('pdbedit -Lv samba-user | grep "Unix username"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Teste dentro do samba:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Tente autenticar', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('smbclient //10.102.20.250/samba -U samba-user', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Caso não se recorde senha enviado ao e-mail, poderá alterar:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('smbpasswd samba-user', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Dentro do prompt faça um teste:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('smb: \> put /etc/hostname testefile.txt', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('smb: \> ls', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('smb: \> exit', 'Guias', 'docx, importado', 'Importado via script', 'Se o put funcionar, a permissão no Samba está ok e o problema está em como o Windows está autenticando. Se falhar, o problema está na configuração do Samba ou nas permissões do Linux.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Problema do SQL no Windows:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('EXEC sp_configure ‘show advanced options’, 1; RECONFIGURE;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('EXEC sp_configure ‘xp_cmdshell’, 1; RECONFIGURE;', 'Guias', 'docx, importado', 'Importado via script', 'EXEC xp_cmdshell ‘net use \IP_DO_SAMBA\nome_compartilhamento /user:usuario_samba senha_samba’;');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('EXEC sp_configure ‘xp_cmdshell’, 0; RECONFIGURE;', 'Guias', 'docx, importado', 'Importado via script', 'Após executar isso uma vez, o SQL Server passa a reconhecer o caminho de rede e o backup pode ser direcionado usando o caminho UNC completo, por exemplo \IP_DO_SAMBA\nome_compartilhamento\arquivo.bak, sem depender da letra de drive mapeada.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo meu:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('EXEC sp_configure ''show advanced options'', 1; RECONFIGURE;', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('EXEC sp_configure ''xp_cmdshell'', 1; RECONFIGURE;', 'Guias', 'docx, importado', 'Importado via script', 'EXEC xp_cmdshell ''net use \\ipprivadoDoAmbiente\samba /user:samba-user minha senha’;
BACKUP DATABASE NomedoDatabase TO DISK = ''\\ipprivadoDoAmbiente\samba\arquivo.bak'' WITH FORMAT, INIT, NAME = ''Backup Teste'';');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('EXEC sp_configure ''xp_cmdshell'', 0; RECONFIGURE;', 'Guias', 'docx, importado', 'Importado via script', 'Caso o cliente não sabia qual o nome é o share que seria o \ depois do ipPrivado ele pode verificar o share desta forma dentro da instância Linux:');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('cat /etc/samba/smb.conf', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O bloco é o nome do caminhoOu', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('smbclient -L //ipPrivado -U samba-user', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Vai ter uma linha sharename', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Storin buckets', 'Guias', 'docx, importado', 'Importado via script', 'Cliente deseja modificar as permissões da chave uma para somente escrita e outra somente leitura
Ele aplica as ACLs no bucket ao UserID (ou ID do usuário como mostrado no painel).');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Configuração de acesso restrito a buckets S3', 'Guias', 'docx, importado', 'Importado via script', 'O controle de acesso restrito ao bucket não é feito pela Access Key ou Secret Key individualmente.
As permissões são aplicadas com base no User ID (ID do usuário S3) associado à credencial.
Isso significa que, se forem geradas várias Access Keys dentro do mesmo usuário/projeto, todas elas continuarão utilizando o mesmo User ID e, portanto, terão as mesmas permissões.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Por esse motivo, para possuir acessos diferentes — por exemplo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('um acesso somente escrita (write-only);', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('outro acesso somente leitura (read-only);', 'Guias', 'docx, importado', 'Importado via script', 'é necessário que cada perfil utilize um User ID diferente.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Como gerar um User ID diferente', 'Guias', 'docx, importado', 'Importado via script', 'Para obter uma nova identidade S3, é necessário criar um novo projeto no painel.
Cada projeto possui sua própria identidade S3 e, consequentemente, um User ID distinto.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('O procedimento é:', 'Guias', 'docx, importado', 'Importado via script', 'Criar um novo projeto no painel.
Criar temporariamente um bucket nesse projeto, caso necessário para inicializar a identidade S3.
Acessar a área de Acessos.
Identificar o User ID gerado para esse projeto.
Gerar a Access Key e Secret Key correspondentes.
Utilizar esse User ID na policy do bucket que será compartilhado.
Importante: criar apenas uma nova Access Key ou Secret Key no mesmo projeto não cria uma nova identidade. As novas chaves continuarão associadas ao mesmo User ID.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Supondo que existam três projetos:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Projeto', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('User ID', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Uso', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Projeto principal', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('USER_OWNER', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Proprietário do bucket', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Projeto Writer', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('USER_WRITER', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Somente escrita', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Projeto Reader', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('USER_READER', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Somente leitura', 'Guias', 'docx, importado', 'Importado via script', 'A policy do bucket é configurada utilizando USER_WRITER e USER_READER como CanonicalUser.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Exemplo:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('{', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('"Principal": {', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('"CanonicalUser": "<WRITER_ID>"', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('}', 'Guias', 'docx, importado', 'Importado via script', 'Ou seja, a associação das permissões acontece pelo User ID, e não diretamente pela Access Key ou Secret Key.
As chaves servem apenas para autenticar aquela identidade S3.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Resultado esperado:', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Identidade', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('PUT', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('GET', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('LIST', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('DELETE', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Owner', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('OK', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('OK', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('OK', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('OK', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Writer', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('OK', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Negado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Negado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Negado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Reader', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Negado', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('OK', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('OK', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Negado', 'Guias', 'docx, importado', 'Importado via script', 'Dessa forma, para cada conjunto diferente de permissões, é necessário possuir uma identidade S3 distinta, o que atualmente é obtido através da criação de um projeto separado.');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Cliente deseja alterar o hostname da instância VPS', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('vzctl set [CTID] --hostname server1.example.com –save', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Teste de região', 'Guias', 'docx, importado', 'Importado via script', '');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Link de teste de latência entre regiões/ região:', 'Guias', 'docx, importado', 'Importado via script', 'https://lg.saveincloud.com/');
INSERT INTO registros (titulo, categoria, tags, descricao, solucao) VALUES ('Clientes acessam de outro país, Africa exemplo', 'Guias', 'docx, importado', 'Importado via script', '1° - Seria necessário a utilização da nossa plataforma Nuvion (IaaS) para realizar a validação necessária da Nested Virtualization, a fim de verificar o funcionamento.
Em nossa plataforma Cloudlets (PaaS) é certo que há possibilidade de Nested Virtualization, justamente por conta da Virtualização utilizada no funcionamento da plataforma.
Porém, no caso, a plataforma já realizaria a virtualização, talvez realizar a instalação de modo aninhado signifique utilização a mais de recursos, resultando em cobranças mais altas.
2° - Sobre as rotas otimizadas, não temos rotas ou conexões diretamente com provedores da Africa, por conta do foco dos nossos serviços ser o Brasil.
Todas as conexões e parceiros que possuímos são feitas via PTT/IX, visando o máximo de conectividade para diversas operadoras e clientes da região.
Sobre a latencia para Africa/Angola, seria necessário a realização de testes para verificar Latencia, Jitter e Perda de Pacotes.
Teria algum IP utilizado na Angola para realizarmos testes de Rotas e Latencia?');
