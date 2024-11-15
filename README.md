## Projeto de criacao de plataforma Databricks Enterprise na Azure com terraform

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

Projeto exemplo de criacao de um azure databricks via terraform

### Criacao de uma Service Principal na Azure para criar o Databricks

```bash
az login
```
```bash
az account list
```
```bash
az account set --subscription "Nome ou ID da Subscription" (opcional)
```
```bash
az ad sp create-for-rbac --name "terraform-databricks-sp" --role Contributor --scopes /subscriptions/|subsid|
```

Creating 'Contributor' role assignment under scope '/subscriptions/|subsid|'
The output includes credentials that you must protect. Be sure that you do not include these credentials in your code or check the credentials into your source control. For more information, see https://aka.ms/azadsp-cli
```json
{
  "appId": " -- azure_client_id -- ",       #(o ID do aplicativo)
  "displayName": "terraform-databricks-sp", 
  "password": " -- password -- ",           #(a senha do Service Principal)
  "tenant": " -- tenant id -- "             #(o ID do tenant da sua organização)
}
```

OBS:
azure_client_id: "appId" (o ID do aplicativo).
azure_client_secret: "password" (a senha do Service Principal).
azure_tenant_id: "tenant" (o ID do tenant da sua organização).

```bash
az role assignment create --assignee <client-id> --role Contributor --resource-group <resource-group-name> (opcional)
```

## Licença

Este projeto está sob a licença (sua licença) - veja o arquivo [LICENSE](LICENSE) para detalhes.
