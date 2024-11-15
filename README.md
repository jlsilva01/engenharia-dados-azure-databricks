## Projeto de criacao de plataforma Databricks Enterprise na Azure com terraform

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
az ad sp create-for-rbac --name "terraform-databricks-sp" --role Contributor --scopes /subscriptions/0e0ee6a8-f556-4e40-be7c-fe20abe510bd
```

Creating 'Contributor' role assignment under scope '/subscriptions/0e0ee6a8-f556-4e40-be7c-fe20abe510bd'
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

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
