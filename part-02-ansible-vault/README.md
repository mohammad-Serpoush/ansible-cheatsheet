
### Ansible vault

Ansible vault is basically uses for storing sensetive data.


```
ansible-vault create secret.yaml
```

Best practice for naming variables in vault is start with vault.
```
vault_server_username: ubuntu
vault_server_password: myhardpass
```

For encrypt, decryp, and view vault yaml file:
```
ansible-vault decryp secret.yaml
ansible-vault encrypt secret.yaml
ansible-vault view secret.yaml
```

#### Use vault variables

Sample usage of vault in playbook file exist in play.yaml.

```
ansible-playbook -i hosts.ini --ask-vault-pass play.yaml
```