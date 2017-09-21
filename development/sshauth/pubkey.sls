jenkins_ssh_pubkey:
  ssh_auth:
    - present
    - user: {{ pillar['jenkins_user']['user_name'] }}
    - enc: ssh-ed25519
    - source: salt://sshauth/sshkeys/{{ pillar['jenkins_user']['user_name'] }}.id_ed25519.pub

zabbix_ssh_pubkey:
  ssh_auth:
    - present
    - user: {{ pillar['zabbix_user']['user_name'] }}
    - enc: ssh-rsa
    - source: salt://sshauth/sshkeys/{{ pillar['zabbix_user']['user_name'] }}.id_rsa.pub

