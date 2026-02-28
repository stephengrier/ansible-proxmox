#

## Install dependencies

```bash
ansible-galaxy install -r requirements.yml
```

Or in docker:

```bash
docker run --rm -ti -v $PWD:/ansible -w /ansible cytopia/ansible ansible-galaxy install -r requirements.yml
```

## Runing the playbook in docker

```bash
docker run --rm -ti -v $PWD:/ansible -v ~/.ssh/known_hosts:/root/.ssh/known_hosts -w /ansible cytopia/ansible ./ansible.sh
```

## Encrypting `api_token_secret`

```bash
docker run --rm -ti cytopia/ansible ansible-vault encrypt_string XXXXXX --name 'api_token_secret'
```
