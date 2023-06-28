# ansible-role-vdp-scanner #

[![GitHub Build Status](https://github.com/cisagov/ansible-role-vdp-scanner/workflows/build/badge.svg)](https://github.com/cisagov/ansible-role-vdp-scanner/actions)
[![CodeQL](https://github.com/cisagov/ansible-role-vdp-scanner/workflows/CodeQL/badge.svg)](https://github.com/cisagov/ansible-role-vdp-scanner/actions/workflows/codeql-analysis.yml)

This is an Ansible role to setup appropriate directories and an appropriate
[Docker Compose](https://docs.docker.com/compose/) configuration to run the
[cisagov/vdp-scanner-docker](https://github.com/cisagov/vdp-scanner-docker)
project.

## Requirements ##

None.

## Role Variables ##

| Variable | Description | Default | Required |
|----------|-------------|---------|----------|
| vdp_scanner_file_owner_group | The name of the group that should own any files or directories created by this role. | [Omitted](https://docs.ansible.com/ansible/latest/user_guide/playbooks_filters.html#making-variables-optional) | No |
| vdp_scanner_file_owner_username | The name of the user that should own any files or directories created by this role. | [Omitted](https://docs.ansible.com/ansible/latest/user_guide/playbooks_filters.html#making-variables-optional) | No |

## Dependencies ##

- [cisagov/ansible-role-docker](https://github.com/cisagov/ansible-role-docker)

## Example Playbook ##

Here's how to use it in a playbook:

```yaml
- hosts: all
  become: yes
  become_method: sudo
  tasks:
    - name: Install the VDP scanner composition
      ansible.builtin.include_role:
        name: vdp_scanner
```

## Contributing ##

We welcome contributions!  Please see [`CONTRIBUTING.md`](CONTRIBUTING.md) for
details.

## License ##

This project is in the worldwide [public domain](LICENSE).

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.

## Author Information ##

Nicholas McDonnell - <nicholas.mcdonnell@gwe.cisa.dhs.gov>
