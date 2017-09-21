zabbix-server:
  ssh_known_hosts:
    - present
    - user: {{ pillar['zabbix']['user_name'] }}
    - fingerprint: 61:d6:df:e5:1f:f3:1d:81:ee:1c:19:35:dd:c2:a1:4a
