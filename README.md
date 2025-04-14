# Provisionamento de Servidor Web com Apache

Este repositório contém um script de provisionamento automático para configurar um servidor web Apache em sistemas Linux (como Ubuntu).

## 📌 Objetivo
Automatizar a criação de um servidor web funcional que utilize o protocolo HTTP para servir páginas da web localmente.

## ⚙️ O que o script faz:
- Atualiza o sistema operacional
- Instala o servidor Apache (`apache2`)
- Habilita e inicia o serviço Apache
- Cria um arquivo `index.html` de exemplo
- Define permissões corretas para o Apache
- Realiza um teste de disponibilidade local via `curl`
- Registra o log da execução

## ▶️ Como executar

1. Clone o repositório:
```bash
git clone https://github.com/vyk1/linux-projeto2-iac
cd setup-webserver
```

2. Torne o script executável:
```bash
chmod +x setup_webserver.sh
```

3. Execute como root:
```bash
sudo ./setup_webserver.sh
```

## 📂 Estrutura criada
- `/var/www/html/index.html`: página inicial do site
- `/var/log/webserver_setup.log`: log da execução

## 📦 Requisitos
- Sistema baseado em Debian/Ubuntu
- Acesso root (sudo)
- Conexão com a internet

## 📄 Licença
Este projeto está licenciado sob a licença MIT.
