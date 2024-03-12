# Git Ansible Playbook

This Ansible playbook automates the process of adding GitHub Actions to specified repositories. It assumes a YAML file (`vars/repositories.yml`) contains a list of repositories.

## Usage

1. Ensure Ansible is installed on your system.

2. Update `vars/repositories.yml` with the repositories to add GitHub Actions.

3. Run the playbook:

```bash
ansible-playbook -i localhost main.yml
```

En la carpeta vars se encuentra el archivo repositories.yml que tiene la lista de repositorios a los que se les inyectaran los archivos
```json
repositories:
  [
    "https://github.com/Cencosud-Cencommerce/clever-test-repo",
    "https://github.com/Cencosud-Cencommerce/clever-test-repo2" 
  ]
```S