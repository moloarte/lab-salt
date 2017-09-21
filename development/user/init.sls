include:
  - groups

generic_user:
  user.present:
    - name: {{ pillar['noc_user']['name'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['noc_user']['name'] }}
    - uid: {{ pillar['noc_user']['uid'] }}
    - password: {{ pillar['noc_user']['password'] }}

generic_jenkins_user:
  user.present:
    - name: {{ pillar['jenkins_user']['user_name'] }}
    - fullname: Default Jenkins User
    - shell: /bin/bash
    - home: /home/tech/{{ pillar['jenkins_user']['user_name'] }}
    - uid: {{ pillar['jenkins_user']['user_id'] }}
    - gid: {{ pillar['jenkins_group']['group_id'] }}
    - password: {{ pillar['jenkins_user']['user_passwd'] }}
    - require:
      - group: {{ pillar['jenkins_group']['group_name'] }}

zabbix_user:
  user.present:
    - name: {{ pillar['zabbix_user']['user_name'] }}
    - fullname: Zabbix Monitoring User
    - shell: /bin/bash
    - home: /home/tech/{{ pillar['zabbix_user']['user_name'] }}
    - uid: {{ pillar['zabbix_user']['user_id'] }}
    - gid: {{ pillar['zabbix_group']['group_id'] }}
    - password: {{ pillar['zabbix_user']['user_passwd'] }}
    - require:
      - group: {{ pillar['zabbix_group']['group_name'] }}
