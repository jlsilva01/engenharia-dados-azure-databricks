## Projeto de criacao de plataforma Databricks Enterprise na Azure com terraform

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Projeto exemplo de criacao de um azure databricks via terraform

### Criacao de uma Service Principal na Azure para criar o Databricks

#### 1. Efetue o login na Azure através do Azure CLI.
```bash
az login
```
#### 2. Valide sua assinatura atual.
```bash
az account list -o table
```
#### 3. (Opcional) Caso não seja a assinatura desejada, selecione-a através do comando abaixo.
```bash
az account set --subscription "Nome ou ID da Subscription" (opcional)
```
#### 4. Criar a service principal na sua assinatura atual.
```bash
az ad sp create-for-rbac --name "terraform-databricks-sp" --role Contributor --scopes /subscriptions/numero_da_sua_subscription
```
#### O resultado da execução do comando acima, será o JSON que segue abaixo.

Creating 'Contributor' role assignment under scope '/subscriptions/numero_da_sua_subscription'
The output includes credentials that you must protect. Be sure that you do not include these credentials in your code or check the credentials into your source control. For more information, see https://aka.ms/azadsp-cli
```json
{
  "appId": " -- azure_client_id -- ",       #(o ID do aplicativo)
  "displayName": "terraform-databricks-sp", 
  "password": " -- password -- ",           #(a senha do Service Principal)
  "tenant": " -- tenant id -- "             #(o ID do tenant da sua organização)
}
```

OBS:<br>
azure_client_id: "appId" (o ID do aplicativo).<br>
azure_client_secret: "password" (a senha do Service Principal).<br>
azure_tenant_id: "tenant" (o ID do tenant da sua organização).<br>

## Licença

Este projeto está sob a licença (sua licença) - veja o arquivo [LICENSE](LICENSE) para detalhes.
