# Terraform-Ansible-Example

Just testing out some stuff!

## Requirements
- Make sure ansible is installed
- Install requirements: `cd tf && ansible-galaxy collection install -r requirements.yml`

## How to:
- Execute the thing:`cd tf && ansible-playbook main.yml -e state=present -e env=staging -v`

Notice that:
- The playbook will fail if "env" isn't set
- prod_vars or staging_vars are loaded dynamically, based on env
- global_vars serve as defaults, can be overriden by the `<env>_vars`
- variables sent to the terraform module are completely explicit
- the `env` variable also controls the workspace, which again controls the name of the tfstate file. This allows independent state-tracking of different environments